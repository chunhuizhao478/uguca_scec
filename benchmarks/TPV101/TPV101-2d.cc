/**
 * @file   TPV101.cc
 *
 * @author David S. Kammer <dkammer@ethz.ch>
 * @author Gabriele Albertini <ga288@cornell.edu>
 * @author Chun-Yu Ke <ck659@cornell.edu>
 *
 * @date creation: Fri Feb 5 2021
 * @date last modification: Fri Feb 5 2021
 *
 * @brief  TODO
 *
 *
 * Copyright (C) 2021 ETH Zurich (David S. Kammer)
 *
 * This file is part of uguca.
 *
 * uguca is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * uguca is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with uguca.  If not, see <https://www.gnu.org/licenses/>.
 */

#include <math.h>
#include <sys/time.h>
#include <unistd.h>

#include <cassert>
#include <fstream>
#include <iomanip>
#include <iostream>

#include <random>

#include "material.hh"
#include "rate_and_state_law.hh"
#include "static_communicator_mpi.hh"
#include "unimat_shear_interface.hh"

using namespace uguca;

int main(int argc, char *argv[]) {

  int world_rank = StaticCommunicatorMPI::getInstance()->whoAmI();

  // ---------------------------------------------------------------------------
  // default parameters

  double length_x_rpt = 36e3;
  

  double domain_factor = 2.0;

  double duration = 15.0;
  double dump_int = 0.1;

  unsigned nb_nodes_x = 360*2*2*2;
  double time_step_factor = 0.35;

  unsigned s_dump = 0;
  unsigned nb_time_steps = 0;

  unsigned n_pc = 1;

  // ---------------------------------------------------------------------------
  // argument processing

  int c;
  extern char* optarg;
  while ((c = getopt(argc, argv, "hN:T:t:s:f:p:")) != -1) {
    switch (c) {
    case 'h':
      fprintf(stderr,
              "%s\n"
              "\t-h: print this message\n"
              "\t-N: number of elements power of 2 (%d)\n"
              "\t-T: duration (%f)\n"
              "\t-t: dump interval (seconds) (%f)\n"
              "\t-s: factor of domain size (%f)\n"
              "\t-f: time step factor (%f)\n"
              "\t-p: predictor-corrector iterations (%d)\n",
              argv[0], nb_nodes_x, duration, dump_int, domain_factor,
              time_step_factor, n_pc);
      return -1;
    case 'N': nb_nodes_x       = atoi(optarg); break;
    case 'T': duration         = atof(optarg); break;
    case 't': dump_int         = atof(optarg); break;
    case 's': domain_factor    = atof(optarg); break;
    case 'f': time_step_factor = atof(optarg); break;
    case 'p': n_pc             = atoi(optarg); break;

    default:
      fprintf(stderr, "Unknown option (-%c)\n", c);
      return -1;
    }
  }

  double length_x = domain_factor * length_x_rpt;

  // ---------------------------------------------------------------------------
  // problem parameters

  // material
  double Cp  = 6000.0;
  double Cs  = 3464.0;
  double rho = 2670.0;

  // rate and state
  double a_default = 0.008;
  double b_default = 0.012;
  double Dc = 0.02;
  double V0 = 1.0e-6;
  double f0 = 0.6;
  double delta_a_0 = 0.008;
  double W = 15e3;
  double w = 3e3;

  // initial conditions
  double normal_load = -120.0e6;
  double shear_load = 75.0e6; //75.0e6; //the perturbation value will be given by weibull distribution and add to this value
  double V_init = 1.0e-12;
  double theta_init = 1.606238999213454e9;

  // nucleation
  double delta_tau_0 = 25.0e6;
  double R = 3.0e3;
  double T = 1.0;

  // ---------------------------------------------------------------------------
  // mesh
  Mesh mesh(length_x, nb_nodes_x);

  // constitutive interface law
  RateAndStateLaw law(mesh, a_default, b_default, Dc, V0, f0, theta_init,
                      std::abs(normal_load),
                      RateAndStateLaw::EvolutionLaw::AgingLaw, n_pc > 0);
  NodalField* theta = law.getTheta();
  NodalField* a = law.getA();
  NodalField* b = law.getB();

  double mu = Cs * Cs * rho;
  double lambda = Cp * Cp * rho - 2.0 * mu;
  double nu = 0.5 * (lambda / (lambda + mu));
  double E = mu * (3.0 * lambda + 2.0 * mu) / (lambda + mu);
  if (world_rank == 0)  printf("E=%g\nnu=%g\n", E, nu);

  Material mat = Material(E,nu,rho);
  mat.readPrecomputedKernels();
  // Material bot_mat = Material(E,nu,rho);
  if ((std::abs((mat.getCp()-Cp))>1e-15*Cp) ||
      (std::abs((mat.getCs()-Cs))>1e-15*Cs))
    return -1;

  // ---------------------------------------------------------------------------
  // weak interface

  UnimatShearInterface interface(mesh, mat, law);

  // ---------------------------------------------------------------------------
  // initial conditions

  // init external load
  NodalField* ext_shear = interface.getShearLoad();
  NodalField* ext_normal = interface.getNormalLoad();
  ext_shear->setAllValuesTo(shear_load);
  ext_normal->setAllValuesTo(normal_load);
  interface.getLoad(1)->setAllValuesTo(0.);

  // ---------------------------------------------------------------------------
  // Initialize random number generator
  // weibull distribution for shear stress
  // std::default_random_engine generator;
  std::weibull_distribution<double> wb_distribution(2.0,4e6); //double number = distribution(generator);
  // uniform distribution for nucleation center
  std::random_device rd;  // Will be used to obtain a seed for the random number engine
  std::mt19937 gen(rd()); // Standard mersenne_twister_engine seeded with rd()
  // Define the distribution, [0, 0.1]
  std::uniform_real_distribution<> dis(-10e3, 10e3);   //double number = dis(gen);
  // generate random vector
  // shear stress
  std::vector<double> shear_load_perturb_weibull(mesh.getNbNodes());
  for (int i = 0; i < mesh.getNbNodes(); ++i) {
    shear_load_perturb_weibull[i] = wb_distribution(gen);
    std::cout<<shear_load_perturb_weibull[i] / 1e6<<std::endl;
  }
  // location of nucleation
  double loc_perturb = dis(gen);
  std::cout<<"loc_perturb: "<<loc_perturb<<std::endl;
  // --------------------------------------------------------------------------- 

  // init velocity
  HalfSpace& top = interface.getTop();
  NodalField* velo0_top = top.getVelo(0);
  velo0_top->setAllValuesTo(V_init / 2);

  const std::vector<NodalField *> coords = mesh.getCoords();

  // init a
  for (int  i = 0; i < mesh.getNbNodes(); ++i) {
    double x = std::abs((*coords[0])(i) - length_x / 2);
    double Bx = 0.0;
    if (x <= W) {
      Bx = 1.0;
    } else if (x < W + w) {
      Bx = 0.5 * (1.0 + std::tanh(w / (x - W - w) + w / (x - W)));
    }
    (*a)(i) = 0.008 + delta_a_0 * (1.0 - Bx);
  }

  // init theta
  for (int  i = 0; i < mesh.getNbNodes(); ++i) {
    (*theta)(i) = Dc / V0 * std::exp(((*a)(i)*std::log(
          2.0 * std::sinh(shear_load / (*a)(i) / std::abs(normal_load)))
          - f0 - (*a)(i) * std::log(V_init / V0)) / (*b)(i));
  }

  // time step
  double time_step = time_step_factor * interface.getStableTimeStep();
  interface.setTimeStep(time_step);
  nb_time_steps = std::ceil(duration / time_step);

  // init interface
  interface.initPredictorCorrector(n_pc);
  law.init();
  interface.init(true);

  // ---------------------------------------------------------------------------
  // Convert the first argument to an integer (label)
  int num = std::stoi(argv[1]);

  // ---------------------------------------------------------------------------
  // dumping
  if (world_rank == 0) std::cout << "dump int = " << dump_int << std::endl;

  std::ostringstream bname_out;
  bname_out << std::fixed << std::setprecision(2)
            << "TPV101_Nx" << nb_nodes_x
            << "_s" << domain_factor
            << "_tf" << time_step_factor
            << "_npc" << n_pc
            << "_num" << num;
  std::string bname = bname_out.str();

  if (world_rank == 0) std::cout << bname << std::endl;

  interface.initDump(bname, ".", Dumper::Format::Binary);

  interface.registerDumpField("cohesion_0");
  // interface.registerDumpField("cohesion_1");
  // interface.registerDumpField("cohesion_2");

  interface.registerDumpField("top_disp_0");
  // interface.registerDumpField("top_disp_1");
  // interface.registerDumpField("top_disp_2");

  interface.registerDumpField("top_velo_0");
  // interface.registerDumpField("top_velo_1");
  // interface.registerDumpField("top_velo_2");

  interface.registerDumpField("load_0");
  // interface. registerDumpField("load_1");
  // interface.registerDumpField("load_2");

  interface.registerDumpField("theta");

  // interface.registerDumpField("iterations");
  // interface.registerDumpField("rel_error");
  // interface.registerDumpField("a");
  // interface.registerDumpField("b");

  // interface.dump(0, 0);
  s_dump = dump_int / time_step + 1;

  if (world_rank == 0) std::cout << "simulation start..." << std::endl;

  //check original case
  //std::fill(shear_load_perturb_weibull.begin(), shear_load_perturb_weibull.end(), 0);
  //loc_perturb = 0.0;

  // time stepping
  for (unsigned s = 0; s <= nb_time_steps; ++s) { //change s from 0, so initial shear stress pertubation could be dumped
    if (world_rank == 0) {
      std::cout << "s=" << s << "/" << nb_time_steps << "\r";
      std::cout.flush();
    }
    // nucleation
    double t = time_step * s;
    for (int i = 0; i < mesh.getNbNodes(); ++i) {
      double x = ((*coords[0])(i) - length_x / 2); //change the abs to have positive and negative 
      double r = std::sqrt((x - loc_perturb) * (x - loc_perturb));
      double F = 0.0;
      if (r < R)
        F = std::exp(r * r / (r * r - R * R));
      double G = 1.0;
      if (t < T && t > 0)
	      G = std::exp((t - T) * (t - T) / t / (t - 2.0 * T));
      if (t == 0) //if t = 0, no nucleation stress is added
        G = 0.0;
      (*ext_shear)(i) = shear_load + shear_load_perturb_weibull[i] + delta_tau_0 * F * G; //add perturbation
    }

    // time integration
    interface.advanceTimeStep();

    // dump
    if (world_rank == 0 && s % s_dump == 0) interface.dump(s, s * time_step);
  }

  StaticCommunicatorMPI::getInstance()->finalize();

  if (world_rank == 0)
    std::cout << "weak-interface simulation completed." << std::endl;

  return 0;
}

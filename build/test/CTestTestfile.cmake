# CMake generated Testfile for 
# Source directory: /Users/andyz/Downloads/uguca/test
# Build directory: /Users/andyz/Downloads/uguca/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_parameter_reader "test_parameter_reader.sh")
set_tests_properties(test_parameter_reader PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;38;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;54;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_nodal_field "test_nodal_field")
set_tests_properties(test_nodal_field PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;55;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_fftable_nodal_field "test_fftable_nodal_field")
set_tests_properties(test_fftable_nodal_field PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;56;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_fftable_nodal_field-mpi "test_fftable_nodal_field.mpi.sh")
set_tests_properties(test_fftable_nodal_field-mpi PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;45;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;56;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_limited_history "test_limited_history")
set_tests_properties(test_limited_history PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;57;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_mesh "test_mesh")
set_tests_properties(test_mesh PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;58;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_mesh-mpi "test_mesh.mpi.sh")
set_tests_properties(test_mesh-mpi PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;45;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;58;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_static_communicator_mpi "test_static_communicator_mpi.sh")
set_tests_properties(test_static_communicator_mpi PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;38;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;60;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_precomputed_kernel "test_precomputed_kernel")
set_tests_properties(test_precomputed_kernel PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;64;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_kernel_collection "test_kernel_collection")
set_tests_properties(test_kernel_collection PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;65;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_preint_kernel "test_preint_kernel")
set_tests_properties(test_preint_kernel PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;66;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_material "test_material")
set_tests_properties(test_material PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;69;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_dumper "test_dumper")
set_tests_properties(test_dumper PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;70;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_half_space "test_half_space")
set_tests_properties(test_half_space PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;71;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_half_space-mpi "test_half_space.mpi.sh")
set_tests_properties(test_half_space-mpi PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;45;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;71;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_infinite_boundary "test_infinite_boundary")
set_tests_properties(test_infinite_boundary PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;72;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_infinite_boundary-mpi "test_infinite_boundary.mpi.sh")
set_tests_properties(test_infinite_boundary-mpi PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;45;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;72;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_interface "test_interface")
set_tests_properties(test_interface PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;75;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_unimat_shear_interface "test_unimat_shear_interface")
set_tests_properties(test_unimat_shear_interface PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;76;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_bimat_interface "test_bimat_interface")
set_tests_properties(test_bimat_interface PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;77;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_defrig_interface "test_defrig_interface")
set_tests_properties(test_defrig_interface PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;78;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_linear_shear_cohesive_law "test_linear_shear_cohesive_law")
set_tests_properties(test_linear_shear_cohesive_law PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;81;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_linear_coulomb_friction_law "test_linear_coulomb_friction_law")
set_tests_properties(test_linear_coulomb_friction_law PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;82;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_barras_law "test_barras_law")
set_tests_properties(test_barras_law PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;83;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")
add_test(test_rate_and_state_law "test_rate_and_state_law")
set_tests_properties(test_rate_and_state_law PROPERTIES  _BACKTRACE_TRIPLES "/Users/andyz/Downloads/uguca/test/CMakeLists.txt;40;add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;84;uguca_add_test;/Users/andyz/Downloads/uguca/test/CMakeLists.txt;0;")

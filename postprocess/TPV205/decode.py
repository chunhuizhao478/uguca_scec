from __future__ import print_function
from __future__ import division
from glob import glob
import sys
import struct
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.tri as tri
import matplotlib.gridspec as gridspec
from mpl_toolkits.axes_grid1 import make_axes_locatable
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
from plot_utils import *

def read_full_data(path, nx, nt):
  # Only reads binary file (float32)
  file = open(path, 'r')
  data=np.fromfile(file,dtype=np.float32)
  # print(np.shape(data))
  data=data[:nt*nx]
  data=data.reshape((nt,nx))
  file.close()
  return data

totalnum = 2
for i in range(1,2):

  print("postprocessing ... % :", ( i + 1 ) / totalnum * 100 )

  full_path = "/Users/andyz/Downloads/uguca/build/benchmarks/TPV205/TPV205_N600_s2.0_tf0.35_pc1-DataFiles"

  veldata = read_full_data(full_path+"/top_velo_0.out", 600, 1187)

  dispdata = read_full_data(full_path+"/top_disp_0.out", 600, 1187)

  shearstress = read_full_data(full_path+"/cohesion_0.out", 600, 1187)

  # print(np.shape(veldata))

  np.savetxt('./res/vel.csv',veldata, delimiter=',', fmt='%.12f') #vel to sliprate

  np.savetxt('./res/disp.csv',dispdata, delimiter=',', fmt='%.12f') #disp to slip 

  np.savetxt('./res/shearstress.csv',shearstress, delimiter=',', fmt='%.0f')
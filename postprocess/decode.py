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

totalnum = 10
for i in range(totalnum):

  print("postprocessing ... % :", ( i + 1 ) / totalnum * 100 )

  full_path = "../build/benchmarks/TPV101/TPV101_Nx2880_s2.00_tf0.35_npc1_num"+str(i)+"-DataFiles" #100m

  veldata = read_full_data(full_path+"/top_velo_0.out", 2880, 149)

  # dispdata = read_full_data(full_path+"/top_disp_0.out", 2880, 149)

  shearstress = read_full_data(full_path+"/load_0.out", 2880, 149)

  # print(np.shape(veldata))

  np.savetxt('./res/sliprate/sliprate'+str(i)+'.csv',2*veldata, delimiter=',', fmt='%.12f') #vel to sliprate

  np.savetxt('./res/shearstress/shearstress'+str(i)+'.csv',shearstress, delimiter=',', fmt='%.0f')
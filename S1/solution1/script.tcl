############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project S1
set_top computeS1
add_files S1/Compute.cpp -cflags "--std=c++11"
add_files S1/biasMem-0.h
add_files S1/biasMem-1.h
add_files S1/biasMem-2.h
add_files S1/biasMem-3.h
add_files S1/biasMem-4.h
add_files S1/biasMem-5.h
add_files S1/bnn-library.h
add_files S1/config.h
add_files S1/conv1d.h
add_files S1/grouperPE.hpp
add_files S1/weightMem-0.h
add_files S1/weightMem-1.h
add_files S1/weightMem-2.h
add_files S1/weightMem-3.h
add_files S1/weightMem-4.h
add_files S1/weightMem-5.h
add_files S1/weights.hpp
add_files -tb S1/my_tb.cpp
add_files -tb S1/output.txt
add_files -tb S1/point_cloud.txt
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
#source "./S1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

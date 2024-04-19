############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project wider_bus_fp
set_top main_func
add_files wider_bus_fp/main_func.cpp
add_files wider_bus_fp/utils.cpp
add_files wider_bus_fp/utils.h
add_files -tb wider_bus_fp/sim.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu9cg-ffvb1156-2-e}
create_clock -period 10 -name default
config_cosim -tool xsim
#source "./wider_bus_fp/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

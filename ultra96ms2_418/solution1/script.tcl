############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project ultra96ms2_418
set_top main_func
add_files ultra96ms2_418/conv.h
add_files ultra96ms2_418/conv1x1.cpp
add_files ultra96ms2_418/dw_conv3x3.cpp
add_files ultra96ms2_418/main_func.cpp
add_files ultra96ms2_418/utils.cpp
add_files ultra96ms2_418/utils.h
add_files -tb ultra96ms2_418/dw_conv_bias1x1.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_bias3x3.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_input3x3.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_output1x1.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_output3x3.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_weight1x1.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/dw_conv_weight3x3.bin -cflags "-Wno-unknown-pragmas"
add_files -tb ultra96ms2_418/sim.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./ultra96ms2_418/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog

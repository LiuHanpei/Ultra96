
set PATH=
call E:/Vivado/Vivado/2023.2/bin/xelab xil_defaultlib.apatb_main_func_top glbl -Oenable_linking_all_libraries  -prj main_func.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_16 -L floating_point_v7_0_21 --lib "ieee_proposed=./ieee_proposed" -s main_func 
call E:/Vivado/Vivado/2023.2/bin/xsim --noieeewarnings main_func -tclbatch main_func.tcl 


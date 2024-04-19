set moduleName main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ bias_buf3x3_0_load int 16 regular  }
	{ bias_buf3x3_1_load int 16 regular  }
	{ bias_buf3x3_2_load int 16 regular  }
	{ weight_buf3x3_0_0_0_load int 16 regular  }
	{ weight_buf3x3_0_0_1_load int 16 regular  }
	{ weight_buf3x3_0_0_2_load int 16 regular  }
	{ weight_buf3x3_0_1_0_load int 16 regular  }
	{ weight_buf3x3_0_1_1_load int 16 regular  }
	{ weight_buf3x3_0_1_2_load int 16 regular  }
	{ weight_buf3x3_0_2_0_load int 16 regular  }
	{ weight_buf3x3_0_2_1_load int 16 regular  }
	{ weight_buf3x3_0_2_2_load int 16 regular  }
	{ weight_buf3x3_1_0_0_load int 16 regular  }
	{ weight_buf3x3_1_0_1_load int 16 regular  }
	{ weight_buf3x3_1_0_2_load int 16 regular  }
	{ weight_buf3x3_1_1_0_load int 16 regular  }
	{ weight_buf3x3_1_1_1_load int 16 regular  }
	{ weight_buf3x3_1_1_2_load int 16 regular  }
	{ weight_buf3x3_1_2_0_load int 16 regular  }
	{ weight_buf3x3_1_2_1_load int 16 regular  }
	{ weight_buf3x3_1_2_2_load int 16 regular  }
	{ weight_buf3x3_2_0_0_load int 16 regular  }
	{ weight_buf3x3_2_0_1_load int 16 regular  }
	{ weight_buf3x3_2_0_2_load int 16 regular  }
	{ weight_buf3x3_2_1_0_load int 16 regular  }
	{ weight_buf3x3_2_1_1_load int 16 regular  }
	{ weight_buf3x3_2_1_2_load int 16 regular  }
	{ weight_buf3x3_2_2_0_load int 16 regular  }
	{ weight_buf3x3_2_2_1_load int 16 regular  }
	{ weight_buf3x3_2_2_2_load int 16 regular  }
	{ outBuffer3x3_0 int 16 regular {array 3200 { 0 3 } 0 1 } {global 1}  }
	{ inBuffer3x3_0_0 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_0_1 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_0_2 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_1_0 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_1_1 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_1_2 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_2_0 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_2_1 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ inBuffer3x3_2_2 int 16 regular {array 1176 { 1 3 } 1 1 } {global 0}  }
	{ outBuffer3x3_1 int 16 regular {array 3200 { 0 3 } 0 1 } {global 1}  }
	{ outBuffer3x3_2 int 16 regular {array 3200 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bias_buf3x3_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buf3x3_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buf3x3_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_0_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_0_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_0_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_1_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_1_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_1_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_2_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_2_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_0_2_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_0_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_0_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_0_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_1_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_1_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_1_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_2_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_2_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_1_2_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_0_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_0_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_0_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_1_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_1_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_1_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_2_0_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_2_1_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_buf3x3_2_2_2_load", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outBuffer3x3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer3x3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer3x3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_buf3x3_0_load sc_in sc_lv 16 signal 0 } 
	{ bias_buf3x3_1_load sc_in sc_lv 16 signal 1 } 
	{ bias_buf3x3_2_load sc_in sc_lv 16 signal 2 } 
	{ weight_buf3x3_0_0_0_load sc_in sc_lv 16 signal 3 } 
	{ weight_buf3x3_0_0_1_load sc_in sc_lv 16 signal 4 } 
	{ weight_buf3x3_0_0_2_load sc_in sc_lv 16 signal 5 } 
	{ weight_buf3x3_0_1_0_load sc_in sc_lv 16 signal 6 } 
	{ weight_buf3x3_0_1_1_load sc_in sc_lv 16 signal 7 } 
	{ weight_buf3x3_0_1_2_load sc_in sc_lv 16 signal 8 } 
	{ weight_buf3x3_0_2_0_load sc_in sc_lv 16 signal 9 } 
	{ weight_buf3x3_0_2_1_load sc_in sc_lv 16 signal 10 } 
	{ weight_buf3x3_0_2_2_load sc_in sc_lv 16 signal 11 } 
	{ weight_buf3x3_1_0_0_load sc_in sc_lv 16 signal 12 } 
	{ weight_buf3x3_1_0_1_load sc_in sc_lv 16 signal 13 } 
	{ weight_buf3x3_1_0_2_load sc_in sc_lv 16 signal 14 } 
	{ weight_buf3x3_1_1_0_load sc_in sc_lv 16 signal 15 } 
	{ weight_buf3x3_1_1_1_load sc_in sc_lv 16 signal 16 } 
	{ weight_buf3x3_1_1_2_load sc_in sc_lv 16 signal 17 } 
	{ weight_buf3x3_1_2_0_load sc_in sc_lv 16 signal 18 } 
	{ weight_buf3x3_1_2_1_load sc_in sc_lv 16 signal 19 } 
	{ weight_buf3x3_1_2_2_load sc_in sc_lv 16 signal 20 } 
	{ weight_buf3x3_2_0_0_load sc_in sc_lv 16 signal 21 } 
	{ weight_buf3x3_2_0_1_load sc_in sc_lv 16 signal 22 } 
	{ weight_buf3x3_2_0_2_load sc_in sc_lv 16 signal 23 } 
	{ weight_buf3x3_2_1_0_load sc_in sc_lv 16 signal 24 } 
	{ weight_buf3x3_2_1_1_load sc_in sc_lv 16 signal 25 } 
	{ weight_buf3x3_2_1_2_load sc_in sc_lv 16 signal 26 } 
	{ weight_buf3x3_2_2_0_load sc_in sc_lv 16 signal 27 } 
	{ weight_buf3x3_2_2_1_load sc_in sc_lv 16 signal 28 } 
	{ weight_buf3x3_2_2_2_load sc_in sc_lv 16 signal 29 } 
	{ outBuffer3x3_0_address0 sc_out sc_lv 12 signal 30 } 
	{ outBuffer3x3_0_ce0 sc_out sc_logic 1 signal 30 } 
	{ outBuffer3x3_0_we0 sc_out sc_logic 1 signal 30 } 
	{ outBuffer3x3_0_d0 sc_out sc_lv 16 signal 30 } 
	{ inBuffer3x3_0_0_address0 sc_out sc_lv 11 signal 31 } 
	{ inBuffer3x3_0_0_ce0 sc_out sc_logic 1 signal 31 } 
	{ inBuffer3x3_0_0_q0 sc_in sc_lv 16 signal 31 } 
	{ inBuffer3x3_0_1_address0 sc_out sc_lv 11 signal 32 } 
	{ inBuffer3x3_0_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ inBuffer3x3_0_1_q0 sc_in sc_lv 16 signal 32 } 
	{ inBuffer3x3_0_2_address0 sc_out sc_lv 11 signal 33 } 
	{ inBuffer3x3_0_2_ce0 sc_out sc_logic 1 signal 33 } 
	{ inBuffer3x3_0_2_q0 sc_in sc_lv 16 signal 33 } 
	{ inBuffer3x3_1_0_address0 sc_out sc_lv 11 signal 34 } 
	{ inBuffer3x3_1_0_ce0 sc_out sc_logic 1 signal 34 } 
	{ inBuffer3x3_1_0_q0 sc_in sc_lv 16 signal 34 } 
	{ inBuffer3x3_1_1_address0 sc_out sc_lv 11 signal 35 } 
	{ inBuffer3x3_1_1_ce0 sc_out sc_logic 1 signal 35 } 
	{ inBuffer3x3_1_1_q0 sc_in sc_lv 16 signal 35 } 
	{ inBuffer3x3_1_2_address0 sc_out sc_lv 11 signal 36 } 
	{ inBuffer3x3_1_2_ce0 sc_out sc_logic 1 signal 36 } 
	{ inBuffer3x3_1_2_q0 sc_in sc_lv 16 signal 36 } 
	{ inBuffer3x3_2_0_address0 sc_out sc_lv 11 signal 37 } 
	{ inBuffer3x3_2_0_ce0 sc_out sc_logic 1 signal 37 } 
	{ inBuffer3x3_2_0_q0 sc_in sc_lv 16 signal 37 } 
	{ inBuffer3x3_2_1_address0 sc_out sc_lv 11 signal 38 } 
	{ inBuffer3x3_2_1_ce0 sc_out sc_logic 1 signal 38 } 
	{ inBuffer3x3_2_1_q0 sc_in sc_lv 16 signal 38 } 
	{ inBuffer3x3_2_2_address0 sc_out sc_lv 11 signal 39 } 
	{ inBuffer3x3_2_2_ce0 sc_out sc_logic 1 signal 39 } 
	{ inBuffer3x3_2_2_q0 sc_in sc_lv 16 signal 39 } 
	{ outBuffer3x3_1_address0 sc_out sc_lv 12 signal 40 } 
	{ outBuffer3x3_1_ce0 sc_out sc_logic 1 signal 40 } 
	{ outBuffer3x3_1_we0 sc_out sc_logic 1 signal 40 } 
	{ outBuffer3x3_1_d0 sc_out sc_lv 16 signal 40 } 
	{ outBuffer3x3_2_address0 sc_out sc_lv 12 signal 41 } 
	{ outBuffer3x3_2_ce0 sc_out sc_logic 1 signal 41 } 
	{ outBuffer3x3_2_we0 sc_out sc_logic 1 signal 41 } 
	{ outBuffer3x3_2_d0 sc_out sc_lv 16 signal 41 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_buf3x3_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buf3x3_0_load", "role": "default" }} , 
 	{ "name": "bias_buf3x3_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buf3x3_1_load", "role": "default" }} , 
 	{ "name": "bias_buf3x3_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buf3x3_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_0_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_0_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_0_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_0_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_0_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_1_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_1_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_1_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_1_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_2_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_2_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_2_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_2_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_0_2_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_0_2_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_0_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_0_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_0_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_0_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_0_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_1_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_1_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_1_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_1_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_2_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_2_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_2_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_2_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_1_2_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_1_2_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_0_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_0_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_0_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_0_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_0_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_0_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_1_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_1_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_1_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_1_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_1_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_1_2_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_2_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_2_0_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_2_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_2_1_load", "role": "default" }} , 
 	{ "name": "weight_buf3x3_2_2_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf3x3_2_2_2_load", "role": "default" }} , 
 	{ "name": "outBuffer3x3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "we0" }} , 
 	{ "name": "outBuffer3x3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "q0" }} , 
 	{ "name": "inBuffer3x3_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "q0" }} , 
 	{ "name": "outBuffer3x3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "we0" }} , 
 	{ "name": "outBuffer3x3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "d0" }} , 
 	{ "name": "outBuffer3x3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "we0" }} , 
 	{ "name": "outBuffer3x3_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9624", "EstimateLatencyMax" : "9624",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias_buf3x3_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buf3x3_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buf3x3_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_0_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_0_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_1_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_2_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_0_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_0_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_1_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_1_2_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_0_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_0_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_1_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_2_2_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "outBuffer3x3_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inBuffer3x3_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outBuffer3x3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outBuffer3x3_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U66", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U67", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U68", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U69", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U70", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U71", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U72", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U73", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U74", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_7ns_3ns_2_11_1_U75", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_3ns_2_10_1_U76", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U77", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U78", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U79", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U80", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U81", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U82", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U83", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U84", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U85", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U86", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U87", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U88", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U89", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U90", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U91", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U92", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U93", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U94", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U95", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U96", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U97", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U98", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U99", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U100", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3_2_16_1_1_U101", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U102", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U103", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U104", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U105", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U106", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U107", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U108", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U109", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U110", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 {
		bias_buf3x3_0_load {Type I LastRead 0 FirstWrite -1}
		bias_buf3x3_1_load {Type I LastRead 0 FirstWrite -1}
		bias_buf3x3_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_0_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_0_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_0_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_1_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_1_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_1_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_2_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_2_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_2_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_0_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_0_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_0_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_1_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_1_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_1_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_2_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_2_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_1_2_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_0_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_0_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_0_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_1_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_1_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_1_2_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_2_0_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_2_1_load {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_2_2_2_load {Type I LastRead 0 FirstWrite -1}
		outBuffer3x3_0 {Type O LastRead -1 FirstWrite 24}
		inBuffer3x3_0_0 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_0_1 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_0_2 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_1_0 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_1_1 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_1_2 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_2_0 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_2_1 {Type I LastRead 13 FirstWrite -1}
		inBuffer3x3_2_2 {Type I LastRead 13 FirstWrite -1}
		outBuffer3x3_1 {Type O LastRead -1 FirstWrite 24}
		outBuffer3x3_2 {Type O LastRead -1 FirstWrite 24}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9624", "Max" : "9624"}
	, {"Name" : "Interval", "Min" : "9624", "Max" : "9624"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias_buf3x3_0_load { ap_none {  { bias_buf3x3_0_load in_data 0 16 } } }
	bias_buf3x3_1_load { ap_none {  { bias_buf3x3_1_load in_data 0 16 } } }
	bias_buf3x3_2_load { ap_none {  { bias_buf3x3_2_load in_data 0 16 } } }
	weight_buf3x3_0_0_0_load { ap_none {  { weight_buf3x3_0_0_0_load in_data 0 16 } } }
	weight_buf3x3_0_0_1_load { ap_none {  { weight_buf3x3_0_0_1_load in_data 0 16 } } }
	weight_buf3x3_0_0_2_load { ap_none {  { weight_buf3x3_0_0_2_load in_data 0 16 } } }
	weight_buf3x3_0_1_0_load { ap_none {  { weight_buf3x3_0_1_0_load in_data 0 16 } } }
	weight_buf3x3_0_1_1_load { ap_none {  { weight_buf3x3_0_1_1_load in_data 0 16 } } }
	weight_buf3x3_0_1_2_load { ap_none {  { weight_buf3x3_0_1_2_load in_data 0 16 } } }
	weight_buf3x3_0_2_0_load { ap_none {  { weight_buf3x3_0_2_0_load in_data 0 16 } } }
	weight_buf3x3_0_2_1_load { ap_none {  { weight_buf3x3_0_2_1_load in_data 0 16 } } }
	weight_buf3x3_0_2_2_load { ap_none {  { weight_buf3x3_0_2_2_load in_data 0 16 } } }
	weight_buf3x3_1_0_0_load { ap_none {  { weight_buf3x3_1_0_0_load in_data 0 16 } } }
	weight_buf3x3_1_0_1_load { ap_none {  { weight_buf3x3_1_0_1_load in_data 0 16 } } }
	weight_buf3x3_1_0_2_load { ap_none {  { weight_buf3x3_1_0_2_load in_data 0 16 } } }
	weight_buf3x3_1_1_0_load { ap_none {  { weight_buf3x3_1_1_0_load in_data 0 16 } } }
	weight_buf3x3_1_1_1_load { ap_none {  { weight_buf3x3_1_1_1_load in_data 0 16 } } }
	weight_buf3x3_1_1_2_load { ap_none {  { weight_buf3x3_1_1_2_load in_data 0 16 } } }
	weight_buf3x3_1_2_0_load { ap_none {  { weight_buf3x3_1_2_0_load in_data 0 16 } } }
	weight_buf3x3_1_2_1_load { ap_none {  { weight_buf3x3_1_2_1_load in_data 0 16 } } }
	weight_buf3x3_1_2_2_load { ap_none {  { weight_buf3x3_1_2_2_load in_data 0 16 } } }
	weight_buf3x3_2_0_0_load { ap_none {  { weight_buf3x3_2_0_0_load in_data 0 16 } } }
	weight_buf3x3_2_0_1_load { ap_none {  { weight_buf3x3_2_0_1_load in_data 0 16 } } }
	weight_buf3x3_2_0_2_load { ap_none {  { weight_buf3x3_2_0_2_load in_data 0 16 } } }
	weight_buf3x3_2_1_0_load { ap_none {  { weight_buf3x3_2_1_0_load in_data 0 16 } } }
	weight_buf3x3_2_1_1_load { ap_none {  { weight_buf3x3_2_1_1_load in_data 0 16 } } }
	weight_buf3x3_2_1_2_load { ap_none {  { weight_buf3x3_2_1_2_load in_data 0 16 } } }
	weight_buf3x3_2_2_0_load { ap_none {  { weight_buf3x3_2_2_0_load in_data 0 16 } } }
	weight_buf3x3_2_2_1_load { ap_none {  { weight_buf3x3_2_2_1_load in_data 0 16 } } }
	weight_buf3x3_2_2_2_load { ap_none {  { weight_buf3x3_2_2_2_load in_data 0 16 } } }
	outBuffer3x3_0 { ap_memory {  { outBuffer3x3_0_address0 mem_address 1 12 }  { outBuffer3x3_0_ce0 mem_ce 1 1 }  { outBuffer3x3_0_we0 mem_we 1 1 }  { outBuffer3x3_0_d0 mem_din 1 16 } } }
	inBuffer3x3_0_0 { ap_memory {  { inBuffer3x3_0_0_address0 mem_address 1 11 }  { inBuffer3x3_0_0_ce0 mem_ce 1 1 }  { inBuffer3x3_0_0_q0 in_data 0 16 } } }
	inBuffer3x3_0_1 { ap_memory {  { inBuffer3x3_0_1_address0 mem_address 1 11 }  { inBuffer3x3_0_1_ce0 mem_ce 1 1 }  { inBuffer3x3_0_1_q0 in_data 0 16 } } }
	inBuffer3x3_0_2 { ap_memory {  { inBuffer3x3_0_2_address0 mem_address 1 11 }  { inBuffer3x3_0_2_ce0 mem_ce 1 1 }  { inBuffer3x3_0_2_q0 in_data 0 16 } } }
	inBuffer3x3_1_0 { ap_memory {  { inBuffer3x3_1_0_address0 mem_address 1 11 }  { inBuffer3x3_1_0_ce0 mem_ce 1 1 }  { inBuffer3x3_1_0_q0 in_data 0 16 } } }
	inBuffer3x3_1_1 { ap_memory {  { inBuffer3x3_1_1_address0 mem_address 1 11 }  { inBuffer3x3_1_1_ce0 mem_ce 1 1 }  { inBuffer3x3_1_1_q0 in_data 0 16 } } }
	inBuffer3x3_1_2 { ap_memory {  { inBuffer3x3_1_2_address0 mem_address 1 11 }  { inBuffer3x3_1_2_ce0 mem_ce 1 1 }  { inBuffer3x3_1_2_q0 in_data 0 16 } } }
	inBuffer3x3_2_0 { ap_memory {  { inBuffer3x3_2_0_address0 mem_address 1 11 }  { inBuffer3x3_2_0_ce0 mem_ce 1 1 }  { inBuffer3x3_2_0_q0 in_data 0 16 } } }
	inBuffer3x3_2_1 { ap_memory {  { inBuffer3x3_2_1_address0 mem_address 1 11 }  { inBuffer3x3_2_1_ce0 mem_ce 1 1 }  { inBuffer3x3_2_1_q0 in_data 0 16 } } }
	inBuffer3x3_2_2 { ap_memory {  { inBuffer3x3_2_2_address0 mem_address 1 11 }  { inBuffer3x3_2_2_ce0 mem_ce 1 1 }  { inBuffer3x3_2_2_q0 in_data 0 16 } } }
	outBuffer3x3_1 { ap_memory {  { outBuffer3x3_1_address0 mem_address 1 12 }  { outBuffer3x3_1_ce0 mem_ce 1 1 }  { outBuffer3x3_1_we0 mem_we 1 1 }  { outBuffer3x3_1_d0 mem_din 1 16 } } }
	outBuffer3x3_2 { ap_memory {  { outBuffer3x3_2_address0 mem_address 1 12 }  { outBuffer3x3_2_ce0 mem_ce 1 1 }  { outBuffer3x3_2_we0 mem_we 1 1 }  { outBuffer3x3_2_d0 mem_din 1 16 } } }
}

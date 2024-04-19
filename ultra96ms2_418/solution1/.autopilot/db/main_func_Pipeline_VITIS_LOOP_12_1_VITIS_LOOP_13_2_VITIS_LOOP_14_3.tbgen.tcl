set moduleName main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3
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
set C_modelName {main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ bias_buf1x1 int 16 regular {array 48 { 1 3 } 1 1 } {global 0}  }
	{ weight_buf1x1_0 int 16 regular {array 48 { 1 3 } 1 1 } {global 0}  }
	{ weight_buf1x1_1 int 16 regular {array 48 { 1 3 } 1 1 } {global 0}  }
	{ weight_buf1x1_2 int 16 regular {array 48 { 1 3 } 1 1 } {global 0}  }
	{ outBuffer3x3_0 int 16 regular {array 3200 { 1 3 } 1 1 } {global 0}  }
	{ outBuffer3x3_1 int 16 regular {array 3200 { 1 3 } 1 1 } {global 0}  }
	{ outBuffer3x3_2 int 16 regular {array 3200 { 1 3 } 1 1 } {global 0}  }
	{ outBuffer1x1 int 16 regular {array 153600 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "bias_buf1x1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weight_buf1x1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weight_buf1x1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "weight_buf1x1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer3x3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer3x3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer3x3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "outBuffer1x1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_buf1x1_address0 sc_out sc_lv 6 signal 0 } 
	{ bias_buf1x1_ce0 sc_out sc_logic 1 signal 0 } 
	{ bias_buf1x1_q0 sc_in sc_lv 16 signal 0 } 
	{ weight_buf1x1_0_address0 sc_out sc_lv 6 signal 1 } 
	{ weight_buf1x1_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight_buf1x1_0_q0 sc_in sc_lv 16 signal 1 } 
	{ weight_buf1x1_1_address0 sc_out sc_lv 6 signal 2 } 
	{ weight_buf1x1_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_buf1x1_1_q0 sc_in sc_lv 16 signal 2 } 
	{ weight_buf1x1_2_address0 sc_out sc_lv 6 signal 3 } 
	{ weight_buf1x1_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight_buf1x1_2_q0 sc_in sc_lv 16 signal 3 } 
	{ outBuffer3x3_0_address0 sc_out sc_lv 12 signal 4 } 
	{ outBuffer3x3_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ outBuffer3x3_0_q0 sc_in sc_lv 16 signal 4 } 
	{ outBuffer3x3_1_address0 sc_out sc_lv 12 signal 5 } 
	{ outBuffer3x3_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ outBuffer3x3_1_q0 sc_in sc_lv 16 signal 5 } 
	{ outBuffer3x3_2_address0 sc_out sc_lv 12 signal 6 } 
	{ outBuffer3x3_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ outBuffer3x3_2_q0 sc_in sc_lv 16 signal 6 } 
	{ outBuffer1x1_address0 sc_out sc_lv 18 signal 7 } 
	{ outBuffer1x1_ce0 sc_out sc_logic 1 signal 7 } 
	{ outBuffer1x1_we0 sc_out sc_logic 1 signal 7 } 
	{ outBuffer1x1_d0 sc_out sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_buf1x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_buf1x1", "role": "address0" }} , 
 	{ "name": "bias_buf1x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buf1x1", "role": "ce0" }} , 
 	{ "name": "bias_buf1x1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buf1x1", "role": "q0" }} , 
 	{ "name": "weight_buf1x1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight_buf1x1_0", "role": "address0" }} , 
 	{ "name": "weight_buf1x1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf1x1_0", "role": "ce0" }} , 
 	{ "name": "weight_buf1x1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf1x1_0", "role": "q0" }} , 
 	{ "name": "weight_buf1x1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight_buf1x1_1", "role": "address0" }} , 
 	{ "name": "weight_buf1x1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf1x1_1", "role": "ce0" }} , 
 	{ "name": "weight_buf1x1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf1x1_1", "role": "q0" }} , 
 	{ "name": "weight_buf1x1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "weight_buf1x1_2", "role": "address0" }} , 
 	{ "name": "weight_buf1x1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_buf1x1_2", "role": "ce0" }} , 
 	{ "name": "weight_buf1x1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_buf1x1_2", "role": "q0" }} , 
 	{ "name": "outBuffer3x3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_0", "role": "q0" }} , 
 	{ "name": "outBuffer3x3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_1", "role": "q0" }} , 
 	{ "name": "outBuffer3x3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "address0" }} , 
 	{ "name": "outBuffer3x3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "ce0" }} , 
 	{ "name": "outBuffer3x3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer3x3_2", "role": "q0" }} , 
 	{ "name": "outBuffer1x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "outBuffer1x1", "role": "address0" }} , 
 	{ "name": "outBuffer1x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer1x1", "role": "ce0" }} , 
 	{ "name": "outBuffer1x1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outBuffer1x1", "role": "we0" }} , 
 	{ "name": "outBuffer1x1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "outBuffer1x1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "153606", "EstimateLatencyMax" : "153606",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias_buf1x1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_buf1x1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_buf1x1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_buf1x1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outBuffer3x3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outBuffer3x3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outBuffer3x3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outBuffer1x1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_29_1_1_U158", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U159", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U160", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3 {
		bias_buf1x1 {Type I LastRead 5 FirstWrite -1}
		weight_buf1x1_0 {Type I LastRead 3 FirstWrite -1}
		weight_buf1x1_1 {Type I LastRead 1 FirstWrite -1}
		weight_buf1x1_2 {Type I LastRead 2 FirstWrite -1}
		outBuffer3x3_0 {Type I LastRead 3 FirstWrite -1}
		outBuffer3x3_1 {Type I LastRead 1 FirstWrite -1}
		outBuffer3x3_2 {Type I LastRead 2 FirstWrite -1}
		outBuffer1x1 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "153606", "Max" : "153606"}
	, {"Name" : "Interval", "Min" : "153606", "Max" : "153606"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias_buf1x1 { ap_memory {  { bias_buf1x1_address0 mem_address 1 6 }  { bias_buf1x1_ce0 mem_ce 1 1 }  { bias_buf1x1_q0 in_data 0 16 } } }
	weight_buf1x1_0 { ap_memory {  { weight_buf1x1_0_address0 mem_address 1 6 }  { weight_buf1x1_0_ce0 mem_ce 1 1 }  { weight_buf1x1_0_q0 in_data 0 16 } } }
	weight_buf1x1_1 { ap_memory {  { weight_buf1x1_1_address0 mem_address 1 6 }  { weight_buf1x1_1_ce0 mem_ce 1 1 }  { weight_buf1x1_1_q0 in_data 0 16 } } }
	weight_buf1x1_2 { ap_memory {  { weight_buf1x1_2_address0 mem_address 1 6 }  { weight_buf1x1_2_ce0 mem_ce 1 1 }  { weight_buf1x1_2_q0 in_data 0 16 } } }
	outBuffer3x3_0 { ap_memory {  { outBuffer3x3_0_address0 mem_address 1 12 }  { outBuffer3x3_0_ce0 mem_ce 1 1 }  { outBuffer3x3_0_q0 in_data 0 16 } } }
	outBuffer3x3_1 { ap_memory {  { outBuffer3x3_1_address0 mem_address 1 12 }  { outBuffer3x3_1_ce0 mem_ce 1 1 }  { outBuffer3x3_1_q0 in_data 0 16 } } }
	outBuffer3x3_2 { ap_memory {  { outBuffer3x3_2_address0 mem_address 1 12 }  { outBuffer3x3_2_ce0 mem_ce 1 1 }  { outBuffer3x3_2_q0 in_data 0 16 } } }
	outBuffer1x1 { ap_memory {  { outBuffer1x1_address0 mem_address 1 18 }  { outBuffer1x1_ce0 mem_ce 1 1 }  { outBuffer1x1_we0 mem_we 1 1 }  { outBuffer1x1_d0 mem_din 1 16 } } }
}

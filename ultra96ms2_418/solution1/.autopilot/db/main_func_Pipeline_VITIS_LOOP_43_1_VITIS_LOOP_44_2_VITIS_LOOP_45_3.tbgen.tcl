set moduleName main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3
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
set C_modelName {main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ fm int 16 regular {axi_master 0}  }
	{ empty int 2 regular  }
	{ zext_ln43 int 8 regular  }
	{ input_feature_map int 64 regular  }
	{ inBuffer3x3_0_0 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_0_1 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_0_2 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_1_0 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_1_1 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_1_2 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_2_0 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_2_1 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
	{ inBuffer3x3_2_2 int 16 regular {array 1176 { 0 0 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "fm", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_feature_map","offset": { "type": "dynamic","port_name": "input_feature_map","bundle": "control"},"direction": "READONLY"},{"cName": "output_feature_map","offset": { "type": "dynamic","port_name": "output_feature_map","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln43", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "input_feature_map", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inBuffer3x3_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_0_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_1_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "inBuffer3x3_2_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 127
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_fm_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fm_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_fm_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_fm_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_fm_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_fm_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_fm_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_fm_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_fm_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fm_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_fm_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_fm_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_fm_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_fm_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_fm_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_fm_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_RFIFONUM sc_in sc_lv 10 signal 0 } 
	{ m_axi_fm_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fm_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fm_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_BUSER sc_in sc_lv 1 signal 0 } 
	{ empty sc_in sc_lv 2 signal 1 } 
	{ zext_ln43 sc_in sc_lv 8 signal 2 } 
	{ input_feature_map sc_in sc_lv 64 signal 3 } 
	{ inBuffer3x3_0_0_address0 sc_out sc_lv 11 signal 4 } 
	{ inBuffer3x3_0_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ inBuffer3x3_0_0_we0 sc_out sc_logic 1 signal 4 } 
	{ inBuffer3x3_0_0_d0 sc_out sc_lv 16 signal 4 } 
	{ inBuffer3x3_0_0_address1 sc_out sc_lv 11 signal 4 } 
	{ inBuffer3x3_0_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ inBuffer3x3_0_0_we1 sc_out sc_logic 1 signal 4 } 
	{ inBuffer3x3_0_0_d1 sc_out sc_lv 16 signal 4 } 
	{ inBuffer3x3_0_1_address0 sc_out sc_lv 11 signal 5 } 
	{ inBuffer3x3_0_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ inBuffer3x3_0_1_we0 sc_out sc_logic 1 signal 5 } 
	{ inBuffer3x3_0_1_d0 sc_out sc_lv 16 signal 5 } 
	{ inBuffer3x3_0_1_address1 sc_out sc_lv 11 signal 5 } 
	{ inBuffer3x3_0_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ inBuffer3x3_0_1_we1 sc_out sc_logic 1 signal 5 } 
	{ inBuffer3x3_0_1_d1 sc_out sc_lv 16 signal 5 } 
	{ inBuffer3x3_0_2_address0 sc_out sc_lv 11 signal 6 } 
	{ inBuffer3x3_0_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ inBuffer3x3_0_2_we0 sc_out sc_logic 1 signal 6 } 
	{ inBuffer3x3_0_2_d0 sc_out sc_lv 16 signal 6 } 
	{ inBuffer3x3_0_2_address1 sc_out sc_lv 11 signal 6 } 
	{ inBuffer3x3_0_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ inBuffer3x3_0_2_we1 sc_out sc_logic 1 signal 6 } 
	{ inBuffer3x3_0_2_d1 sc_out sc_lv 16 signal 6 } 
	{ inBuffer3x3_1_0_address0 sc_out sc_lv 11 signal 7 } 
	{ inBuffer3x3_1_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ inBuffer3x3_1_0_we0 sc_out sc_logic 1 signal 7 } 
	{ inBuffer3x3_1_0_d0 sc_out sc_lv 16 signal 7 } 
	{ inBuffer3x3_1_0_address1 sc_out sc_lv 11 signal 7 } 
	{ inBuffer3x3_1_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ inBuffer3x3_1_0_we1 sc_out sc_logic 1 signal 7 } 
	{ inBuffer3x3_1_0_d1 sc_out sc_lv 16 signal 7 } 
	{ inBuffer3x3_1_1_address0 sc_out sc_lv 11 signal 8 } 
	{ inBuffer3x3_1_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ inBuffer3x3_1_1_we0 sc_out sc_logic 1 signal 8 } 
	{ inBuffer3x3_1_1_d0 sc_out sc_lv 16 signal 8 } 
	{ inBuffer3x3_1_1_address1 sc_out sc_lv 11 signal 8 } 
	{ inBuffer3x3_1_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ inBuffer3x3_1_1_we1 sc_out sc_logic 1 signal 8 } 
	{ inBuffer3x3_1_1_d1 sc_out sc_lv 16 signal 8 } 
	{ inBuffer3x3_1_2_address0 sc_out sc_lv 11 signal 9 } 
	{ inBuffer3x3_1_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ inBuffer3x3_1_2_we0 sc_out sc_logic 1 signal 9 } 
	{ inBuffer3x3_1_2_d0 sc_out sc_lv 16 signal 9 } 
	{ inBuffer3x3_1_2_address1 sc_out sc_lv 11 signal 9 } 
	{ inBuffer3x3_1_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ inBuffer3x3_1_2_we1 sc_out sc_logic 1 signal 9 } 
	{ inBuffer3x3_1_2_d1 sc_out sc_lv 16 signal 9 } 
	{ inBuffer3x3_2_0_address0 sc_out sc_lv 11 signal 10 } 
	{ inBuffer3x3_2_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ inBuffer3x3_2_0_we0 sc_out sc_logic 1 signal 10 } 
	{ inBuffer3x3_2_0_d0 sc_out sc_lv 16 signal 10 } 
	{ inBuffer3x3_2_0_address1 sc_out sc_lv 11 signal 10 } 
	{ inBuffer3x3_2_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ inBuffer3x3_2_0_we1 sc_out sc_logic 1 signal 10 } 
	{ inBuffer3x3_2_0_d1 sc_out sc_lv 16 signal 10 } 
	{ inBuffer3x3_2_1_address0 sc_out sc_lv 11 signal 11 } 
	{ inBuffer3x3_2_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ inBuffer3x3_2_1_we0 sc_out sc_logic 1 signal 11 } 
	{ inBuffer3x3_2_1_d0 sc_out sc_lv 16 signal 11 } 
	{ inBuffer3x3_2_1_address1 sc_out sc_lv 11 signal 11 } 
	{ inBuffer3x3_2_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ inBuffer3x3_2_1_we1 sc_out sc_logic 1 signal 11 } 
	{ inBuffer3x3_2_1_d1 sc_out sc_lv 16 signal 11 } 
	{ inBuffer3x3_2_2_address0 sc_out sc_lv 11 signal 12 } 
	{ inBuffer3x3_2_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ inBuffer3x3_2_2_we0 sc_out sc_logic 1 signal 12 } 
	{ inBuffer3x3_2_2_d0 sc_out sc_lv 16 signal 12 } 
	{ inBuffer3x3_2_2_address1 sc_out sc_lv 11 signal 12 } 
	{ inBuffer3x3_2_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ inBuffer3x3_2_2_we1 sc_out sc_logic 1 signal 12 } 
	{ inBuffer3x3_2_2_d1 sc_out sc_lv 16 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_fm_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fm_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fm_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fm", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fm_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWID" }} , 
 	{ "name": "m_axi_fm_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm", "role": "AWLEN" }} , 
 	{ "name": "m_axi_fm_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_fm_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "AWBURST" }} , 
 	{ "name": "m_axi_fm_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_fm_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_fm_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm", "role": "AWPROT" }} , 
 	{ "name": "m_axi_fm_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "AWQOS" }} , 
 	{ "name": "m_axi_fm_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "AWREGION" }} , 
 	{ "name": "m_axi_fm_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWUSER" }} , 
 	{ "name": "m_axi_fm_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WVALID" }} , 
 	{ "name": "m_axi_fm_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WREADY" }} , 
 	{ "name": "m_axi_fm_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm", "role": "WDATA" }} , 
 	{ "name": "m_axi_fm_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "WSTRB" }} , 
 	{ "name": "m_axi_fm_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WLAST" }} , 
 	{ "name": "m_axi_fm_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WID" }} , 
 	{ "name": "m_axi_fm_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WUSER" }} , 
 	{ "name": "m_axi_fm_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARVALID" }} , 
 	{ "name": "m_axi_fm_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARREADY" }} , 
 	{ "name": "m_axi_fm_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fm", "role": "ARADDR" }} , 
 	{ "name": "m_axi_fm_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARID" }} , 
 	{ "name": "m_axi_fm_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm", "role": "ARLEN" }} , 
 	{ "name": "m_axi_fm_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_fm_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "ARBURST" }} , 
 	{ "name": "m_axi_fm_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_fm_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_fm_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fm", "role": "ARPROT" }} , 
 	{ "name": "m_axi_fm_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "ARQOS" }} , 
 	{ "name": "m_axi_fm_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "ARREGION" }} , 
 	{ "name": "m_axi_fm_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARUSER" }} , 
 	{ "name": "m_axi_fm_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RVALID" }} , 
 	{ "name": "m_axi_fm_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RREADY" }} , 
 	{ "name": "m_axi_fm_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm", "role": "RDATA" }} , 
 	{ "name": "m_axi_fm_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RLAST" }} , 
 	{ "name": "m_axi_fm_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RID" }} , 
 	{ "name": "m_axi_fm_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_fm_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RUSER" }} , 
 	{ "name": "m_axi_fm_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "RRESP" }} , 
 	{ "name": "m_axi_fm_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BVALID" }} , 
 	{ "name": "m_axi_fm_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BREADY" }} , 
 	{ "name": "m_axi_fm_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "BRESP" }} , 
 	{ "name": "m_axi_fm_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BID" }} , 
 	{ "name": "m_axi_fm_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BUSER" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "zext_ln43", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "zext_ln43", "role": "default" }} , 
 	{ "name": "input_feature_map", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_feature_map", "role": "default" }} , 
 	{ "name": "inBuffer3x3_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_0_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_0_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_0", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_0_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_0_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_1", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_0_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_0_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_0_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_0_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_0_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_0_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_0_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_0_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_0_2", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_0", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_1", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_1_2", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_0", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_1", "role": "d1" }} , 
 	{ "name": "inBuffer3x3_2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "address0" }} , 
 	{ "name": "inBuffer3x3_2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "ce0" }} , 
 	{ "name": "inBuffer3x3_2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "we0" }} , 
 	{ "name": "inBuffer3x3_2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "d0" }} , 
 	{ "name": "inBuffer3x3_2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "address1" }} , 
 	{ "name": "inBuffer3x3_2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "ce1" }} , 
 	{ "name": "inBuffer3x3_2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "we1" }} , 
 	{ "name": "inBuffer3x3_2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "inBuffer3x3_2_2", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10346", "EstimateLatencyMax" : "10346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fm", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fm_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "fm_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln43", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "inBuffer3x3_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_0_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inBuffer3x3_2_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter14", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter14", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_7ns_3ns_2_11_1_U43", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_6ns_3ns_2_10_1_U44", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_8ns_13_1_1_U45", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U46", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_2ns_16ns_15s_18_4_1_U47", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3 {
		fm {Type I LastRead 13 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln43 {Type I LastRead 0 FirstWrite -1}
		input_feature_map {Type I LastRead 0 FirstWrite -1}
		inBuffer3x3_0_0 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_0_1 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_0_2 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_1_0 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_1_1 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_1_2 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_2_0 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_2_1 {Type O LastRead -1 FirstWrite 11}
		inBuffer3x3_2_2 {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10346", "Max" : "10346"}
	, {"Name" : "Interval", "Min" : "10346", "Max" : "10346"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_fm_AWVALID VALID 1 1 }  { m_axi_fm_AWREADY READY 0 1 }  { m_axi_fm_AWADDR ADDR 1 64 }  { m_axi_fm_AWID ID 1 1 }  { m_axi_fm_AWLEN SIZE 1 32 }  { m_axi_fm_AWSIZE BURST 1 3 }  { m_axi_fm_AWBURST LOCK 1 2 }  { m_axi_fm_AWLOCK CACHE 1 2 }  { m_axi_fm_AWCACHE PROT 1 4 }  { m_axi_fm_AWPROT QOS 1 3 }  { m_axi_fm_AWQOS REGION 1 4 }  { m_axi_fm_AWREGION USER 1 4 }  { m_axi_fm_AWUSER DATA 1 1 }  { m_axi_fm_WVALID VALID 1 1 }  { m_axi_fm_WREADY READY 0 1 }  { m_axi_fm_WDATA FIFONUM 1 16 }  { m_axi_fm_WSTRB STRB 1 2 }  { m_axi_fm_WLAST LAST 1 1 }  { m_axi_fm_WID ID 1 1 }  { m_axi_fm_WUSER DATA 1 1 }  { m_axi_fm_ARVALID VALID 1 1 }  { m_axi_fm_ARREADY READY 0 1 }  { m_axi_fm_ARADDR ADDR 1 64 }  { m_axi_fm_ARID ID 1 1 }  { m_axi_fm_ARLEN SIZE 1 32 }  { m_axi_fm_ARSIZE BURST 1 3 }  { m_axi_fm_ARBURST LOCK 1 2 }  { m_axi_fm_ARLOCK CACHE 1 2 }  { m_axi_fm_ARCACHE PROT 1 4 }  { m_axi_fm_ARPROT QOS 1 3 }  { m_axi_fm_ARQOS REGION 1 4 }  { m_axi_fm_ARREGION USER 1 4 }  { m_axi_fm_ARUSER DATA 1 1 }  { m_axi_fm_RVALID VALID 0 1 }  { m_axi_fm_RREADY READY 1 1 }  { m_axi_fm_RDATA FIFONUM 0 16 }  { m_axi_fm_RLAST LAST 0 1 }  { m_axi_fm_RID ID 0 1 }  { m_axi_fm_RFIFONUM LEN 0 10 }  { m_axi_fm_RUSER DATA 0 1 }  { m_axi_fm_RRESP RESP 0 2 }  { m_axi_fm_BVALID VALID 0 1 }  { m_axi_fm_BREADY READY 1 1 }  { m_axi_fm_BRESP RESP 0 2 }  { m_axi_fm_BID ID 0 1 }  { m_axi_fm_BUSER DATA 0 1 } } }
	empty { ap_none {  { empty in_data 0 2 } } }
	zext_ln43 { ap_none {  { zext_ln43 in_data 0 8 } } }
	input_feature_map { ap_none {  { input_feature_map in_data 0 64 } } }
	inBuffer3x3_0_0 { ap_memory {  { inBuffer3x3_0_0_address0 mem_address 1 11 }  { inBuffer3x3_0_0_ce0 mem_ce 1 1 }  { inBuffer3x3_0_0_we0 mem_we 1 1 }  { inBuffer3x3_0_0_d0 mem_din 1 16 }  { inBuffer3x3_0_0_address1 MemPortADDR2 1 11 }  { inBuffer3x3_0_0_ce1 MemPortCE2 1 1 }  { inBuffer3x3_0_0_we1 MemPortWE2 1 1 }  { inBuffer3x3_0_0_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_0_1 { ap_memory {  { inBuffer3x3_0_1_address0 mem_address 1 11 }  { inBuffer3x3_0_1_ce0 mem_ce 1 1 }  { inBuffer3x3_0_1_we0 mem_we 1 1 }  { inBuffer3x3_0_1_d0 mem_din 1 16 }  { inBuffer3x3_0_1_address1 MemPortADDR2 1 11 }  { inBuffer3x3_0_1_ce1 MemPortCE2 1 1 }  { inBuffer3x3_0_1_we1 MemPortWE2 1 1 }  { inBuffer3x3_0_1_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_0_2 { ap_memory {  { inBuffer3x3_0_2_address0 mem_address 1 11 }  { inBuffer3x3_0_2_ce0 mem_ce 1 1 }  { inBuffer3x3_0_2_we0 mem_we 1 1 }  { inBuffer3x3_0_2_d0 mem_din 1 16 }  { inBuffer3x3_0_2_address1 MemPortADDR2 1 11 }  { inBuffer3x3_0_2_ce1 MemPortCE2 1 1 }  { inBuffer3x3_0_2_we1 MemPortWE2 1 1 }  { inBuffer3x3_0_2_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_1_0 { ap_memory {  { inBuffer3x3_1_0_address0 mem_address 1 11 }  { inBuffer3x3_1_0_ce0 mem_ce 1 1 }  { inBuffer3x3_1_0_we0 mem_we 1 1 }  { inBuffer3x3_1_0_d0 mem_din 1 16 }  { inBuffer3x3_1_0_address1 MemPortADDR2 1 11 }  { inBuffer3x3_1_0_ce1 MemPortCE2 1 1 }  { inBuffer3x3_1_0_we1 MemPortWE2 1 1 }  { inBuffer3x3_1_0_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_1_1 { ap_memory {  { inBuffer3x3_1_1_address0 mem_address 1 11 }  { inBuffer3x3_1_1_ce0 mem_ce 1 1 }  { inBuffer3x3_1_1_we0 mem_we 1 1 }  { inBuffer3x3_1_1_d0 mem_din 1 16 }  { inBuffer3x3_1_1_address1 MemPortADDR2 1 11 }  { inBuffer3x3_1_1_ce1 MemPortCE2 1 1 }  { inBuffer3x3_1_1_we1 MemPortWE2 1 1 }  { inBuffer3x3_1_1_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_1_2 { ap_memory {  { inBuffer3x3_1_2_address0 mem_address 1 11 }  { inBuffer3x3_1_2_ce0 mem_ce 1 1 }  { inBuffer3x3_1_2_we0 mem_we 1 1 }  { inBuffer3x3_1_2_d0 mem_din 1 16 }  { inBuffer3x3_1_2_address1 MemPortADDR2 1 11 }  { inBuffer3x3_1_2_ce1 MemPortCE2 1 1 }  { inBuffer3x3_1_2_we1 MemPortWE2 1 1 }  { inBuffer3x3_1_2_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_2_0 { ap_memory {  { inBuffer3x3_2_0_address0 mem_address 1 11 }  { inBuffer3x3_2_0_ce0 mem_ce 1 1 }  { inBuffer3x3_2_0_we0 mem_we 1 1 }  { inBuffer3x3_2_0_d0 mem_din 1 16 }  { inBuffer3x3_2_0_address1 MemPortADDR2 1 11 }  { inBuffer3x3_2_0_ce1 MemPortCE2 1 1 }  { inBuffer3x3_2_0_we1 MemPortWE2 1 1 }  { inBuffer3x3_2_0_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_2_1 { ap_memory {  { inBuffer3x3_2_1_address0 mem_address 1 11 }  { inBuffer3x3_2_1_ce0 mem_ce 1 1 }  { inBuffer3x3_2_1_we0 mem_we 1 1 }  { inBuffer3x3_2_1_d0 mem_din 1 16 }  { inBuffer3x3_2_1_address1 MemPortADDR2 1 11 }  { inBuffer3x3_2_1_ce1 MemPortCE2 1 1 }  { inBuffer3x3_2_1_we1 MemPortWE2 1 1 }  { inBuffer3x3_2_1_d1 MemPortDIN2 1 16 } } }
	inBuffer3x3_2_2 { ap_memory {  { inBuffer3x3_2_2_address0 mem_address 1 11 }  { inBuffer3x3_2_2_ce0 mem_ce 1 1 }  { inBuffer3x3_2_2_we0 mem_we 1 1 }  { inBuffer3x3_2_2_d0 mem_din 1 16 }  { inBuffer3x3_2_2_address1 MemPortADDR2 1 11 }  { inBuffer3x3_2_2_ce1 MemPortCE2 1 1 }  { inBuffer3x3_2_2_we1 MemPortWE2 1 1 }  { inBuffer3x3_2_2_d1 MemPortDIN2 1 16 } } }
}

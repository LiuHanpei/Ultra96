set moduleName main_func
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {main_func}
set C_modelType { void 0 }
set C_modelArgList {
	{ fm int 16 regular {axi_master 2}  }
	{ wt int 16 regular {axi_master 0}  }
	{ input_feature_map int 64 regular {axi_slave 0}  }
	{ weights_3x3 int 64 regular {axi_slave 0}  }
	{ bias_3x3 int 64 regular {axi_slave 0}  }
	{ weights_1x1 int 64 regular {axi_slave 0}  }
	{ bias_1x1 int 64 regular {axi_slave 0}  }
	{ output_feature_map int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "fm", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "input_feature_map","offset": { "type": "dynamic","port_name": "input_feature_map","bundle": "control"},"direction": "READONLY"},{"cName": "output_feature_map","offset": { "type": "dynamic","port_name": "output_feature_map","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "wt", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "weights_3x3","offset": { "type": "dynamic","port_name": "weights_3x3","bundle": "control"},"direction": "READONLY"},{"cName": "bias_3x3","offset": { "type": "dynamic","port_name": "bias_3x3","bundle": "control"},"direction": "READONLY"},{"cName": "weights_1x1","offset": { "type": "dynamic","port_name": "weights_1x1","bundle": "control"},"direction": "READONLY"},{"cName": "bias_1x1","offset": { "type": "dynamic","port_name": "bias_1x1","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_feature_map", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "weights_3x3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "bias_3x3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "weights_1x1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "bias_1x1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "output_feature_map", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_fm_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fm_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_fm_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_fm_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_fm_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_fm_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_fm_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_fm_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_fm_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fm_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_fm_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_fm_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_fm_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_fm_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_wt_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_wt_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_wt_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_wt_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_wt_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_wt_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_wt_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_wt_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_wt_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_wt_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_wt_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_wt_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_wt_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_wt_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_wt_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_wt_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_wt_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_wt_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_wt_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_wt_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_wt_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_wt_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_wt_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_wt_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"main_func","role":"start","value":"0","valid_bit":"0"},{"name":"main_func","role":"continue","value":"0","valid_bit":"4"},{"name":"main_func","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_feature_map","role":"data","value":"16"},{"name":"weights_3x3","role":"data","value":"28"},{"name":"bias_3x3","role":"data","value":"40"},{"name":"weights_1x1","role":"data","value":"52"},{"name":"bias_1x1","role":"data","value":"64"},{"name":"output_feature_map","role":"data","value":"76"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"main_func","role":"start","value":"0","valid_bit":"0"},{"name":"main_func","role":"done","value":"0","valid_bit":"1"},{"name":"main_func","role":"idle","value":"0","valid_bit":"2"},{"name":"main_func","role":"ready","value":"0","valid_bit":"3"},{"name":"main_func","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_fm_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fm_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fm_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fm", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fm_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "AWID" }} , 
 	{ "name": "m_axi_fm_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_fm_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm", "role": "WDATA" }} , 
 	{ "name": "m_axi_fm_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fm", "role": "WSTRB" }} , 
 	{ "name": "m_axi_fm_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WLAST" }} , 
 	{ "name": "m_axi_fm_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WID" }} , 
 	{ "name": "m_axi_fm_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "WUSER" }} , 
 	{ "name": "m_axi_fm_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARVALID" }} , 
 	{ "name": "m_axi_fm_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARREADY" }} , 
 	{ "name": "m_axi_fm_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fm", "role": "ARADDR" }} , 
 	{ "name": "m_axi_fm_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "ARID" }} , 
 	{ "name": "m_axi_fm_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fm", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_fm_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fm", "role": "RDATA" }} , 
 	{ "name": "m_axi_fm_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RLAST" }} , 
 	{ "name": "m_axi_fm_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RID" }} , 
 	{ "name": "m_axi_fm_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "RUSER" }} , 
 	{ "name": "m_axi_fm_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "RRESP" }} , 
 	{ "name": "m_axi_fm_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BVALID" }} , 
 	{ "name": "m_axi_fm_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BREADY" }} , 
 	{ "name": "m_axi_fm_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fm", "role": "BRESP" }} , 
 	{ "name": "m_axi_fm_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BID" }} , 
 	{ "name": "m_axi_fm_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fm", "role": "BUSER" }} , 
 	{ "name": "m_axi_wt_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wt_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wt_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wt_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "AWID" }} , 
 	{ "name": "m_axi_wt_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wt", "role": "AWLEN" }} , 
 	{ "name": "m_axi_wt_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wt", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_wt_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "AWBURST" }} , 
 	{ "name": "m_axi_wt_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_wt_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_wt_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wt", "role": "AWPROT" }} , 
 	{ "name": "m_axi_wt_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "AWQOS" }} , 
 	{ "name": "m_axi_wt_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "AWREGION" }} , 
 	{ "name": "m_axi_wt_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "AWUSER" }} , 
 	{ "name": "m_axi_wt_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "WVALID" }} , 
 	{ "name": "m_axi_wt_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "WREADY" }} , 
 	{ "name": "m_axi_wt_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wt", "role": "WDATA" }} , 
 	{ "name": "m_axi_wt_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "WSTRB" }} , 
 	{ "name": "m_axi_wt_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "WLAST" }} , 
 	{ "name": "m_axi_wt_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "WID" }} , 
 	{ "name": "m_axi_wt_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "WUSER" }} , 
 	{ "name": "m_axi_wt_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "ARVALID" }} , 
 	{ "name": "m_axi_wt_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "ARREADY" }} , 
 	{ "name": "m_axi_wt_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt", "role": "ARADDR" }} , 
 	{ "name": "m_axi_wt_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "ARID" }} , 
 	{ "name": "m_axi_wt_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wt", "role": "ARLEN" }} , 
 	{ "name": "m_axi_wt_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wt", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_wt_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "ARBURST" }} , 
 	{ "name": "m_axi_wt_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_wt_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_wt_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wt", "role": "ARPROT" }} , 
 	{ "name": "m_axi_wt_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "ARQOS" }} , 
 	{ "name": "m_axi_wt_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt", "role": "ARREGION" }} , 
 	{ "name": "m_axi_wt_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "ARUSER" }} , 
 	{ "name": "m_axi_wt_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "RVALID" }} , 
 	{ "name": "m_axi_wt_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "RREADY" }} , 
 	{ "name": "m_axi_wt_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wt", "role": "RDATA" }} , 
 	{ "name": "m_axi_wt_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "RLAST" }} , 
 	{ "name": "m_axi_wt_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "RID" }} , 
 	{ "name": "m_axi_wt_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "RUSER" }} , 
 	{ "name": "m_axi_wt_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "RRESP" }} , 
 	{ "name": "m_axi_wt_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "BVALID" }} , 
 	{ "name": "m_axi_wt_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "BREADY" }} , 
 	{ "name": "m_axi_wt_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wt", "role": "BRESP" }} , 
 	{ "name": "m_axi_wt_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "BID" }} , 
 	{ "name": "m_axi_wt_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "20", "22", "24", "26", "33", "80", "85", "88", "89", "90", "91"],
		"CDFG" : "main_func",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5235393", "EstimateLatencyMax" : "5235393",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fm", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3_fu_491", "Port" : "fm", "Inst_start_state" : "48", "Inst_end_state" : "49"},
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "fm", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "wt", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364", "Port" : "wt", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "24", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_29_7_fu_377", "Port" : "wt", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "wt", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "20", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351", "Port" : "wt", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "input_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_3x3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_3x3", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_1x1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1x1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_0_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_0_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_0_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_2_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_2_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_0_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_0_2_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_0_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_0_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_0_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_2_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_2_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_1_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_1_2_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_0_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_0_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_0_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_2_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_2_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "weight_buf3x3_2_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Port" : "weight_buf3x3_2_2_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "bias_buf3x3_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351", "Port" : "bias_buf3x3_0", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "bias_buf3x3_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351", "Port" : "bias_buf3x3_1", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "bias_buf3x3_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351", "Port" : "bias_buf3x3_2", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "weight_buf1x1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364", "Port" : "weight_buf1x1_0", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "weight_buf1x1_0", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "weight_buf1x1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364", "Port" : "weight_buf1x1_1", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "weight_buf1x1_1", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "weight_buf1x1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364", "Port" : "weight_buf1x1_2", "Inst_start_state" : "30", "Inst_end_state" : "31"},
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "weight_buf1x1_2", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "bias_buf1x1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_29_7_fu_377", "Port" : "bias_buf1x1", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "bias_buf1x1", "Inst_start_state" : "46", "Inst_end_state" : "47"}]},
			{"Name" : "inBuffer3x3_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_0_0", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_0_0", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_0_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_0_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_0_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_0_2", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_0_2", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_1_0", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_1_0", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_1_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_1_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_1_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_1_2", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_1_2", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_2_0", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_2_0", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_2_1", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_2_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "inBuffer3x3_2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Port" : "inBuffer3x3_2_2", "Inst_start_state" : "42", "Inst_end_state" : "43"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "inBuffer3x3_2_2", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "outBuffer3x3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "outBuffer3x3_0", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "outBuffer3x3_0", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "outBuffer3x3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "outBuffer3x3_1", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "outBuffer3x3_1", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "outBuffer3x3_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "outBuffer3x3_2", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "33", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Port" : "outBuffer3x3_2", "Inst_start_state" : "44", "Inst_end_state" : "45"}]},
			{"Name" : "outBuffer1x1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3_fu_491", "Port" : "outBuffer1x1", "Inst_start_state" : "48", "Inst_end_state" : "49"},
					{"ID" : "80", "SubInstance" : "grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Port" : "outBuffer1x1", "Inst_start_state" : "46", "Inst_end_state" : "47"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1_VITIS_LOOP_57_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_state42", "LastState" : ["ap_ST_fsm_state49"], "QuitState" : ["ap_ST_fsm_state42"], "PreState" : ["ap_ST_fsm_state41"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf1x1_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf1x1_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf1x1_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_buf1x1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_0_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_0_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_0_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_1_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_1_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_1_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_2_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_2_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inBuffer3x3_2_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outBuffer3x3_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outBuffer3x3_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outBuffer3x3_2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outBuffer1x1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wt", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln17_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf3x3_0_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_0_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_1_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weight_buf3x3_2_2_2", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3_fu_290.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_22_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wt", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln22", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buf3x3_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_buf3x3_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_buf3x3_2", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_22_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_22_4_fu_351.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "147", "EstimateLatencyMax" : "147",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wt", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln25", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_buf1x1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf1x1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weight_buf1x1_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_5_VITIS_LOOP_26_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6_fu_364.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_29_7_fu_377", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_29_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "wt", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln29", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buf1x1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_29_7_fu_377.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386", "Parent" : "0", "Child" : ["27", "28", "29", "30", "31", "32"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.urem_7ns_3ns_2_11_1_U43", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.urem_6ns_3ns_2_10_1_U44", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.mul_6ns_8ns_13_1_1_U45", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.mul_7ns_9ns_15_1_1_U46", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.mac_muladd_2ns_16ns_15s_18_4_1_U47", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3_fu_386.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413", "Parent" : "0", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U66", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U67", "Parent" : "33"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U68", "Parent" : "33"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U69", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U70", "Parent" : "33"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U71", "Parent" : "33"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U72", "Parent" : "33"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U73", "Parent" : "33"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U74", "Parent" : "33"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.urem_7ns_3ns_2_11_1_U75", "Parent" : "33"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.urem_6ns_3ns_2_10_1_U76", "Parent" : "33"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_6ns_8ns_13_1_1_U77", "Parent" : "33"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_6ns_8ns_13_1_1_U78", "Parent" : "33"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_6ns_8ns_13_1_1_U79", "Parent" : "33"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_7ns_9ns_15_1_1_U80", "Parent" : "33"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_7ns_9ns_15_1_1_U81", "Parent" : "33"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mul_7ns_9ns_15_1_1_U82", "Parent" : "33"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U83", "Parent" : "33"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U84", "Parent" : "33"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U85", "Parent" : "33"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U86", "Parent" : "33"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U87", "Parent" : "33"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U88", "Parent" : "33"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U89", "Parent" : "33"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U90", "Parent" : "33"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U91", "Parent" : "33"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.sparsemux_7_2_16_1_1_U92", "Parent" : "33"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U93", "Parent" : "33"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U94", "Parent" : "33"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U95", "Parent" : "33"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U96", "Parent" : "33"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U97", "Parent" : "33"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U98", "Parent" : "33"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U99", "Parent" : "33"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U100", "Parent" : "33"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mux_3_2_16_1_1_U101", "Parent" : "33"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U102", "Parent" : "33"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U103", "Parent" : "33"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U104", "Parent" : "33"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U105", "Parent" : "33"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U106", "Parent" : "33"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U107", "Parent" : "33"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U108", "Parent" : "33"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U109", "Parent" : "33"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.mac_muladd_16s_16s_29ns_29_4_1_U110", "Parent" : "33"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_413.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471", "Parent" : "0", "Child" : ["81", "82", "83", "84"],
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
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471.mul_16s_16s_29_1_1_U158", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471.mac_muladd_16s_16s_29ns_29_4_1_U159", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471.mac_muladd_16s_16s_29ns_29_4_1_U160", "Parent" : "80"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3_fu_491", "Parent" : "0", "Child" : ["86", "87"],
		"CDFG" : "main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "153611", "EstimateLatencyMax" : "153611",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fm", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fm_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "fm_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "fm_blk_n_AW", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln62_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_feature_map", "Type" : "None", "Direction" : "I"},
			{"Name" : "outBuffer1x1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3_fu_491.mac_muladd_6ns_16ns_17ns_22_4_1_U170", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3_fu_491.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_m_axi_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wt_m_axi_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_15ns_17_1_1_U177", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	main_func {
		fm {Type IO LastRead 13 FirstWrite -1}
		wt {Type I LastRead 31 FirstWrite -1}
		input_feature_map {Type I LastRead 0 FirstWrite -1}
		weights_3x3 {Type I LastRead 0 FirstWrite -1}
		bias_3x3 {Type I LastRead 0 FirstWrite -1}
		weights_1x1 {Type I LastRead 0 FirstWrite -1}
		bias_1x1 {Type I LastRead 0 FirstWrite -1}
		output_feature_map {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_0_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_0_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_0_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_1_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_1_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_1_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_2_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_2_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_0_2_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_0_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_0_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_0_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_1_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_1_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_1_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_2_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_2_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_1_2_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_0_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_0_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_0_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_1_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_1_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_1_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_2_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_2_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf3x3_2_2_2 {Type IO LastRead -1 FirstWrite -1}
		bias_buf3x3_0 {Type IO LastRead -1 FirstWrite -1}
		bias_buf3x3_1 {Type IO LastRead -1 FirstWrite -1}
		bias_buf3x3_2 {Type IO LastRead -1 FirstWrite -1}
		weight_buf1x1_0 {Type IO LastRead -1 FirstWrite -1}
		weight_buf1x1_1 {Type IO LastRead -1 FirstWrite -1}
		weight_buf1x1_2 {Type IO LastRead -1 FirstWrite -1}
		bias_buf1x1 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_0_0 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_0_1 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_0_2 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_1_0 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_1_1 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_1_2 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_2_0 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_2_1 {Type IO LastRead -1 FirstWrite -1}
		inBuffer3x3_2_2 {Type IO LastRead -1 FirstWrite -1}
		outBuffer3x3_0 {Type IO LastRead -1 FirstWrite -1}
		outBuffer3x3_1 {Type IO LastRead -1 FirstWrite -1}
		outBuffer3x3_2 {Type IO LastRead -1 FirstWrite -1}
		outBuffer1x1 {Type IO LastRead -1 FirstWrite -1}}
	main_func_Pipeline_VITIS_LOOP_17_1_VITIS_LOOP_18_2_VITIS_LOOP_19_3 {
		wt {Type I LastRead 1 FirstWrite -1}
		sext_ln17_5 {Type I LastRead 0 FirstWrite -1}
		weight_buf3x3_0_0_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_0_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_0_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_1_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_1_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_1_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_2_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_2_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_0_2_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_0_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_0_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_0_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_1_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_1_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_1_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_2_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_2_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_1_2_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_0_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_0_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_0_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_1_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_1_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_1_2 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_2_0 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_2_1 {Type O LastRead -1 FirstWrite 1}
		weight_buf3x3_2_2_2 {Type O LastRead -1 FirstWrite 1}}
	main_func_Pipeline_VITIS_LOOP_22_4 {
		wt {Type I LastRead 1 FirstWrite -1}
		sext_ln22 {Type I LastRead 0 FirstWrite -1}
		bias_buf3x3_0 {Type O LastRead -1 FirstWrite 1}
		bias_buf3x3_1 {Type O LastRead -1 FirstWrite 1}
		bias_buf3x3_2 {Type O LastRead -1 FirstWrite 1}}
	main_func_Pipeline_VITIS_LOOP_25_5_VITIS_LOOP_26_6 {
		wt {Type I LastRead 1 FirstWrite -1}
		sext_ln25 {Type I LastRead 0 FirstWrite -1}
		weight_buf1x1_0 {Type O LastRead -1 FirstWrite 2}
		weight_buf1x1_1 {Type O LastRead -1 FirstWrite 2}
		weight_buf1x1_2 {Type O LastRead -1 FirstWrite 2}}
	main_func_Pipeline_VITIS_LOOP_29_7 {
		wt {Type I LastRead 1 FirstWrite -1}
		sext_ln29 {Type I LastRead 0 FirstWrite -1}
		bias_buf1x1 {Type O LastRead -1 FirstWrite 2}}
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
		inBuffer3x3_2_2 {Type O LastRead -1 FirstWrite 11}}
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
		outBuffer3x3_2 {Type O LastRead -1 FirstWrite 24}}
	main_func_Pipeline_VITIS_LOOP_12_1_VITIS_LOOP_13_2_VITIS_LOOP_14_3 {
		bias_buf1x1 {Type I LastRead 5 FirstWrite -1}
		weight_buf1x1_0 {Type I LastRead 3 FirstWrite -1}
		weight_buf1x1_1 {Type I LastRead 1 FirstWrite -1}
		weight_buf1x1_2 {Type I LastRead 2 FirstWrite -1}
		outBuffer3x3_0 {Type I LastRead 3 FirstWrite -1}
		outBuffer3x3_1 {Type I LastRead 1 FirstWrite -1}
		outBuffer3x3_2 {Type I LastRead 2 FirstWrite -1}
		outBuffer1x1 {Type O LastRead -1 FirstWrite 6}}
	main_func_Pipeline_VITIS_LOOP_66_1_VITIS_LOOP_67_2_VITIS_LOOP_68_3 {
		fm {Type O LastRead 7 FirstWrite 6}
		zext_ln62_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		output_feature_map {Type I LastRead 0 FirstWrite -1}
		outBuffer1x1 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5235393", "Max" : "5235393"}
	, {"Name" : "Interval", "Min" : "5235394", "Max" : "5235394"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fm { m_axi {  { m_axi_fm_AWVALID VALID 1 1 }  { m_axi_fm_AWREADY READY 0 1 }  { m_axi_fm_AWADDR ADDR 1 64 }  { m_axi_fm_AWID ID 1 1 }  { m_axi_fm_AWLEN SIZE 1 8 }  { m_axi_fm_AWSIZE BURST 1 3 }  { m_axi_fm_AWBURST LOCK 1 2 }  { m_axi_fm_AWLOCK CACHE 1 2 }  { m_axi_fm_AWCACHE PROT 1 4 }  { m_axi_fm_AWPROT QOS 1 3 }  { m_axi_fm_AWQOS REGION 1 4 }  { m_axi_fm_AWREGION USER 1 4 }  { m_axi_fm_AWUSER DATA 1 1 }  { m_axi_fm_WVALID VALID 1 1 }  { m_axi_fm_WREADY READY 0 1 }  { m_axi_fm_WDATA FIFONUM 1 32 }  { m_axi_fm_WSTRB STRB 1 4 }  { m_axi_fm_WLAST LAST 1 1 }  { m_axi_fm_WID ID 1 1 }  { m_axi_fm_WUSER DATA 1 1 }  { m_axi_fm_ARVALID VALID 1 1 }  { m_axi_fm_ARREADY READY 0 1 }  { m_axi_fm_ARADDR ADDR 1 64 }  { m_axi_fm_ARID ID 1 1 }  { m_axi_fm_ARLEN SIZE 1 8 }  { m_axi_fm_ARSIZE BURST 1 3 }  { m_axi_fm_ARBURST LOCK 1 2 }  { m_axi_fm_ARLOCK CACHE 1 2 }  { m_axi_fm_ARCACHE PROT 1 4 }  { m_axi_fm_ARPROT QOS 1 3 }  { m_axi_fm_ARQOS REGION 1 4 }  { m_axi_fm_ARREGION USER 1 4 }  { m_axi_fm_ARUSER DATA 1 1 }  { m_axi_fm_RVALID VALID 0 1 }  { m_axi_fm_RREADY READY 1 1 }  { m_axi_fm_RDATA FIFONUM 0 32 }  { m_axi_fm_RLAST LAST 0 1 }  { m_axi_fm_RID ID 0 1 }  { m_axi_fm_RUSER DATA 0 1 }  { m_axi_fm_RRESP RESP 0 2 }  { m_axi_fm_BVALID VALID 0 1 }  { m_axi_fm_BREADY READY 1 1 }  { m_axi_fm_BRESP RESP 0 2 }  { m_axi_fm_BID ID 0 1 }  { m_axi_fm_BUSER DATA 0 1 } } }
	wt { m_axi {  { m_axi_wt_AWVALID VALID 1 1 }  { m_axi_wt_AWREADY READY 0 1 }  { m_axi_wt_AWADDR ADDR 1 64 }  { m_axi_wt_AWID ID 1 1 }  { m_axi_wt_AWLEN SIZE 1 8 }  { m_axi_wt_AWSIZE BURST 1 3 }  { m_axi_wt_AWBURST LOCK 1 2 }  { m_axi_wt_AWLOCK CACHE 1 2 }  { m_axi_wt_AWCACHE PROT 1 4 }  { m_axi_wt_AWPROT QOS 1 3 }  { m_axi_wt_AWQOS REGION 1 4 }  { m_axi_wt_AWREGION USER 1 4 }  { m_axi_wt_AWUSER DATA 1 1 }  { m_axi_wt_WVALID VALID 1 1 }  { m_axi_wt_WREADY READY 0 1 }  { m_axi_wt_WDATA FIFONUM 1 32 }  { m_axi_wt_WSTRB STRB 1 4 }  { m_axi_wt_WLAST LAST 1 1 }  { m_axi_wt_WID ID 1 1 }  { m_axi_wt_WUSER DATA 1 1 }  { m_axi_wt_ARVALID VALID 1 1 }  { m_axi_wt_ARREADY READY 0 1 }  { m_axi_wt_ARADDR ADDR 1 64 }  { m_axi_wt_ARID ID 1 1 }  { m_axi_wt_ARLEN SIZE 1 8 }  { m_axi_wt_ARSIZE BURST 1 3 }  { m_axi_wt_ARBURST LOCK 1 2 }  { m_axi_wt_ARLOCK CACHE 1 2 }  { m_axi_wt_ARCACHE PROT 1 4 }  { m_axi_wt_ARPROT QOS 1 3 }  { m_axi_wt_ARQOS REGION 1 4 }  { m_axi_wt_ARREGION USER 1 4 }  { m_axi_wt_ARUSER DATA 1 1 }  { m_axi_wt_RVALID VALID 0 1 }  { m_axi_wt_RREADY READY 1 1 }  { m_axi_wt_RDATA FIFONUM 0 32 }  { m_axi_wt_RLAST LAST 0 1 }  { m_axi_wt_RID ID 0 1 }  { m_axi_wt_RUSER DATA 0 1 }  { m_axi_wt_RRESP RESP 0 2 }  { m_axi_wt_BVALID VALID 0 1 }  { m_axi_wt_BREADY READY 1 1 }  { m_axi_wt_BRESP RESP 0 2 }  { m_axi_wt_BID ID 0 1 }  { m_axi_wt_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict fm {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict wt {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ fm 1 }
	{ wt 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ fm 1 }
	{ wt 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

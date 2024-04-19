// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      main_func
`define AUTOTB_DUT_INST AESL_inst_main_func
`define AUTOTB_TOP      apatb_main_func_top
`define AUTOTB_LAT_RESULT_FILE "main_func.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "main_func.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_main_func_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_fm 1
`define AESL_DEPTH_wt 1
`define AESL_DEPTH_input_feature_map 1
`define AESL_DEPTH_weights_3x3 1
`define AESL_DEPTH_bias_3x3 1
`define AESL_DEPTH_weights_1x1 1
`define AESL_DEPTH_bias_1x1 1
`define AESL_DEPTH_output_feature_map 1
`define AUTOTB_TVIN_fm  "../tv/cdatafile/c.main_func.autotvin_fm.dat"
`define AUTOTB_TVIN_wt  "../tv/cdatafile/c.main_func.autotvin_wt.dat"
`define AUTOTB_TVIN_input_feature_map  "../tv/cdatafile/c.main_func.autotvin_input_feature_map.dat"
`define AUTOTB_TVIN_weights_3x3  "../tv/cdatafile/c.main_func.autotvin_weights_3x3.dat"
`define AUTOTB_TVIN_bias_3x3  "../tv/cdatafile/c.main_func.autotvin_bias_3x3.dat"
`define AUTOTB_TVIN_weights_1x1  "../tv/cdatafile/c.main_func.autotvin_weights_1x1.dat"
`define AUTOTB_TVIN_bias_1x1  "../tv/cdatafile/c.main_func.autotvin_bias_1x1.dat"
`define AUTOTB_TVIN_output_feature_map  "../tv/cdatafile/c.main_func.autotvin_output_feature_map.dat"
`define AUTOTB_TVIN_fm_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_fm.dat"
`define AUTOTB_TVIN_wt_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_wt.dat"
`define AUTOTB_TVIN_input_feature_map_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_input_feature_map.dat"
`define AUTOTB_TVIN_weights_3x3_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_weights_3x3.dat"
`define AUTOTB_TVIN_bias_3x3_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_bias_3x3.dat"
`define AUTOTB_TVIN_weights_1x1_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_weights_1x1.dat"
`define AUTOTB_TVIN_bias_1x1_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_bias_1x1.dat"
`define AUTOTB_TVIN_output_feature_map_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvin_output_feature_map.dat"
`define AUTOTB_TVOUT_fm  "../tv/cdatafile/c.main_func.autotvout_fm.dat"
`define AUTOTB_TVOUT_fm_out_wrapc  "../tv/rtldatafile/rtl.main_func.autotvout_fm.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 5235393;
parameter LENGTH_bias_1x1 = 1;
parameter LENGTH_bias_3x3 = 1;
parameter LENGTH_fm = 2611200;
parameter LENGTH_input_feature_map = 1;
parameter LENGTH_output_feature_map = 1;
parameter LENGTH_weights_1x1 = 1;
parameter LENGTH_weights_3x3 = 1;
parameter LENGTH_wt = 222;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [6 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire  fm_AWVALID;
wire  fm_AWREADY;
wire [63 : 0] fm_AWADDR;
wire [0 : 0] fm_AWID;
wire [7 : 0] fm_AWLEN;
wire [2 : 0] fm_AWSIZE;
wire [1 : 0] fm_AWBURST;
wire [1 : 0] fm_AWLOCK;
wire [3 : 0] fm_AWCACHE;
wire [2 : 0] fm_AWPROT;
wire [3 : 0] fm_AWQOS;
wire [3 : 0] fm_AWREGION;
wire [0 : 0] fm_AWUSER;
wire  fm_WVALID;
wire  fm_WREADY;
wire [31 : 0] fm_WDATA;
wire [3 : 0] fm_WSTRB;
wire  fm_WLAST;
wire [0 : 0] fm_WID;
wire [0 : 0] fm_WUSER;
wire  fm_ARVALID;
wire  fm_ARREADY;
wire [63 : 0] fm_ARADDR;
wire [0 : 0] fm_ARID;
wire [7 : 0] fm_ARLEN;
wire [2 : 0] fm_ARSIZE;
wire [1 : 0] fm_ARBURST;
wire [1 : 0] fm_ARLOCK;
wire [3 : 0] fm_ARCACHE;
wire [2 : 0] fm_ARPROT;
wire [3 : 0] fm_ARQOS;
wire [3 : 0] fm_ARREGION;
wire [0 : 0] fm_ARUSER;
wire  fm_RVALID;
wire  fm_RREADY;
wire [31 : 0] fm_RDATA;
wire  fm_RLAST;
wire [0 : 0] fm_RID;
wire [0 : 0] fm_RUSER;
wire [1 : 0] fm_RRESP;
wire  fm_BVALID;
wire  fm_BREADY;
wire [1 : 0] fm_BRESP;
wire [0 : 0] fm_BID;
wire [0 : 0] fm_BUSER;
wire  wt_AWVALID;
wire  wt_AWREADY;
wire [63 : 0] wt_AWADDR;
wire [0 : 0] wt_AWID;
wire [7 : 0] wt_AWLEN;
wire [2 : 0] wt_AWSIZE;
wire [1 : 0] wt_AWBURST;
wire [1 : 0] wt_AWLOCK;
wire [3 : 0] wt_AWCACHE;
wire [2 : 0] wt_AWPROT;
wire [3 : 0] wt_AWQOS;
wire [3 : 0] wt_AWREGION;
wire [0 : 0] wt_AWUSER;
wire  wt_WVALID;
wire  wt_WREADY;
wire [31 : 0] wt_WDATA;
wire [3 : 0] wt_WSTRB;
wire  wt_WLAST;
wire [0 : 0] wt_WID;
wire [0 : 0] wt_WUSER;
wire  wt_ARVALID;
wire  wt_ARREADY;
wire [63 : 0] wt_ARADDR;
wire [0 : 0] wt_ARID;
wire [7 : 0] wt_ARLEN;
wire [2 : 0] wt_ARSIZE;
wire [1 : 0] wt_ARBURST;
wire [1 : 0] wt_ARLOCK;
wire [3 : 0] wt_ARCACHE;
wire [2 : 0] wt_ARPROT;
wire [3 : 0] wt_ARQOS;
wire [3 : 0] wt_ARREGION;
wire [0 : 0] wt_ARUSER;
wire  wt_RVALID;
wire  wt_RREADY;
wire [31 : 0] wt_RDATA;
wire  wt_RLAST;
wire [0 : 0] wt_RID;
wire [0 : 0] wt_RUSER;
wire [1 : 0] wt_RRESP;
wire  wt_BVALID;
wire  wt_BREADY;
wire [1 : 0] wt_BRESP;
wire [0 : 0] wt_BID;
wire [0 : 0] wt_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_fm_AWVALID(fm_AWVALID),
    .m_axi_fm_AWREADY(fm_AWREADY),
    .m_axi_fm_AWADDR(fm_AWADDR),
    .m_axi_fm_AWID(fm_AWID),
    .m_axi_fm_AWLEN(fm_AWLEN),
    .m_axi_fm_AWSIZE(fm_AWSIZE),
    .m_axi_fm_AWBURST(fm_AWBURST),
    .m_axi_fm_AWLOCK(fm_AWLOCK),
    .m_axi_fm_AWCACHE(fm_AWCACHE),
    .m_axi_fm_AWPROT(fm_AWPROT),
    .m_axi_fm_AWQOS(fm_AWQOS),
    .m_axi_fm_AWREGION(fm_AWREGION),
    .m_axi_fm_AWUSER(fm_AWUSER),
    .m_axi_fm_WVALID(fm_WVALID),
    .m_axi_fm_WREADY(fm_WREADY),
    .m_axi_fm_WDATA(fm_WDATA),
    .m_axi_fm_WSTRB(fm_WSTRB),
    .m_axi_fm_WLAST(fm_WLAST),
    .m_axi_fm_WID(fm_WID),
    .m_axi_fm_WUSER(fm_WUSER),
    .m_axi_fm_ARVALID(fm_ARVALID),
    .m_axi_fm_ARREADY(fm_ARREADY),
    .m_axi_fm_ARADDR(fm_ARADDR),
    .m_axi_fm_ARID(fm_ARID),
    .m_axi_fm_ARLEN(fm_ARLEN),
    .m_axi_fm_ARSIZE(fm_ARSIZE),
    .m_axi_fm_ARBURST(fm_ARBURST),
    .m_axi_fm_ARLOCK(fm_ARLOCK),
    .m_axi_fm_ARCACHE(fm_ARCACHE),
    .m_axi_fm_ARPROT(fm_ARPROT),
    .m_axi_fm_ARQOS(fm_ARQOS),
    .m_axi_fm_ARREGION(fm_ARREGION),
    .m_axi_fm_ARUSER(fm_ARUSER),
    .m_axi_fm_RVALID(fm_RVALID),
    .m_axi_fm_RREADY(fm_RREADY),
    .m_axi_fm_RDATA(fm_RDATA),
    .m_axi_fm_RLAST(fm_RLAST),
    .m_axi_fm_RID(fm_RID),
    .m_axi_fm_RUSER(fm_RUSER),
    .m_axi_fm_RRESP(fm_RRESP),
    .m_axi_fm_BVALID(fm_BVALID),
    .m_axi_fm_BREADY(fm_BREADY),
    .m_axi_fm_BRESP(fm_BRESP),
    .m_axi_fm_BID(fm_BID),
    .m_axi_fm_BUSER(fm_BUSER),
    .m_axi_wt_AWVALID(wt_AWVALID),
    .m_axi_wt_AWREADY(wt_AWREADY),
    .m_axi_wt_AWADDR(wt_AWADDR),
    .m_axi_wt_AWID(wt_AWID),
    .m_axi_wt_AWLEN(wt_AWLEN),
    .m_axi_wt_AWSIZE(wt_AWSIZE),
    .m_axi_wt_AWBURST(wt_AWBURST),
    .m_axi_wt_AWLOCK(wt_AWLOCK),
    .m_axi_wt_AWCACHE(wt_AWCACHE),
    .m_axi_wt_AWPROT(wt_AWPROT),
    .m_axi_wt_AWQOS(wt_AWQOS),
    .m_axi_wt_AWREGION(wt_AWREGION),
    .m_axi_wt_AWUSER(wt_AWUSER),
    .m_axi_wt_WVALID(wt_WVALID),
    .m_axi_wt_WREADY(wt_WREADY),
    .m_axi_wt_WDATA(wt_WDATA),
    .m_axi_wt_WSTRB(wt_WSTRB),
    .m_axi_wt_WLAST(wt_WLAST),
    .m_axi_wt_WID(wt_WID),
    .m_axi_wt_WUSER(wt_WUSER),
    .m_axi_wt_ARVALID(wt_ARVALID),
    .m_axi_wt_ARREADY(wt_ARREADY),
    .m_axi_wt_ARADDR(wt_ARADDR),
    .m_axi_wt_ARID(wt_ARID),
    .m_axi_wt_ARLEN(wt_ARLEN),
    .m_axi_wt_ARSIZE(wt_ARSIZE),
    .m_axi_wt_ARBURST(wt_ARBURST),
    .m_axi_wt_ARLOCK(wt_ARLOCK),
    .m_axi_wt_ARCACHE(wt_ARCACHE),
    .m_axi_wt_ARPROT(wt_ARPROT),
    .m_axi_wt_ARQOS(wt_ARQOS),
    .m_axi_wt_ARREGION(wt_ARREGION),
    .m_axi_wt_ARUSER(wt_ARUSER),
    .m_axi_wt_RVALID(wt_RVALID),
    .m_axi_wt_RREADY(wt_RREADY),
    .m_axi_wt_RDATA(wt_RDATA),
    .m_axi_wt_RLAST(wt_RLAST),
    .m_axi_wt_RID(wt_RID),
    .m_axi_wt_RUSER(wt_RUSER),
    .m_axi_wt_RRESP(wt_RRESP),
    .m_axi_wt_BVALID(wt_BVALID),
    .m_axi_wt_BREADY(wt_BREADY),
    .m_axi_wt_BRESP(wt_BRESP),
    .m_axi_wt_BID(wt_BID),
    .m_axi_wt_BUSER(wt_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end








wire    AESL_axi_master_fm_ready;
wire    AESL_axi_master_fm_done;
AESL_axi_master_fm AESL_AXI_MASTER_fm(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_fm_AWVALID (fm_AWVALID),
    .TRAN_fm_AWREADY (fm_AWREADY),
    .TRAN_fm_AWADDR (fm_AWADDR),
    .TRAN_fm_AWID (fm_AWID),
    .TRAN_fm_AWLEN (fm_AWLEN),
    .TRAN_fm_AWSIZE (fm_AWSIZE),
    .TRAN_fm_AWBURST (fm_AWBURST),
    .TRAN_fm_AWLOCK (fm_AWLOCK),
    .TRAN_fm_AWCACHE (fm_AWCACHE),
    .TRAN_fm_AWPROT (fm_AWPROT),
    .TRAN_fm_AWQOS (fm_AWQOS),
    .TRAN_fm_AWREGION (fm_AWREGION),
    .TRAN_fm_AWUSER (fm_AWUSER),
    .TRAN_fm_WVALID (fm_WVALID),
    .TRAN_fm_WREADY (fm_WREADY),
    .TRAN_fm_WDATA (fm_WDATA),
    .TRAN_fm_WSTRB (fm_WSTRB),
    .TRAN_fm_WLAST (fm_WLAST),
    .TRAN_fm_WID (fm_WID),
    .TRAN_fm_WUSER (fm_WUSER),
    .TRAN_fm_ARVALID (fm_ARVALID),
    .TRAN_fm_ARREADY (fm_ARREADY),
    .TRAN_fm_ARADDR (fm_ARADDR),
    .TRAN_fm_ARID (fm_ARID),
    .TRAN_fm_ARLEN (fm_ARLEN),
    .TRAN_fm_ARSIZE (fm_ARSIZE),
    .TRAN_fm_ARBURST (fm_ARBURST),
    .TRAN_fm_ARLOCK (fm_ARLOCK),
    .TRAN_fm_ARCACHE (fm_ARCACHE),
    .TRAN_fm_ARPROT (fm_ARPROT),
    .TRAN_fm_ARQOS (fm_ARQOS),
    .TRAN_fm_ARREGION (fm_ARREGION),
    .TRAN_fm_ARUSER (fm_ARUSER),
    .TRAN_fm_RVALID (fm_RVALID),
    .TRAN_fm_RREADY (fm_RREADY),
    .TRAN_fm_RDATA (fm_RDATA),
    .TRAN_fm_RLAST (fm_RLAST),
    .TRAN_fm_RID (fm_RID),
    .TRAN_fm_RUSER (fm_RUSER),
    .TRAN_fm_RRESP (fm_RRESP),
    .TRAN_fm_BVALID (fm_BVALID),
    .TRAN_fm_BREADY (fm_BREADY),
    .TRAN_fm_BRESP (fm_BRESP),
    .TRAN_fm_BID (fm_BID),
    .TRAN_fm_BUSER (fm_BUSER),
    .ready (AESL_axi_master_fm_ready),
    .done  (AESL_axi_master_fm_done)
);
assign    AESL_axi_master_fm_ready    =   ready;
assign    AESL_axi_master_fm_done    =   AESL_done_delay;
wire    AESL_axi_master_wt_ready;
wire    AESL_axi_master_wt_done;
AESL_axi_master_wt AESL_AXI_MASTER_wt(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_wt_AWVALID (wt_AWVALID),
    .TRAN_wt_AWREADY (wt_AWREADY),
    .TRAN_wt_AWADDR (wt_AWADDR),
    .TRAN_wt_AWID (wt_AWID),
    .TRAN_wt_AWLEN (wt_AWLEN),
    .TRAN_wt_AWSIZE (wt_AWSIZE),
    .TRAN_wt_AWBURST (wt_AWBURST),
    .TRAN_wt_AWLOCK (wt_AWLOCK),
    .TRAN_wt_AWCACHE (wt_AWCACHE),
    .TRAN_wt_AWPROT (wt_AWPROT),
    .TRAN_wt_AWQOS (wt_AWQOS),
    .TRAN_wt_AWREGION (wt_AWREGION),
    .TRAN_wt_AWUSER (wt_AWUSER),
    .TRAN_wt_WVALID (wt_WVALID),
    .TRAN_wt_WREADY (wt_WREADY),
    .TRAN_wt_WDATA (wt_WDATA),
    .TRAN_wt_WSTRB (wt_WSTRB),
    .TRAN_wt_WLAST (wt_WLAST),
    .TRAN_wt_WID (wt_WID),
    .TRAN_wt_WUSER (wt_WUSER),
    .TRAN_wt_ARVALID (wt_ARVALID),
    .TRAN_wt_ARREADY (wt_ARREADY),
    .TRAN_wt_ARADDR (wt_ARADDR),
    .TRAN_wt_ARID (wt_ARID),
    .TRAN_wt_ARLEN (wt_ARLEN),
    .TRAN_wt_ARSIZE (wt_ARSIZE),
    .TRAN_wt_ARBURST (wt_ARBURST),
    .TRAN_wt_ARLOCK (wt_ARLOCK),
    .TRAN_wt_ARCACHE (wt_ARCACHE),
    .TRAN_wt_ARPROT (wt_ARPROT),
    .TRAN_wt_ARQOS (wt_ARQOS),
    .TRAN_wt_ARREGION (wt_ARREGION),
    .TRAN_wt_ARUSER (wt_ARUSER),
    .TRAN_wt_RVALID (wt_RVALID),
    .TRAN_wt_RREADY (wt_RREADY),
    .TRAN_wt_RDATA (wt_RDATA),
    .TRAN_wt_RLAST (wt_RLAST),
    .TRAN_wt_RID (wt_RID),
    .TRAN_wt_RUSER (wt_RUSER),
    .TRAN_wt_RRESP (wt_RRESP),
    .TRAN_wt_BVALID (wt_BVALID),
    .TRAN_wt_BREADY (wt_BREADY),
    .TRAN_wt_BRESP (wt_BRESP),
    .TRAN_wt_BID (wt_BID),
    .TRAN_wt_BUSER (wt_BUSER),
    .ready (AESL_axi_master_wt_ready),
    .done  (AESL_axi_master_wt_done)
);
assign    AESL_axi_master_wt_ready    =   ready;
assign    AESL_axi_master_wt_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_fm;
reg [31:0] size_fm;
reg [31:0] size_fm_backup;
reg end_wt;
reg [31:0] size_wt;
reg [31:0] size_wt_backup;
reg end_input_feature_map;
reg [31:0] size_input_feature_map;
reg [31:0] size_input_feature_map_backup;
reg end_weights_3x3;
reg [31:0] size_weights_3x3;
reg [31:0] size_weights_3x3_backup;
reg end_bias_3x3;
reg [31:0] size_bias_3x3;
reg [31:0] size_bias_3x3_backup;
reg end_weights_1x1;
reg [31:0] size_weights_1x1;
reg [31:0] size_weights_1x1_backup;
reg end_bias_1x1;
reg [31:0] size_bias_1x1;
reg [31:0] size_bias_1x1_backup;
reg end_output_feature_map;
reg [31:0] size_output_feature_map;
reg [31:0] size_output_feature_map_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_fm;

initial begin : dump_tvout_runtime_sign_fm
    integer fp;
    dump_tvout_finish_fm = 0;
    fp = $fopen(`AUTOTB_TVOUT_fm_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_fm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_fm_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_fm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_fm = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule

// ==============================================================
// Generated by Vitis HLS v2023.2.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module main_func_main_func_Pipeline_VITIS_LOOP_22_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_wt_AWVALID,
        m_axi_wt_AWREADY,
        m_axi_wt_AWADDR,
        m_axi_wt_AWID,
        m_axi_wt_AWLEN,
        m_axi_wt_AWSIZE,
        m_axi_wt_AWBURST,
        m_axi_wt_AWLOCK,
        m_axi_wt_AWCACHE,
        m_axi_wt_AWPROT,
        m_axi_wt_AWQOS,
        m_axi_wt_AWREGION,
        m_axi_wt_AWUSER,
        m_axi_wt_WVALID,
        m_axi_wt_WREADY,
        m_axi_wt_WDATA,
        m_axi_wt_WSTRB,
        m_axi_wt_WLAST,
        m_axi_wt_WID,
        m_axi_wt_WUSER,
        m_axi_wt_ARVALID,
        m_axi_wt_ARREADY,
        m_axi_wt_ARADDR,
        m_axi_wt_ARID,
        m_axi_wt_ARLEN,
        m_axi_wt_ARSIZE,
        m_axi_wt_ARBURST,
        m_axi_wt_ARLOCK,
        m_axi_wt_ARCACHE,
        m_axi_wt_ARPROT,
        m_axi_wt_ARQOS,
        m_axi_wt_ARREGION,
        m_axi_wt_ARUSER,
        m_axi_wt_RVALID,
        m_axi_wt_RREADY,
        m_axi_wt_RDATA,
        m_axi_wt_RLAST,
        m_axi_wt_RID,
        m_axi_wt_RFIFONUM,
        m_axi_wt_RUSER,
        m_axi_wt_RRESP,
        m_axi_wt_BVALID,
        m_axi_wt_BREADY,
        m_axi_wt_BRESP,
        m_axi_wt_BID,
        m_axi_wt_BUSER,
        sext_ln22,
        bias_buf3x3_0,
        bias_buf3x3_0_ap_vld,
        bias_buf3x3_1,
        bias_buf3x3_1_ap_vld,
        bias_buf3x3_2,
        bias_buf3x3_2_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_wt_AWVALID;
input   m_axi_wt_AWREADY;
output  [63:0] m_axi_wt_AWADDR;
output  [0:0] m_axi_wt_AWID;
output  [31:0] m_axi_wt_AWLEN;
output  [2:0] m_axi_wt_AWSIZE;
output  [1:0] m_axi_wt_AWBURST;
output  [1:0] m_axi_wt_AWLOCK;
output  [3:0] m_axi_wt_AWCACHE;
output  [2:0] m_axi_wt_AWPROT;
output  [3:0] m_axi_wt_AWQOS;
output  [3:0] m_axi_wt_AWREGION;
output  [0:0] m_axi_wt_AWUSER;
output   m_axi_wt_WVALID;
input   m_axi_wt_WREADY;
output  [15:0] m_axi_wt_WDATA;
output  [1:0] m_axi_wt_WSTRB;
output   m_axi_wt_WLAST;
output  [0:0] m_axi_wt_WID;
output  [0:0] m_axi_wt_WUSER;
output   m_axi_wt_ARVALID;
input   m_axi_wt_ARREADY;
output  [63:0] m_axi_wt_ARADDR;
output  [0:0] m_axi_wt_ARID;
output  [31:0] m_axi_wt_ARLEN;
output  [2:0] m_axi_wt_ARSIZE;
output  [1:0] m_axi_wt_ARBURST;
output  [1:0] m_axi_wt_ARLOCK;
output  [3:0] m_axi_wt_ARCACHE;
output  [2:0] m_axi_wt_ARPROT;
output  [3:0] m_axi_wt_ARQOS;
output  [3:0] m_axi_wt_ARREGION;
output  [0:0] m_axi_wt_ARUSER;
input   m_axi_wt_RVALID;
output   m_axi_wt_RREADY;
input  [15:0] m_axi_wt_RDATA;
input   m_axi_wt_RLAST;
input  [0:0] m_axi_wt_RID;
input  [9:0] m_axi_wt_RFIFONUM;
input  [0:0] m_axi_wt_RUSER;
input  [1:0] m_axi_wt_RRESP;
input   m_axi_wt_BVALID;
output   m_axi_wt_BREADY;
input  [1:0] m_axi_wt_BRESP;
input  [0:0] m_axi_wt_BID;
input  [0:0] m_axi_wt_BUSER;
input  [62:0] sext_ln22;
output  [15:0] bias_buf3x3_0;
output   bias_buf3x3_0_ap_vld;
output  [15:0] bias_buf3x3_1;
output   bias_buf3x3_1_ap_vld;
output  [15:0] bias_buf3x3_2;
output   bias_buf3x3_2_ap_vld;

reg ap_idle;
reg m_axi_wt_RREADY;
reg bias_buf3x3_0_ap_vld;
reg bias_buf3x3_1_ap_vld;
reg bias_buf3x3_2_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln22_fu_77_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    wt_blk_n_R;
wire    ap_block_pp0_stage0;
reg   [1:0] f_reg_125;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] f_1_fu_50;
wire   [1:0] add_ln22_fu_83_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_f;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 f_1_fu_50 = 2'd0;
#0 ap_done_reg = 1'b0;
end

main_func_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln22_fu_77_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            f_1_fu_50 <= add_ln22_fu_83_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            f_1_fu_50 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        f_reg_125 <= ap_sig_allocacmp_f;
    end
end

always @ (*) begin
    if (((icmp_ln22_fu_77_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_f = 2'd0;
    end else begin
        ap_sig_allocacmp_f = f_1_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (f_reg_125 == 2'd0))) begin
        bias_buf3x3_0_ap_vld = 1'b1;
    end else begin
        bias_buf3x3_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (f_reg_125 == 2'd1))) begin
        bias_buf3x3_1_ap_vld = 1'b1;
    end else begin
        bias_buf3x3_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~(f_reg_125 == 2'd1) & ~(f_reg_125 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bias_buf3x3_2_ap_vld = 1'b1;
    end else begin
        bias_buf3x3_2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_wt_RREADY = 1'b1;
    end else begin
        m_axi_wt_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wt_blk_n_R = m_axi_wt_RVALID;
    end else begin
        wt_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln22_fu_83_p2 = (ap_sig_allocacmp_f + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (m_axi_wt_RVALID == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bias_buf3x3_0 = m_axi_wt_RDATA;

assign bias_buf3x3_1 = m_axi_wt_RDATA;

assign bias_buf3x3_2 = m_axi_wt_RDATA;

assign icmp_ln22_fu_77_p2 = ((ap_sig_allocacmp_f == 2'd3) ? 1'b1 : 1'b0);

assign m_axi_wt_ARADDR = 64'd0;

assign m_axi_wt_ARBURST = 2'd0;

assign m_axi_wt_ARCACHE = 4'd0;

assign m_axi_wt_ARID = 1'd0;

assign m_axi_wt_ARLEN = 32'd0;

assign m_axi_wt_ARLOCK = 2'd0;

assign m_axi_wt_ARPROT = 3'd0;

assign m_axi_wt_ARQOS = 4'd0;

assign m_axi_wt_ARREGION = 4'd0;

assign m_axi_wt_ARSIZE = 3'd0;

assign m_axi_wt_ARUSER = 1'd0;

assign m_axi_wt_ARVALID = 1'b0;

assign m_axi_wt_AWADDR = 64'd0;

assign m_axi_wt_AWBURST = 2'd0;

assign m_axi_wt_AWCACHE = 4'd0;

assign m_axi_wt_AWID = 1'd0;

assign m_axi_wt_AWLEN = 32'd0;

assign m_axi_wt_AWLOCK = 2'd0;

assign m_axi_wt_AWPROT = 3'd0;

assign m_axi_wt_AWQOS = 4'd0;

assign m_axi_wt_AWREGION = 4'd0;

assign m_axi_wt_AWSIZE = 3'd0;

assign m_axi_wt_AWUSER = 1'd0;

assign m_axi_wt_AWVALID = 1'b0;

assign m_axi_wt_BREADY = 1'b0;

assign m_axi_wt_WDATA = 16'd0;

assign m_axi_wt_WID = 1'd0;

assign m_axi_wt_WLAST = 1'b0;

assign m_axi_wt_WSTRB = 2'd0;

assign m_axi_wt_WUSER = 1'd0;

assign m_axi_wt_WVALID = 1'b0;

endmodule //main_func_main_func_Pipeline_VITIS_LOOP_22_4
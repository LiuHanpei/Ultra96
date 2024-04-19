// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2.1 (64-bit)
// Tool Version Limit: 2023.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_input_feature_map "../tv/cdatafile/c.main_func.autotvin_input_feature_map.dat"
`define TV_IN_weights_3x3 "../tv/cdatafile/c.main_func.autotvin_weights_3x3.dat"
`define TV_IN_bias_3x3 "../tv/cdatafile/c.main_func.autotvin_bias_3x3.dat"
`define TV_IN_weights_1x1 "../tv/cdatafile/c.main_func.autotvin_weights_1x1.dat"
`define TV_IN_bias_1x1 "../tv/cdatafile/c.main_func.autotvin_bias_1x1.dat"
`define TV_IN_output_feature_map "../tv/cdatafile/c.main_func.autotvin_output_feature_map.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter input_feature_map_DEPTH = 1;
reg [31 : 0] input_feature_map_OPERATE_DEPTH = 0;
parameter input_feature_map_c_bitwidth = 64;
parameter weights_3x3_DEPTH = 1;
reg [31 : 0] weights_3x3_OPERATE_DEPTH = 0;
parameter weights_3x3_c_bitwidth = 64;
parameter bias_3x3_DEPTH = 1;
reg [31 : 0] bias_3x3_OPERATE_DEPTH = 0;
parameter bias_3x3_c_bitwidth = 64;
parameter weights_1x1_DEPTH = 1;
reg [31 : 0] weights_1x1_OPERATE_DEPTH = 0;
parameter weights_1x1_c_bitwidth = 64;
parameter bias_1x1_DEPTH = 1;
reg [31 : 0] bias_1x1_OPERATE_DEPTH = 0;
parameter bias_1x1_c_bitwidth = 64;
parameter output_feature_map_DEPTH = 1;
reg [31 : 0] output_feature_map_OPERATE_DEPTH = 0;
parameter output_feature_map_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter main_func_continue_addr = 0;
parameter main_func_auto_start_addr = 0;
parameter input_feature_map_data_in_addr = 16;
parameter weights_3x3_data_in_addr = 28;
parameter bias_3x3_data_in_addr = 40;
parameter weights_1x1_data_in_addr = 52;
parameter bias_1x1_data_in_addr = 64;
parameter output_feature_map_data_in_addr = 76;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [input_feature_map_c_bitwidth - 1 : 0] mem_input_feature_map [input_feature_map_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_input_feature_map [ (input_feature_map_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * input_feature_map_DEPTH -1 : 0] = '{default : 'hz};
reg input_feature_map_write_data_finish;
reg [weights_3x3_c_bitwidth - 1 : 0] mem_weights_3x3 [weights_3x3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_weights_3x3 [ (weights_3x3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * weights_3x3_DEPTH -1 : 0] = '{default : 'hz};
reg weights_3x3_write_data_finish;
reg [bias_3x3_c_bitwidth - 1 : 0] mem_bias_3x3 [bias_3x3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_bias_3x3 [ (bias_3x3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * bias_3x3_DEPTH -1 : 0] = '{default : 'hz};
reg bias_3x3_write_data_finish;
reg [weights_1x1_c_bitwidth - 1 : 0] mem_weights_1x1 [weights_1x1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_weights_1x1 [ (weights_1x1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * weights_1x1_DEPTH -1 : 0] = '{default : 'hz};
reg weights_1x1_write_data_finish;
reg [bias_1x1_c_bitwidth - 1 : 0] mem_bias_1x1 [bias_1x1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_bias_1x1 [ (bias_1x1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * bias_1x1_DEPTH -1 : 0] = '{default : 'hz};
reg bias_1x1_write_data_finish;
reg [output_feature_map_c_bitwidth - 1 : 0] mem_output_feature_map [output_feature_map_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_output_feature_map [ (output_feature_map_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * output_feature_map_DEPTH -1 : 0] = '{default : 'hz};
reg output_feature_map_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
//write input_feature_map reg
reg [31 : 0] write_input_feature_map_count = 0;
reg [31 : 0] input_feature_map_diff_count = 0;
reg write_input_feature_map_run_flag = 0;
reg write_one_input_feature_map_data_done = 0;
//write weights_3x3 reg
reg [31 : 0] write_weights_3x3_count = 0;
reg [31 : 0] weights_3x3_diff_count = 0;
reg write_weights_3x3_run_flag = 0;
reg write_one_weights_3x3_data_done = 0;
//write bias_3x3 reg
reg [31 : 0] write_bias_3x3_count = 0;
reg [31 : 0] bias_3x3_diff_count = 0;
reg write_bias_3x3_run_flag = 0;
reg write_one_bias_3x3_data_done = 0;
//write weights_1x1 reg
reg [31 : 0] write_weights_1x1_count = 0;
reg [31 : 0] weights_1x1_diff_count = 0;
reg write_weights_1x1_run_flag = 0;
reg write_one_weights_1x1_data_done = 0;
//write bias_1x1 reg
reg [31 : 0] write_bias_1x1_count = 0;
reg [31 : 0] bias_1x1_diff_count = 0;
reg write_bias_1x1_run_flag = 0;
reg write_one_bias_1x1_data_done = 0;
//write output_feature_map reg
reg [31 : 0] write_output_feature_map_count = 0;
reg [31 : 0] output_feature_map_diff_count = 0;
reg write_output_feature_map_run_flag = 0;
reg write_one_output_feature_map_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & input_feature_map_write_data_finish & weights_3x3_write_data_finish & bias_3x3_write_data_finish & weights_1x1_write_data_finish & bias_1x1_write_data_finish & output_feature_map_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

function integer ceil_align_to_pow_of_two;
input integer a;
begin
    ceil_align_to_pow_of_two = $pow(2,$clog2(a));
end
endfunction

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_input_feature_map_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (input_feature_map_c_bitwidth, input_feature_map_DEPTH, input_feature_map_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_input_feature_map_run_flag <= 1; 
        end
        else if ((write_one_input_feature_map_data_done == 1 && write_input_feature_map_count == input_feature_map_diff_count - 1) || input_feature_map_diff_count == 0) begin
            write_input_feature_map_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_input_feature_map_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_input_feature_map_count = 0;
        end
        if (write_one_input_feature_map_data_done === 1) begin
            write_input_feature_map_count = write_input_feature_map_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_feature_map_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            input_feature_map_write_data_finish <= 0;
        end
        if (write_input_feature_map_run_flag == 1 && write_input_feature_map_count == input_feature_map_diff_count) begin
            input_feature_map_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_input_feature_map
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] input_feature_map_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_feature_map_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        input_feature_map_diff_count = 0;

        for (k = 0; k < input_feature_map_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (input_feature_map_c_bitwidth < 32) begin
                    input_feature_map_data_tmp_reg = mem_input_feature_map[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < input_feature_map_c_bitwidth) begin
                            input_feature_map_data_tmp_reg[j] = mem_input_feature_map[k][i*32 + j];
                        end
                        else begin
                            input_feature_map_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_input_feature_map[k * four_byte_num  + i]!==input_feature_map_data_tmp_reg) begin
                input_feature_map_diff_count = input_feature_map_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_input_feature_map
    integer write_input_feature_map_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_input_feature_map_count;
    reg [31 : 0] input_feature_map_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_feature_map_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        for (check_input_feature_map_count = 0; check_input_feature_map_count < input_feature_map_OPERATE_DEPTH; check_input_feature_map_count = check_input_feature_map_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_input_feature_map_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write input_feature_map data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (input_feature_map_c_bitwidth < 32) begin
                            input_feature_map_data_tmp_reg = mem_input_feature_map[check_input_feature_map_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < input_feature_map_c_bitwidth) begin
                                    input_feature_map_data_tmp_reg[j] = mem_input_feature_map[check_input_feature_map_count][i*32 + j];
                                end
                                else begin
                                    input_feature_map_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_input_feature_map[check_input_feature_map_count * four_byte_num  + i]!==input_feature_map_data_tmp_reg) begin
                        write (input_feature_map_data_in_addr + check_input_feature_map_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, input_feature_map_data_tmp_reg, write_input_feature_map_resp);
                        write_one_input_feature_map_data_done <= 1;
                        @(posedge clk);
                        write_one_input_feature_map_data_done <= 0;
                        image_mem_input_feature_map[check_input_feature_map_count * four_byte_num + i]=input_feature_map_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_1_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_weights_3x3_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (weights_3x3_c_bitwidth, weights_3x3_DEPTH, weights_3x3_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_weights_3x3_run_flag <= 1; 
        end
        else if ((write_one_weights_3x3_data_done == 1 && write_weights_3x3_count == weights_3x3_diff_count - 1) || weights_3x3_diff_count == 0) begin
            write_weights_3x3_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_weights_3x3_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_weights_3x3_count = 0;
        end
        if (write_one_weights_3x3_data_done === 1) begin
            write_weights_3x3_count = write_weights_3x3_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        weights_3x3_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            weights_3x3_write_data_finish <= 0;
        end
        if (write_weights_3x3_run_flag == 1 && write_weights_3x3_count == weights_3x3_diff_count) begin
            weights_3x3_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_weights_3x3
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] weights_3x3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weights_3x3_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        weights_3x3_diff_count = 0;

        for (k = 0; k < weights_3x3_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (weights_3x3_c_bitwidth < 32) begin
                    weights_3x3_data_tmp_reg = mem_weights_3x3[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < weights_3x3_c_bitwidth) begin
                            weights_3x3_data_tmp_reg[j] = mem_weights_3x3[k][i*32 + j];
                        end
                        else begin
                            weights_3x3_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_weights_3x3[k * four_byte_num  + i]!==weights_3x3_data_tmp_reg) begin
                weights_3x3_diff_count = weights_3x3_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_weights_3x3
    integer write_weights_3x3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_weights_3x3_count;
    reg [31 : 0] weights_3x3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weights_3x3_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_2_finish <= 0;

        for (check_weights_3x3_count = 0; check_weights_3x3_count < weights_3x3_OPERATE_DEPTH; check_weights_3x3_count = check_weights_3x3_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_weights_3x3_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write weights_3x3 data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (weights_3x3_c_bitwidth < 32) begin
                            weights_3x3_data_tmp_reg = mem_weights_3x3[check_weights_3x3_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < weights_3x3_c_bitwidth) begin
                                    weights_3x3_data_tmp_reg[j] = mem_weights_3x3[check_weights_3x3_count][i*32 + j];
                                end
                                else begin
                                    weights_3x3_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_weights_3x3[check_weights_3x3_count * four_byte_num  + i]!==weights_3x3_data_tmp_reg) begin
                        write (weights_3x3_data_in_addr + check_weights_3x3_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, weights_3x3_data_tmp_reg, write_weights_3x3_resp);
                        write_one_weights_3x3_data_done <= 1;
                        @(posedge clk);
                        write_one_weights_3x3_data_done <= 0;
                        image_mem_weights_3x3[check_weights_3x3_count * four_byte_num + i]=weights_3x3_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_2_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_bias_3x3_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (bias_3x3_c_bitwidth, bias_3x3_DEPTH, bias_3x3_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_bias_3x3_run_flag <= 1; 
        end
        else if ((write_one_bias_3x3_data_done == 1 && write_bias_3x3_count == bias_3x3_diff_count - 1) || bias_3x3_diff_count == 0) begin
            write_bias_3x3_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_bias_3x3_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_bias_3x3_count = 0;
        end
        if (write_one_bias_3x3_data_done === 1) begin
            write_bias_3x3_count = write_bias_3x3_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias_3x3_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            bias_3x3_write_data_finish <= 0;
        end
        if (write_bias_3x3_run_flag == 1 && write_bias_3x3_count == bias_3x3_diff_count) begin
            bias_3x3_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_bias_3x3
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] bias_3x3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_3x3_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        bias_3x3_diff_count = 0;

        for (k = 0; k < bias_3x3_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (bias_3x3_c_bitwidth < 32) begin
                    bias_3x3_data_tmp_reg = mem_bias_3x3[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < bias_3x3_c_bitwidth) begin
                            bias_3x3_data_tmp_reg[j] = mem_bias_3x3[k][i*32 + j];
                        end
                        else begin
                            bias_3x3_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_bias_3x3[k * four_byte_num  + i]!==bias_3x3_data_tmp_reg) begin
                bias_3x3_diff_count = bias_3x3_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_bias_3x3
    integer write_bias_3x3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_bias_3x3_count;
    reg [31 : 0] bias_3x3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_3x3_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_3_finish <= 0;

        for (check_bias_3x3_count = 0; check_bias_3x3_count < bias_3x3_OPERATE_DEPTH; check_bias_3x3_count = check_bias_3x3_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_bias_3x3_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write bias_3x3 data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (bias_3x3_c_bitwidth < 32) begin
                            bias_3x3_data_tmp_reg = mem_bias_3x3[check_bias_3x3_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < bias_3x3_c_bitwidth) begin
                                    bias_3x3_data_tmp_reg[j] = mem_bias_3x3[check_bias_3x3_count][i*32 + j];
                                end
                                else begin
                                    bias_3x3_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_bias_3x3[check_bias_3x3_count * four_byte_num  + i]!==bias_3x3_data_tmp_reg) begin
                        write (bias_3x3_data_in_addr + check_bias_3x3_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, bias_3x3_data_tmp_reg, write_bias_3x3_resp);
                        write_one_bias_3x3_data_done <= 1;
                        @(posedge clk);
                        write_one_bias_3x3_data_done <= 0;
                        image_mem_bias_3x3[check_bias_3x3_count * four_byte_num + i]=bias_3x3_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_3_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_weights_1x1_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (weights_1x1_c_bitwidth, weights_1x1_DEPTH, weights_1x1_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_weights_1x1_run_flag <= 1; 
        end
        else if ((write_one_weights_1x1_data_done == 1 && write_weights_1x1_count == weights_1x1_diff_count - 1) || weights_1x1_diff_count == 0) begin
            write_weights_1x1_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_weights_1x1_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_weights_1x1_count = 0;
        end
        if (write_one_weights_1x1_data_done === 1) begin
            write_weights_1x1_count = write_weights_1x1_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        weights_1x1_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            weights_1x1_write_data_finish <= 0;
        end
        if (write_weights_1x1_run_flag == 1 && write_weights_1x1_count == weights_1x1_diff_count) begin
            weights_1x1_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_weights_1x1
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] weights_1x1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weights_1x1_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        weights_1x1_diff_count = 0;

        for (k = 0; k < weights_1x1_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (weights_1x1_c_bitwidth < 32) begin
                    weights_1x1_data_tmp_reg = mem_weights_1x1[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < weights_1x1_c_bitwidth) begin
                            weights_1x1_data_tmp_reg[j] = mem_weights_1x1[k][i*32 + j];
                        end
                        else begin
                            weights_1x1_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_weights_1x1[k * four_byte_num  + i]!==weights_1x1_data_tmp_reg) begin
                weights_1x1_diff_count = weights_1x1_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_weights_1x1
    integer write_weights_1x1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_weights_1x1_count;
    reg [31 : 0] weights_1x1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = weights_1x1_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_4_finish <= 0;

        for (check_weights_1x1_count = 0; check_weights_1x1_count < weights_1x1_OPERATE_DEPTH; check_weights_1x1_count = check_weights_1x1_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_weights_1x1_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write weights_1x1 data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (weights_1x1_c_bitwidth < 32) begin
                            weights_1x1_data_tmp_reg = mem_weights_1x1[check_weights_1x1_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < weights_1x1_c_bitwidth) begin
                                    weights_1x1_data_tmp_reg[j] = mem_weights_1x1[check_weights_1x1_count][i*32 + j];
                                end
                                else begin
                                    weights_1x1_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_weights_1x1[check_weights_1x1_count * four_byte_num  + i]!==weights_1x1_data_tmp_reg) begin
                        write (weights_1x1_data_in_addr + check_weights_1x1_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, weights_1x1_data_tmp_reg, write_weights_1x1_resp);
                        write_one_weights_1x1_data_done <= 1;
                        @(posedge clk);
                        write_one_weights_1x1_data_done <= 0;
                        image_mem_weights_1x1[check_weights_1x1_count * four_byte_num + i]=weights_1x1_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_4_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_bias_1x1_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (bias_1x1_c_bitwidth, bias_1x1_DEPTH, bias_1x1_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_bias_1x1_run_flag <= 1; 
        end
        else if ((write_one_bias_1x1_data_done == 1 && write_bias_1x1_count == bias_1x1_diff_count - 1) || bias_1x1_diff_count == 0) begin
            write_bias_1x1_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_bias_1x1_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_bias_1x1_count = 0;
        end
        if (write_one_bias_1x1_data_done === 1) begin
            write_bias_1x1_count = write_bias_1x1_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        bias_1x1_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            bias_1x1_write_data_finish <= 0;
        end
        if (write_bias_1x1_run_flag == 1 && write_bias_1x1_count == bias_1x1_diff_count) begin
            bias_1x1_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_bias_1x1
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] bias_1x1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_1x1_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        bias_1x1_diff_count = 0;

        for (k = 0; k < bias_1x1_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (bias_1x1_c_bitwidth < 32) begin
                    bias_1x1_data_tmp_reg = mem_bias_1x1[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < bias_1x1_c_bitwidth) begin
                            bias_1x1_data_tmp_reg[j] = mem_bias_1x1[k][i*32 + j];
                        end
                        else begin
                            bias_1x1_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_bias_1x1[k * four_byte_num  + i]!==bias_1x1_data_tmp_reg) begin
                bias_1x1_diff_count = bias_1x1_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_bias_1x1
    integer write_bias_1x1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_bias_1x1_count;
    reg [31 : 0] bias_1x1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = bias_1x1_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_5_finish <= 0;

        for (check_bias_1x1_count = 0; check_bias_1x1_count < bias_1x1_OPERATE_DEPTH; check_bias_1x1_count = check_bias_1x1_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_bias_1x1_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write bias_1x1 data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (bias_1x1_c_bitwidth < 32) begin
                            bias_1x1_data_tmp_reg = mem_bias_1x1[check_bias_1x1_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < bias_1x1_c_bitwidth) begin
                                    bias_1x1_data_tmp_reg[j] = mem_bias_1x1[check_bias_1x1_count][i*32 + j];
                                end
                                else begin
                                    bias_1x1_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_bias_1x1[check_bias_1x1_count * four_byte_num  + i]!==bias_1x1_data_tmp_reg) begin
                        write (bias_1x1_data_in_addr + check_bias_1x1_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, bias_1x1_data_tmp_reg, write_bias_1x1_resp);
                        write_one_bias_1x1_data_done <= 1;
                        @(posedge clk);
                        write_one_bias_1x1_data_done <= 0;
                        image_mem_bias_1x1[check_bias_1x1_count * four_byte_num + i]=bias_1x1_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_5_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_output_feature_map_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (output_feature_map_c_bitwidth, output_feature_map_DEPTH, output_feature_map_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_output_feature_map_run_flag <= 1; 
        end
        else if ((write_one_output_feature_map_data_done == 1 && write_output_feature_map_count == output_feature_map_diff_count - 1) || output_feature_map_diff_count == 0) begin
            write_output_feature_map_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_output_feature_map_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_output_feature_map_count = 0;
        end
        if (write_one_output_feature_map_data_done === 1) begin
            write_output_feature_map_count = write_output_feature_map_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        output_feature_map_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            output_feature_map_write_data_finish <= 0;
        end
        if (write_output_feature_map_run_flag == 1 && write_output_feature_map_count == output_feature_map_diff_count) begin
            output_feature_map_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_output_feature_map
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] output_feature_map_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = output_feature_map_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        output_feature_map_diff_count = 0;

        for (k = 0; k < output_feature_map_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (output_feature_map_c_bitwidth < 32) begin
                    output_feature_map_data_tmp_reg = mem_output_feature_map[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < output_feature_map_c_bitwidth) begin
                            output_feature_map_data_tmp_reg[j] = mem_output_feature_map[k][i*32 + j];
                        end
                        else begin
                            output_feature_map_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_output_feature_map[k * four_byte_num  + i]!==output_feature_map_data_tmp_reg) begin
                output_feature_map_diff_count = output_feature_map_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_output_feature_map
    integer write_output_feature_map_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_output_feature_map_count;
    reg [31 : 0] output_feature_map_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = output_feature_map_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_6_finish <= 0;

        for (check_output_feature_map_count = 0; check_output_feature_map_count < output_feature_map_OPERATE_DEPTH; check_output_feature_map_count = check_output_feature_map_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_output_feature_map_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write output_feature_map data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (output_feature_map_c_bitwidth < 32) begin
                            output_feature_map_data_tmp_reg = mem_output_feature_map[check_output_feature_map_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < output_feature_map_c_bitwidth) begin
                                    output_feature_map_data_tmp_reg[j] = mem_output_feature_map[check_output_feature_map_count][i*32 + j];
                                end
                                else begin
                                    output_feature_map_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_output_feature_map[check_output_feature_map_count * four_byte_num  + i]!==output_feature_map_data_tmp_reg) begin
                        write (output_feature_map_data_in_addr + check_output_feature_map_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, output_feature_map_data_tmp_reg, write_output_feature_map_resp);
                        write_one_output_feature_map_data_done <= 1;
                        @(posedge clk);
                        write_one_output_feature_map_data_done <= 0;
                        image_mem_output_feature_map[check_output_feature_map_count * four_byte_num + i]=output_feature_map_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_6_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end


always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 7;
    while (1) begin
        process_7_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_7_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_input_feature_map_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [input_feature_map_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (input_feature_map_c_bitwidth , factor);
  fp = $fopen(`TV_IN_input_feature_map ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_input_feature_map); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < input_feature_map_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_input_feature_map [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_input_feature_map [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_input_feature_map [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_input_feature_map [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_input_feature_map [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_input_feature_map;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_weights_3x3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [weights_3x3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (weights_3x3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_weights_3x3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_weights_3x3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < weights_3x3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_weights_3x3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_weights_3x3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_weights_3x3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_weights_3x3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_weights_3x3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_weights_3x3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_bias_3x3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [bias_3x3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (bias_3x3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_bias_3x3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_bias_3x3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < bias_3x3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_bias_3x3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_bias_3x3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_bias_3x3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_bias_3x3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_bias_3x3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_bias_3x3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_weights_1x1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [weights_1x1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (weights_1x1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_weights_1x1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_weights_1x1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < weights_1x1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_weights_1x1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_weights_1x1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_weights_1x1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_weights_1x1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_weights_1x1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_weights_1x1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_bias_1x1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [bias_1x1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (bias_1x1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_bias_1x1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_bias_1x1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < bias_1x1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_bias_1x1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_bias_1x1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_bias_1x1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_bias_1x1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_bias_1x1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_bias_1x1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_output_feature_map_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [output_feature_map_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (output_feature_map_c_bitwidth , factor);
  fp = $fopen(`TV_IN_output_feature_map ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_output_feature_map); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < output_feature_map_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_output_feature_map [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_output_feature_map [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_output_feature_map [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_output_feature_map [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_output_feature_map [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_output_feature_map;
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
endmodule

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
    TRAN_control_idle_in,
    TRAN_control_ready_in,
    TRAN_control_done_in,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_A_IN "../tv/cdatafile/c.main_func.autotvin_A_IN.dat"
`define TV_IN_A_OUT "../tv/cdatafile/c.main_func.autotvin_A_OUT.dat"
parameter ADDR_WIDTH = 6;
parameter DATA_WIDTH = 32;
parameter A_IN_DEPTH = 1;
reg [31 : 0] A_IN_OPERATE_DEPTH = 0;
parameter A_IN_c_bitwidth = 64;
parameter A_OUT_DEPTH = 1;
reg [31 : 0] A_OUT_OPERATE_DEPTH = 0;
parameter A_OUT_c_bitwidth = 64;
parameter A_IN_data_in_addr = 16;
parameter A_OUT_data_in_addr = 28;

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
input     TRAN_control_done_in;
input     TRAN_control_ready_in;
input     TRAN_control_idle_in;
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
reg [A_IN_c_bitwidth - 1 : 0] mem_A_IN [A_IN_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_IN [ (A_IN_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_IN_DEPTH -1 : 0] = '{default : 'hz};
reg A_IN_write_data_finish;
reg [A_OUT_c_bitwidth - 1 : 0] mem_A_OUT [A_OUT_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_OUT [ (A_OUT_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_OUT_DEPTH -1 : 0] = '{default : 'hz};
reg A_OUT_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
//write A_IN reg
reg [31 : 0] write_A_IN_count = 0;
reg [31 : 0] A_IN_diff_count = 0;
reg write_A_IN_run_flag = 0;
reg write_one_A_IN_data_done = 0;
//write A_OUT reg
reg [31 : 0] write_A_OUT_count = 0;
reg [31 : 0] A_OUT_diff_count = 0;
reg write_A_OUT_run_flag = 0;
reg write_one_A_OUT_data_done = 0;

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
assign TRAN_control_write_data_finish = 1 & A_IN_write_data_finish & A_OUT_write_data_finish;
always @(TRAN_control_done_in) 
begin
    AESL_done_index_reg <= TRAN_control_done_in;
end
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
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

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_A_IN_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (A_IN_c_bitwidth, A_IN_DEPTH, A_IN_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_A_IN_run_flag <= 1; 
        end
        else if ((write_one_A_IN_data_done == 1 && write_A_IN_count == A_IN_diff_count - 1) || A_IN_diff_count == 0) begin
            write_A_IN_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_A_IN_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_A_IN_count = 0;
        end
        if (write_one_A_IN_data_done === 1) begin
            write_A_IN_count = write_A_IN_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_IN_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_IN_write_data_finish <= 0;
        end
        if (write_A_IN_run_flag == 1 && write_A_IN_count == A_IN_diff_count) begin
            A_IN_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_A_IN
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] A_IN_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_IN_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        A_IN_diff_count = 0;

        for (k = 0; k < A_IN_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (A_IN_c_bitwidth < 32) begin
                    A_IN_data_tmp_reg = mem_A_IN[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < A_IN_c_bitwidth) begin
                            A_IN_data_tmp_reg[j] = mem_A_IN[k][i*32 + j];
                        end
                        else begin
                            A_IN_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_A_IN[k * four_byte_num  + i]!==A_IN_data_tmp_reg) begin
                A_IN_diff_count = A_IN_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_A_IN
    integer write_A_IN_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_A_IN_count;
    reg [31 : 0] A_IN_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_IN_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_0_finish <= 0;

        for (check_A_IN_count = 0; check_A_IN_count < A_IN_OPERATE_DEPTH; check_A_IN_count = check_A_IN_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_A_IN_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write A_IN data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (A_IN_c_bitwidth < 32) begin
                            A_IN_data_tmp_reg = mem_A_IN[check_A_IN_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < A_IN_c_bitwidth) begin
                                    A_IN_data_tmp_reg[j] = mem_A_IN[check_A_IN_count][i*32 + j];
                                end
                                else begin
                                    A_IN_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_A_IN[check_A_IN_count * four_byte_num  + i]!==A_IN_data_tmp_reg) begin
                        write (A_IN_data_in_addr + check_A_IN_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, A_IN_data_tmp_reg, write_A_IN_resp);
                        write_one_A_IN_data_done <= 1;
                        @(posedge clk);
                        write_one_A_IN_data_done <= 0;
                        image_mem_A_IN[check_A_IN_count * four_byte_num + i]=A_IN_data_tmp_reg;
                        end
                    end
                    process_busy = 0;
                end   
                process_0_finish <= 1;
            end
        end

        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_A_OUT_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (A_OUT_c_bitwidth, A_OUT_DEPTH, A_OUT_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_A_OUT_run_flag <= 1; 
        end
        else if ((write_one_A_OUT_data_done == 1 && write_A_OUT_count == A_OUT_diff_count - 1) || A_OUT_diff_count == 0) begin
            write_A_OUT_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_A_OUT_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_A_OUT_count = 0;
        end
        if (write_one_A_OUT_data_done === 1) begin
            write_A_OUT_count = write_A_OUT_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_OUT_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_OUT_write_data_finish <= 0;
        end
        if (write_A_OUT_run_flag == 1 && write_A_OUT_count == A_OUT_diff_count) begin
            A_OUT_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_A_OUT
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] A_OUT_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_OUT_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        A_OUT_diff_count = 0;

        for (k = 0; k < A_OUT_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (A_OUT_c_bitwidth < 32) begin
                    A_OUT_data_tmp_reg = mem_A_OUT[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < A_OUT_c_bitwidth) begin
                            A_OUT_data_tmp_reg[j] = mem_A_OUT[k][i*32 + j];
                        end
                        else begin
                            A_OUT_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_A_OUT[k * four_byte_num  + i]!==A_OUT_data_tmp_reg) begin
                A_OUT_diff_count = A_OUT_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_A_OUT
    integer write_A_OUT_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_A_OUT_count;
    reg [31 : 0] A_OUT_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_OUT_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        for (check_A_OUT_count = 0; check_A_OUT_count < A_OUT_OPERATE_DEPTH; check_A_OUT_count = check_A_OUT_count + 1) begin
            if (ongoing_process_number === process_num && process_busy === 0 ) begin
                get_ack = 1;
                if (write_A_OUT_run_flag === 1 && get_ack === 1) begin
                    process_busy = 1;
                    //write A_OUT data 
                    for (i = 0; i < four_byte_num; i = i + 1) begin
                        if (A_OUT_c_bitwidth < 32) begin
                            A_OUT_data_tmp_reg = mem_A_OUT[check_A_OUT_count];
                        end
                        else begin
                            for (j = 0; j < 32; j = j + 1) begin
                                if (i*32 + j < A_OUT_c_bitwidth) begin
                                    A_OUT_data_tmp_reg[j] = mem_A_OUT[check_A_OUT_count][i*32 + j];
                                end
                                else begin
                                    A_OUT_data_tmp_reg[j] = 0;
                                end
                            end
                        end
                        if(image_mem_A_OUT[check_A_OUT_count * four_byte_num  + i]!==A_OUT_data_tmp_reg) begin
                        write (A_OUT_data_in_addr + check_A_OUT_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, A_OUT_data_tmp_reg, write_A_OUT_resp);
                        write_one_A_OUT_data_done <= 1;
                        @(posedge clk);
                        write_one_A_OUT_data_done <= 0;
                        image_mem_A_OUT[check_A_OUT_count * four_byte_num + i]=A_OUT_data_tmp_reg;
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
initial begin : read_A_IN_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [A_IN_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_IN_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_IN ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_IN); 
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
      for(i = 0; i < A_IN_DEPTH; i = i + 1) begin 
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
                  mem_A_IN [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_IN [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_IN [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_IN [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_IN [i/factor] = tmp_cache_mem;
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
 
task write_binary_A_IN;
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
initial begin : read_A_OUT_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [A_OUT_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_OUT_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_OUT ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_OUT); 
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
      for(i = 0; i < A_OUT_DEPTH; i = i + 1) begin 
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
                  mem_A_OUT [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_OUT [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_OUT [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_OUT [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_OUT [i/factor] = tmp_cache_mem;
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
 
task write_binary_A_OUT;
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

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module clock (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        timeInCycles_V_dout,
        timeInCycles_V_empty_n,
        timeInCycles_V_read,
        startSignalFifo_V_dout,
        startSignalFifo_V_empty_n,
        startSignalFifo_V_read,
        stopSignalFifo_V_din,
        stopSignalFifo_V_full_n,
        stopSignalFifo_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] timeInCycles_V_dout;
input   timeInCycles_V_empty_n;
output   timeInCycles_V_read;
input  [0:0] startSignalFifo_V_dout;
input   startSignalFifo_V_empty_n;
output   startSignalFifo_V_read;
output  [0:0] stopSignalFifo_V_din;
input   stopSignalFifo_V_full_n;
output   stopSignalFifo_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg timeInCycles_V_read;
reg startSignalFifo_V_read;
reg stopSignalFifo_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] sw_state_load_load_fu_72_p1;
wire   [0:0] tmp_nbreadreq_fu_50_p3;
reg    ap_predicate_op9_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] sw_state_load_reg_120;
reg   [0:0] icmp_ln879_reg_128;
reg    ap_predicate_op26_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] sw_state;
reg   [47:0] time_V;
reg    timeInCycles_V_blk_n;
wire    ap_block_pp0_stage0;
reg    startSignalFifo_V_blk_n;
reg    stopSignalFifo_V_blk_n;
wire   [0:0] icmp_ln879_fu_108_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [47:0] add_ln700_fu_92_p2;
reg    ap_block_pp0_stage0_01001;
wire   [63:0] zext_ln879_fu_104_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_81;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 sw_state = 1'd0;
#0 time_V = 48'd0;
end

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
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_81)) begin
        if (((icmp_ln879_fu_108_p2 == 1'd1) & (sw_state_load_load_fu_72_p1 == 1'd1))) begin
            sw_state <= 1'd0;
        end else if (((tmp_nbreadreq_fu_50_p3 == 1'd1) & (sw_state == 1'd0))) begin
            sw_state <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_81)) begin
        if ((sw_state_load_load_fu_72_p1 == 1'd1)) begin
            time_V <= add_ln700_fu_92_p2;
        end else if (((tmp_nbreadreq_fu_50_p3 == 1'd1) & (sw_state == 1'd0))) begin
            time_V <= 48'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (sw_state_load_load_fu_72_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln879_reg_128 <= icmp_ln879_fu_108_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sw_state_load_reg_120 <= sw_state;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        startSignalFifo_V_blk_n = startSignalFifo_V_empty_n;
    end else begin
        startSignalFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        startSignalFifo_V_read = 1'b1;
    end else begin
        startSignalFifo_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op26_write_state2 == 1'b1))) begin
        stopSignalFifo_V_blk_n = stopSignalFifo_V_full_n;
    end else begin
        stopSignalFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op26_write_state2 == 1'b1))) begin
        stopSignalFifo_V_write = 1'b1;
    end else begin
        stopSignalFifo_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        timeInCycles_V_blk_n = timeInCycles_V_empty_n;
    end else begin
        timeInCycles_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        timeInCycles_V_read = 1'b1;
    end else begin
        timeInCycles_V_read = 1'b0;
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

assign add_ln700_fu_92_p2 = (time_V + 48'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((stopSignalFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op26_write_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (timeInCycles_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((startSignalFifo_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((stopSignalFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op26_write_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (timeInCycles_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((startSignalFifo_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((stopSignalFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op26_write_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (timeInCycles_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((startSignalFifo_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (timeInCycles_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((startSignalFifo_V_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((stopSignalFifo_V_full_n == 1'b0) & (ap_predicate_op26_write_state2 == 1'b1));
end

always @ (*) begin
    ap_condition_81 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op26_write_state2 = ((icmp_ln879_reg_128 == 1'd1) & (sw_state_load_reg_120 == 1'd1));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((tmp_nbreadreq_fu_50_p3 == 1'd1) & (sw_state == 1'd0));
end

assign icmp_ln879_fu_108_p2 = ((zext_ln879_fu_104_p1 == timeInCycles_V_dout) ? 1'b1 : 1'b0);

assign stopSignalFifo_V_din = 1'd1;

assign sw_state_load_load_fu_72_p1 = sw_state;

assign tmp_nbreadreq_fu_50_p3 = startSignalFifo_V_empty_n;

assign zext_ln879_fu_104_p1 = add_ln700_fu_92_p2;

endmodule //clock
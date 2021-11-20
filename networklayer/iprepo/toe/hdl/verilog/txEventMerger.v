// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module txEventMerger (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txApp2eventEng_merge_1_dout,
        txApp2eventEng_merge_1_empty_n,
        txApp2eventEng_merge_1_read,
        txAppStream2event_me_1_dout,
        txAppStream2event_me_1_empty_n,
        txAppStream2event_me_1_read,
        txApp2eventEng_setEv_1_din,
        txApp2eventEng_setEv_1_full_n,
        txApp2eventEng_setEv_1_write,
        txApp_txEventCache_V_din,
        txApp_txEventCache_V_full_n,
        txApp_txEventCache_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [55:0] txApp2eventEng_merge_1_dout;
input   txApp2eventEng_merge_1_empty_n;
output   txApp2eventEng_merge_1_read;
input  [55:0] txAppStream2event_me_1_dout;
input   txAppStream2event_me_1_empty_n;
output   txAppStream2event_me_1_read;
output  [55:0] txApp2eventEng_setEv_1_din;
input   txApp2eventEng_setEv_1_full_n;
output   txApp2eventEng_setEv_1_write;
output  [55:0] txApp_txEventCache_V_din;
input   txApp_txEventCache_V_full_n;
output   txApp_txEventCache_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txApp2eventEng_merge_1_read;
reg txAppStream2event_me_1_read;
reg[55:0] txApp2eventEng_setEv_1_din;
reg txApp2eventEng_setEv_1_write;
reg txApp_txEventCache_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_42_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_112;
wire   [0:0] tmp_21_nbreadreq_fu_56_p3;
reg    ap_predicate_op9_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_reg_112_pp0_iter1_reg;
reg   [0:0] tmp_21_reg_121;
reg    ap_predicate_op18_write_state3;
reg   [0:0] icmp_ln54_reg_131;
reg    ap_predicate_op21_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg    txApp2eventEng_merge_1_blk_n;
wire    ap_block_pp0_stage0;
reg    txApp2eventEng_setEv_1_blk_n;
reg    txAppStream2event_me_1_blk_n;
reg    txApp_txEventCache_V_blk_n;
reg   [55:0] tmp114_reg_116;
reg   [55:0] tmp114_reg_116_pp0_iter1_reg;
reg   [55:0] tmp_2_reg_125;
wire   [0:0] icmp_ln54_fu_88_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [2:0] tmp_type_fu_84_p1;
wire   [52:0] tmp_19_i_fu_94_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_112 == 1'd0) & (tmp_21_nbreadreq_fu_56_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln54_reg_131 <= icmp_ln54_fu_88_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_42_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp114_reg_116 <= txApp2eventEng_merge_1_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp114_reg_116_pp0_iter1_reg <= tmp114_reg_116;
        tmp_reg_112 <= tmp_nbreadreq_fu_42_p3;
        tmp_reg_112_pp0_iter1_reg <= tmp_reg_112;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_112 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_21_reg_121 <= tmp_21_nbreadreq_fu_56_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_2_reg_125 <= txAppStream2event_me_1_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_42_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        txApp2eventEng_merge_1_blk_n = txApp2eventEng_merge_1_empty_n;
    end else begin
        txApp2eventEng_merge_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_42_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        txApp2eventEng_merge_1_read = 1'b1;
    end else begin
        txApp2eventEng_merge_1_read = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_reg_112_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op18_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        txApp2eventEng_setEv_1_blk_n = txApp2eventEng_setEv_1_full_n;
    end else begin
        txApp2eventEng_setEv_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        if ((tmp_reg_112_pp0_iter1_reg == 1'd1)) begin
            txApp2eventEng_setEv_1_din = tmp114_reg_116_pp0_iter1_reg;
        end else if ((ap_predicate_op18_write_state3 == 1'b1)) begin
            txApp2eventEng_setEv_1_din = tmp_2_reg_125;
        end else begin
            txApp2eventEng_setEv_1_din = 'bx;
        end
    end else begin
        txApp2eventEng_setEv_1_din = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_reg_112_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op18_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        txApp2eventEng_setEv_1_write = 1'b1;
    end else begin
        txApp2eventEng_setEv_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        txAppStream2event_me_1_blk_n = txAppStream2event_me_1_empty_n;
    end else begin
        txAppStream2event_me_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        txAppStream2event_me_1_read = 1'b1;
    end else begin
        txAppStream2event_me_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op21_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        txApp_txEventCache_V_blk_n = txApp_txEventCache_V_full_n;
    end else begin
        txApp_txEventCache_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op21_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        txApp_txEventCache_V_write = 1'b1;
    end else begin
        txApp_txEventCache_V_write = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((txApp_txEventCache_V_full_n == 1'b0) & (ap_predicate_op21_write_state3 == 1'b1)) | ((tmp_reg_112_pp0_iter1_reg == 1'd1) & (txApp2eventEng_setEv_1_full_n == 1'b0)) | ((txApp2eventEng_setEv_1_full_n == 1'b0) & (ap_predicate_op18_write_state3 == 1'b1)))) | ((txAppStream2event_me_1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op9_read_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (txApp2eventEng_merge_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((txApp_txEventCache_V_full_n == 1'b0) & (ap_predicate_op21_write_state3 == 1'b1)) | ((tmp_reg_112_pp0_iter1_reg == 1'd1) & (txApp2eventEng_setEv_1_full_n == 1'b0)) | ((txApp2eventEng_setEv_1_full_n == 1'b0) & (ap_predicate_op18_write_state3 == 1'b1)))) | ((txAppStream2event_me_1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op9_read_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (txApp2eventEng_merge_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((txApp_txEventCache_V_full_n == 1'b0) & (ap_predicate_op21_write_state3 == 1'b1)) | ((tmp_reg_112_pp0_iter1_reg == 1'd1) & (txApp2eventEng_setEv_1_full_n == 1'b0)) | ((txApp2eventEng_setEv_1_full_n == 1'b0) & (ap_predicate_op18_write_state3 == 1'b1)))) | ((txAppStream2event_me_1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_op9_read_state2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (txApp2eventEng_merge_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_42_p3 == 1'd1) & (txApp2eventEng_merge_1_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((txAppStream2event_me_1_empty_n == 1'b0) & (ap_predicate_op9_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((txApp_txEventCache_V_full_n == 1'b0) & (ap_predicate_op21_write_state3 == 1'b1)) | ((tmp_reg_112_pp0_iter1_reg == 1'd1) & (txApp2eventEng_setEv_1_full_n == 1'b0)) | ((txApp2eventEng_setEv_1_full_n == 1'b0) & (ap_predicate_op18_write_state3 == 1'b1)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op18_write_state3 = ((tmp_reg_112_pp0_iter1_reg == 1'd0) & (tmp_21_reg_121 == 1'd1));
end

always @ (*) begin
    ap_predicate_op21_write_state3 = ((tmp_reg_112_pp0_iter1_reg == 1'd0) & (icmp_ln54_reg_131 == 1'd1) & (tmp_21_reg_121 == 1'd1));
end

always @ (*) begin
    ap_predicate_op9_read_state2 = ((tmp_reg_112 == 1'd0) & (tmp_21_nbreadreq_fu_56_p3 == 1'd1));
end

assign icmp_ln54_fu_88_p2 = ((tmp_type_fu_84_p1 == 3'd0) ? 1'b1 : 1'b0);

assign tmp_19_i_fu_94_p4 = {{tmp_2_reg_125[55:3]}};

assign tmp_21_nbreadreq_fu_56_p3 = txAppStream2event_me_1_empty_n;

assign tmp_nbreadreq_fu_42_p3 = txApp2eventEng_merge_1_empty_n;

assign tmp_type_fu_84_p1 = txAppStream2event_me_1_dout[2:0];

assign txApp_txEventCache_V_din = {{tmp_19_i_fu_94_p4}, {3'd0}};

endmodule //txEventMerger

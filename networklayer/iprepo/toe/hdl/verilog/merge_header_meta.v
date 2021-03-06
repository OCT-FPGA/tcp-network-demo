// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module merge_header_meta (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_headerMetaFifo_20_dout,
        rxEng_headerMetaFifo_20_empty_n,
        rxEng_headerMetaFifo_20_read,
        rxEng_headerMetaFifo_12_dout,
        rxEng_headerMetaFifo_12_empty_n,
        rxEng_headerMetaFifo_12_read,
        rxEng_headerMetaFifo_23_dout,
        rxEng_headerMetaFifo_23_empty_n,
        rxEng_headerMetaFifo_23_read,
        rxEng_headerMetaFifo_22_dout,
        rxEng_headerMetaFifo_22_empty_n,
        rxEng_headerMetaFifo_22_read,
        rxEng_headerMetaFifo_18_dout,
        rxEng_headerMetaFifo_18_empty_n,
        rxEng_headerMetaFifo_18_read,
        rxEng_headerMetaFifo_10_dout,
        rxEng_headerMetaFifo_10_empty_n,
        rxEng_headerMetaFifo_10_read,
        rxEng_headerMetaFifo_19_dout,
        rxEng_headerMetaFifo_19_empty_n,
        rxEng_headerMetaFifo_19_read,
        rxEng_headerMetaFifo_21_dout,
        rxEng_headerMetaFifo_21_empty_n,
        rxEng_headerMetaFifo_21_read,
        rxEng_headerMetaFifo_16_dout,
        rxEng_headerMetaFifo_16_empty_n,
        rxEng_headerMetaFifo_16_read,
        rxEng_headerMetaFifo_14_dout,
        rxEng_headerMetaFifo_14_empty_n,
        rxEng_headerMetaFifo_14_read,
        rxEng_winScaleFifo_V_dout,
        rxEng_winScaleFifo_V_empty_n,
        rxEng_winScaleFifo_V_read,
        rxEng_metaDataFifo_V_din,
        rxEng_metaDataFifo_V_full_n,
        rxEng_metaDataFifo_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rxEng_headerMetaFifo_20_dout;
input   rxEng_headerMetaFifo_20_empty_n;
output   rxEng_headerMetaFifo_20_read;
input  [31:0] rxEng_headerMetaFifo_12_dout;
input   rxEng_headerMetaFifo_12_empty_n;
output   rxEng_headerMetaFifo_12_read;
input  [15:0] rxEng_headerMetaFifo_23_dout;
input   rxEng_headerMetaFifo_23_empty_n;
output   rxEng_headerMetaFifo_23_read;
input  [3:0] rxEng_headerMetaFifo_22_dout;
input   rxEng_headerMetaFifo_22_empty_n;
output   rxEng_headerMetaFifo_22_read;
input  [15:0] rxEng_headerMetaFifo_18_dout;
input   rxEng_headerMetaFifo_18_empty_n;
output   rxEng_headerMetaFifo_18_read;
input  [0:0] rxEng_headerMetaFifo_10_dout;
input   rxEng_headerMetaFifo_10_empty_n;
output   rxEng_headerMetaFifo_10_read;
input  [0:0] rxEng_headerMetaFifo_19_dout;
input   rxEng_headerMetaFifo_19_empty_n;
output   rxEng_headerMetaFifo_19_read;
input  [0:0] rxEng_headerMetaFifo_21_dout;
input   rxEng_headerMetaFifo_21_empty_n;
output   rxEng_headerMetaFifo_21_read;
input  [0:0] rxEng_headerMetaFifo_16_dout;
input   rxEng_headerMetaFifo_16_empty_n;
output   rxEng_headerMetaFifo_16_read;
input  [3:0] rxEng_headerMetaFifo_14_dout;
input   rxEng_headerMetaFifo_14_empty_n;
output   rxEng_headerMetaFifo_14_read;
input  [3:0] rxEng_winScaleFifo_V_dout;
input   rxEng_winScaleFifo_V_empty_n;
output   rxEng_winScaleFifo_V_read;
output  [107:0] rxEng_metaDataFifo_V_din;
input   rxEng_metaDataFifo_V_full_n;
output   rxEng_metaDataFifo_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_headerMetaFifo_20_read;
reg rxEng_headerMetaFifo_12_read;
reg rxEng_headerMetaFifo_23_read;
reg rxEng_headerMetaFifo_22_read;
reg rxEng_headerMetaFifo_18_read;
reg rxEng_headerMetaFifo_10_read;
reg rxEng_headerMetaFifo_19_read;
reg rxEng_headerMetaFifo_21_read;
reg rxEng_headerMetaFifo_16_read;
reg rxEng_headerMetaFifo_14_read;
reg rxEng_winScaleFifo_V_read;
reg[107:0] rxEng_metaDataFifo_V_din;
reg rxEng_metaDataFifo_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    io_acc_block_signal_op7;
wire   [0:0] tmp_421_nbreadreq_fu_82_p12;
reg    ap_predicate_op7_read_state1;
wire   [0:0] tmp_nbreadreq_fu_132_p3;
reg    ap_predicate_op32_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] state_V_load_reg_347;
reg   [0:0] tmp_421_reg_351;
reg   [0:0] and_ln719_reg_400;
reg    ap_predicate_op48_write_state2;
reg   [0:0] tmp_reg_404;
reg    ap_predicate_op63_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] state_V;
reg   [31:0] meta_seqNumb_V;
reg   [31:0] meta_ackNumb_V;
reg   [15:0] meta_winSize_V;
reg   [15:0] meta_length_V;
reg   [0:0] meta_ack_V;
reg   [0:0] meta_rst_V;
reg   [0:0] meta_syn_V;
reg   [0:0] meta_fin_V;
reg   [3:0] meta_dataOffset_V;
reg    rxEng_headerMetaFifo_20_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_headerMetaFifo_12_blk_n;
reg    rxEng_headerMetaFifo_23_blk_n;
reg    rxEng_headerMetaFifo_22_blk_n;
reg    rxEng_headerMetaFifo_18_blk_n;
reg    rxEng_headerMetaFifo_10_blk_n;
reg    rxEng_headerMetaFifo_19_blk_n;
reg    rxEng_headerMetaFifo_21_blk_n;
reg    rxEng_headerMetaFifo_16_blk_n;
reg    rxEng_headerMetaFifo_14_blk_n;
reg    rxEng_metaDataFifo_V_blk_n;
reg    rxEng_winScaleFifo_V_blk_n;
reg   [31:0] tmp_seqNumb_V_7_reg_355;
reg   [31:0] tmp_ackNumb_V_7_reg_360;
reg   [15:0] tmp_winSize_V_1_reg_365;
reg   [15:0] tmp_length_V_6_reg_370;
reg   [0:0] tmp_ack_V_1_reg_375;
reg   [0:0] tmp_rst_V_1_reg_380;
reg   [0:0] tmp_syn_V_1_reg_385;
reg   [0:0] tmp_fin_V_1_reg_390;
reg   [3:0] tmp_dataOffset_V_2_reg_395;
wire   [0:0] and_ln719_fu_253_p2;
reg   [3:0] tmp_V_reg_408;
reg    ap_block_pp0_stage0_subdone;
wire   [107:0] tmp113_fu_271_p11;
reg    ap_block_pp0_stage0_01001;
wire   [107:0] tmp_1_fu_323_p11;
wire   [0:0] icmp_ln895_fu_247_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_249;
reg    ap_condition_207;
reg    ap_condition_137;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 state_V = 1'd0;
#0 meta_seqNumb_V = 32'd0;
#0 meta_ackNumb_V = 32'd0;
#0 meta_winSize_V = 16'd0;
#0 meta_length_V = 16'd0;
#0 meta_ack_V = 1'd0;
#0 meta_rst_V = 1'd0;
#0 meta_syn_V = 1'd0;
#0 meta_fin_V = 1'd0;
#0 meta_dataOffset_V = 4'd0;
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
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_137)) begin
        if (((tmp_nbreadreq_fu_132_p3 == 1'd1) & (state_V == 1'd1))) begin
            state_V <= 1'd0;
        end else if ((1'b1 == ap_condition_207)) begin
            state_V <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_421_nbreadreq_fu_82_p12 == 1'd1) & (state_V == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln719_reg_400 <= and_ln719_fu_253_p2;
        tmp_ackNumb_V_7_reg_360 <= rxEng_headerMetaFifo_12_dout;
        tmp_ack_V_1_reg_375 <= rxEng_headerMetaFifo_10_dout;
        tmp_dataOffset_V_2_reg_395 <= rxEng_headerMetaFifo_14_dout;
        tmp_fin_V_1_reg_390 <= rxEng_headerMetaFifo_16_dout;
        tmp_length_V_6_reg_370 <= rxEng_headerMetaFifo_18_dout;
        tmp_rst_V_1_reg_380 <= rxEng_headerMetaFifo_19_dout;
        tmp_seqNumb_V_7_reg_355 <= rxEng_headerMetaFifo_20_dout;
        tmp_syn_V_1_reg_385 <= rxEng_headerMetaFifo_21_dout;
        tmp_winSize_V_1_reg_365 <= rxEng_headerMetaFifo_23_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_421_nbreadreq_fu_82_p12 == 1'd1) & (state_V == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        meta_ackNumb_V <= rxEng_headerMetaFifo_12_dout;
        meta_ack_V <= rxEng_headerMetaFifo_10_dout;
        meta_dataOffset_V <= rxEng_headerMetaFifo_14_dout;
        meta_fin_V <= rxEng_headerMetaFifo_16_dout;
        meta_length_V <= rxEng_headerMetaFifo_18_dout;
        meta_rst_V <= rxEng_headerMetaFifo_19_dout;
        meta_seqNumb_V <= rxEng_headerMetaFifo_20_dout;
        meta_syn_V <= rxEng_headerMetaFifo_21_dout;
        meta_winSize_V <= rxEng_headerMetaFifo_23_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state_V_load_reg_347 <= state_V;
    end
end

always @ (posedge ap_clk) begin
    if (((state_V == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_421_reg_351 <= tmp_421_nbreadreq_fu_82_p12;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op32_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_reg_408 <= rxEng_winScaleFifo_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((state_V == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_404 <= tmp_nbreadreq_fu_132_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_10_blk_n = rxEng_headerMetaFifo_10_empty_n;
    end else begin
        rxEng_headerMetaFifo_10_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_10_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_10_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_12_blk_n = rxEng_headerMetaFifo_12_empty_n;
    end else begin
        rxEng_headerMetaFifo_12_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_12_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_12_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_14_blk_n = rxEng_headerMetaFifo_14_empty_n;
    end else begin
        rxEng_headerMetaFifo_14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_14_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_14_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_16_blk_n = rxEng_headerMetaFifo_16_empty_n;
    end else begin
        rxEng_headerMetaFifo_16_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_16_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_16_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_18_blk_n = rxEng_headerMetaFifo_18_empty_n;
    end else begin
        rxEng_headerMetaFifo_18_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_18_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_18_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_19_blk_n = rxEng_headerMetaFifo_19_empty_n;
    end else begin
        rxEng_headerMetaFifo_19_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_19_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_19_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_20_blk_n = rxEng_headerMetaFifo_20_empty_n;
    end else begin
        rxEng_headerMetaFifo_20_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_20_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_20_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_21_blk_n = rxEng_headerMetaFifo_21_empty_n;
    end else begin
        rxEng_headerMetaFifo_21_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_21_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_21_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_22_blk_n = rxEng_headerMetaFifo_22_empty_n;
    end else begin
        rxEng_headerMetaFifo_22_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_22_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_22_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_headerMetaFifo_23_blk_n = rxEng_headerMetaFifo_23_empty_n;
    end else begin
        rxEng_headerMetaFifo_23_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_headerMetaFifo_23_read = 1'b1;
    end else begin
        rxEng_headerMetaFifo_23_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op63_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op48_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        rxEng_metaDataFifo_V_blk_n = rxEng_metaDataFifo_V_full_n;
    end else begin
        rxEng_metaDataFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_249)) begin
        if ((ap_predicate_op63_write_state2 == 1'b1)) begin
            rxEng_metaDataFifo_V_din = tmp_1_fu_323_p11;
        end else if ((ap_predicate_op48_write_state2 == 1'b1)) begin
            rxEng_metaDataFifo_V_din = tmp113_fu_271_p11;
        end else begin
            rxEng_metaDataFifo_V_din = 'bx;
        end
    end else begin
        rxEng_metaDataFifo_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op63_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op48_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        rxEng_metaDataFifo_V_write = 1'b1;
    end else begin
        rxEng_metaDataFifo_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op32_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_winScaleFifo_V_blk_n = rxEng_winScaleFifo_V_empty_n;
    end else begin
        rxEng_winScaleFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op32_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_winScaleFifo_V_read = 1'b1;
    end else begin
        rxEng_winScaleFifo_V_read = 1'b0;
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

assign and_ln719_fu_253_p2 = (rxEng_headerMetaFifo_21_dout & icmp_ln895_fu_247_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_winScaleFifo_V_empty_n == 1'b0) & (ap_predicate_op32_read_state1 == 1'b1)) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op63_write_state2 == 1'b1)) | ((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_winScaleFifo_V_empty_n == 1'b0) & (ap_predicate_op32_read_state1 == 1'b1)) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op63_write_state2 == 1'b1)) | ((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_winScaleFifo_V_empty_n == 1'b0) & (ap_predicate_op32_read_state1 == 1'b1)) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op63_write_state2 == 1'b1)) | ((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_winScaleFifo_V_empty_n == 1'b0) & (ap_predicate_op32_read_state1 == 1'b1)) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op63_write_state2 == 1'b1)) | ((rxEng_metaDataFifo_V_full_n == 1'b0) & (ap_predicate_op48_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_137 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_207 = ((1'd1 == and_ln719_fu_253_p2) & (tmp_421_nbreadreq_fu_82_p12 == 1'd1) & (state_V == 1'd0));
end

always @ (*) begin
    ap_condition_249 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op32_read_state1 = ((tmp_nbreadreq_fu_132_p3 == 1'd1) & (state_V == 1'd1));
end

always @ (*) begin
    ap_predicate_op48_write_state2 = ((tmp_421_reg_351 == 1'd1) & (1'd0 == and_ln719_reg_400) & (state_V_load_reg_347 == 1'd0));
end

always @ (*) begin
    ap_predicate_op63_write_state2 = ((tmp_reg_404 == 1'd1) & (state_V_load_reg_347 == 1'd1));
end

always @ (*) begin
    ap_predicate_op7_read_state1 = ((tmp_421_nbreadreq_fu_82_p12 == 1'd1) & (state_V == 1'd0));
end

assign icmp_ln895_fu_247_p2 = ((rxEng_headerMetaFifo_14_dout > 4'd5) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op7 = (rxEng_headerMetaFifo_23_empty_n & rxEng_headerMetaFifo_22_empty_n & rxEng_headerMetaFifo_21_empty_n & rxEng_headerMetaFifo_20_empty_n & rxEng_headerMetaFifo_19_empty_n & rxEng_headerMetaFifo_18_empty_n & rxEng_headerMetaFifo_16_empty_n & rxEng_headerMetaFifo_14_empty_n & rxEng_headerMetaFifo_12_empty_n & rxEng_headerMetaFifo_10_empty_n);

assign tmp113_fu_271_p11 = {{{{{{{{{{tmp_dataOffset_V_2_reg_395}, {tmp_fin_V_1_reg_390}}, {tmp_syn_V_1_reg_385}}, {tmp_rst_V_1_reg_380}}, {tmp_ack_V_1_reg_375}}, {tmp_length_V_6_reg_370}}, {4'd0}}, {tmp_winSize_V_1_reg_365}}, {tmp_ackNumb_V_7_reg_360}}, {tmp_seqNumb_V_7_reg_355}};

assign tmp_1_fu_323_p11 = {{{{{{{{{{meta_dataOffset_V}, {meta_fin_V}}, {meta_syn_V}}, {meta_rst_V}}, {meta_ack_V}}, {meta_length_V}}, {tmp_V_reg_408}}, {meta_winSize_V}}, {meta_ackNumb_V}}, {meta_seqNumb_V}};

assign tmp_421_nbreadreq_fu_82_p12 = (rxEng_headerMetaFifo_23_empty_n & rxEng_headerMetaFifo_22_empty_n & rxEng_headerMetaFifo_21_empty_n & rxEng_headerMetaFifo_20_empty_n & rxEng_headerMetaFifo_19_empty_n & rxEng_headerMetaFifo_18_empty_n & rxEng_headerMetaFifo_16_empty_n & rxEng_headerMetaFifo_14_empty_n & rxEng_headerMetaFifo_12_empty_n & rxEng_headerMetaFifo_10_empty_n);

assign tmp_nbreadreq_fu_132_p3 = rxEng_winScaleFifo_V_empty_n;

endmodule //merge_header_meta

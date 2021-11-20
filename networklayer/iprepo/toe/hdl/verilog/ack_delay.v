// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ack_delay (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        eventEng2ackDelay_ev_1_dout,
        eventEng2ackDelay_ev_1_empty_n,
        eventEng2ackDelay_ev_1_read,
        ackDelayFifoReadCoun_1_din,
        ackDelayFifoReadCoun_1_full_n,
        ackDelayFifoReadCoun_1_write,
        eventEng2txEng_event_1_din,
        eventEng2txEng_event_1_full_n,
        eventEng2txEng_event_1_write,
        ackDelayFifoWriteCou_1_din,
        ackDelayFifoWriteCou_1_full_n,
        ackDelayFifoWriteCou_1_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv152_lc_1 = 152'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [151:0] eventEng2ackDelay_ev_1_dout;
input   eventEng2ackDelay_ev_1_empty_n;
output   eventEng2ackDelay_ev_1_read;
output  [0:0] ackDelayFifoReadCoun_1_din;
input   ackDelayFifoReadCoun_1_full_n;
output   ackDelayFifoReadCoun_1_write;
output  [151:0] eventEng2txEng_event_1_din;
input   eventEng2txEng_event_1_full_n;
output   eventEng2txEng_event_1_write;
output  [0:0] ackDelayFifoWriteCou_1_din;
input   ackDelayFifoWriteCou_1_full_n;
output   ackDelayFifoWriteCou_1_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg eventEng2ackDelay_ev_1_read;
reg ackDelayFifoReadCoun_1_write;
reg[151:0] eventEng2txEng_event_1_din;
reg eventEng2txEng_event_1_write;
reg ackDelayFifoWriteCou_1_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_82_p3;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_264;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_reg_264_pp0_iter1_reg;
reg   [0:0] icmp_ln895_reg_306;
wire   [0:0] tmp_518_nbwritereq_fu_104_p3;
wire   [0:0] icmp_ln879_50_fu_227_p2;
reg    ap_predicate_op35_write_state3;
reg   [0:0] icmp_ln879_reg_310;
reg   [0:0] icmp_ln53_reg_290;
reg   [0:0] icmp_ln53_reg_290_pp0_iter1_reg;
reg    ap_predicate_op41_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_reg_264_pp0_iter2_reg;
reg   [0:0] icmp_ln895_reg_306_pp0_iter2_reg;
reg   [0:0] tmp_518_reg_314;
reg   [0:0] icmp_ln879_50_reg_318;
reg    ap_predicate_op50_write_state4;
reg   [0:0] icmp_ln879_reg_310_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_290_pp0_iter2_reg;
reg    ap_predicate_op54_write_state4;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [9:0] ack_table_V_address0;
reg    ack_table_V_ce0;
wire   [11:0] ack_table_V_q0;
reg   [9:0] ack_table_V_address1;
reg    ack_table_V_ce1;
reg    ack_table_V_we1;
reg   [11:0] ack_table_V_d1;
reg   [15:0] ad_pointer_V;
reg    eventEng2ackDelay_ev_1_blk_n;
wire    ap_block_pp0_stage0;
reg    ackDelayFifoReadCoun_1_blk_n;
reg    eventEng2txEng_event_1_blk_n;
reg    ackDelayFifoWriteCou_1_blk_n;
reg   [15:0] tmp_sessionID_V_20_reg_268;
reg   [15:0] tmp_sessionID_V_20_reg_268_pp0_iter1_reg;
reg   [9:0] ack_table_V_addr_reg_274;
reg   [9:0] ack_table_V_addr_reg_274_pp0_iter1_reg;
reg   [151:0] tmp145_reg_280;
reg   [151:0] tmp145_reg_280_pp0_iter1_reg;
wire   [15:0] tmp_sessionID_V_fu_181_p4;
reg   [15:0] tmp_sessionID_V_reg_285;
reg   [15:0] tmp_sessionID_V_reg_285_pp0_iter1_reg;
wire   [0:0] icmp_ln53_fu_191_p2;
reg   [9:0] ack_table_V_addr_1_reg_294;
reg   [9:0] ack_table_V_addr_1_reg_294_pp0_iter1_reg;
reg   [11:0] ack_table_V_load_reg_300;
wire   [0:0] grp_fu_162_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln544_fu_172_p1;
wire   [63:0] zext_ln544_23_fu_197_p1;
wire   [63:0] zext_ln544_24_fu_260_p1;
wire   [15:0] select_ln78_fu_213_p3;
reg   [15:0] ap_sig_allocacmp_tmp_sessionID_V_20;
reg    ap_block_pp0_stage0_01001;
wire   [151:0] tmp_2_fu_241_p5;
wire   [11:0] add_ln701_fu_254_p2;
wire   [2:0] tmp_type_fu_177_p1;
wire   [15:0] add_ln700_fu_202_p2;
wire   [0:0] icmp_ln879_51_fu_207_p2;
wire   [55:0] tmp_220_i_fu_232_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
reg    ap_block_pp0;
reg    ap_enable_operation_10;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_enable_operation_19;
reg    ap_enable_state2_pp0_iter1_stage0;
reg    ap_predicate_op37_store_state3;
reg    ap_enable_operation_37;
reg    ap_enable_state3_pp0_iter2_stage0;
reg    ap_predicate_op40_store_state3;
reg    ap_enable_operation_40;
reg    ap_predicate_op42_store_state3;
reg    ap_enable_operation_42;
reg    ap_predicate_op18_load_state1;
reg    ap_enable_operation_18;
reg    ap_predicate_op27_load_state2;
reg    ap_enable_operation_27;
wire    ap_enable_pp0;
reg    ap_condition_162;
reg    ap_condition_78;
reg    ap_condition_93;
reg    ap_condition_271;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ad_pointer_V = 16'd0;
end

ack_delay_ack_tabCeG #(
    .DataWidth( 12 ),
    .AddressRange( 1000 ),
    .AddressWidth( 10 ))
ack_table_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ack_table_V_address0),
    .ce0(ack_table_V_ce0),
    .q0(ack_table_V_q0),
    .address1(ack_table_V_address1),
    .ce1(ack_table_V_ce1),
    .we1(ack_table_V_we1),
    .d1(ack_table_V_d1)
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
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_fu_191_p2 == 1'd1) & (tmp_nbreadreq_fu_82_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ack_table_V_addr_1_reg_294 <= zext_ln544_23_fu_197_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ack_table_V_addr_1_reg_294_pp0_iter1_reg <= ack_table_V_addr_1_reg_294;
        ack_table_V_addr_reg_274_pp0_iter1_reg <= ack_table_V_addr_reg_274;
        icmp_ln53_reg_290_pp0_iter1_reg <= icmp_ln53_reg_290;
        tmp145_reg_280_pp0_iter1_reg <= tmp145_reg_280;
        tmp_reg_264 <= tmp_nbreadreq_fu_82_p3;
        tmp_reg_264_pp0_iter1_reg <= tmp_reg_264;
        tmp_sessionID_V_20_reg_268_pp0_iter1_reg <= tmp_sessionID_V_20_reg_268;
        tmp_sessionID_V_reg_285_pp0_iter1_reg <= tmp_sessionID_V_reg_285;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_82_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ack_table_V_addr_reg_274 <= zext_ln544_fu_172_p1;
        tmp_sessionID_V_20_reg_268 <= ap_sig_allocacmp_tmp_sessionID_V_20;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ack_table_V_load_reg_300 <= ack_table_V_q0;
        ad_pointer_V <= select_ln78_fu_213_p3;
        icmp_ln895_reg_306 <= grp_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_82_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln53_reg_290 <= icmp_ln53_fu_191_p2;
        tmp145_reg_280 <= eventEng2ackDelay_ev_1_dout;
        tmp_sessionID_V_reg_285 <= {{eventEng2ackDelay_ev_1_dout[18:3]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln53_reg_290_pp0_iter2_reg <= icmp_ln53_reg_290_pp0_iter1_reg;
        icmp_ln879_reg_310_pp0_iter2_reg <= icmp_ln879_reg_310;
        icmp_ln895_reg_306_pp0_iter2_reg <= icmp_ln895_reg_306;
        tmp_reg_264_pp0_iter2_reg <= tmp_reg_264_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_50_reg_318 <= icmp_ln879_50_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln53_reg_290 == 1'd1) & (tmp_reg_264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_reg_310 <= grp_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_518_reg_314 <= eventEng2txEng_event_1_full_n;
    end
end

always @ (*) begin
    if (((tmp_reg_264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ackDelayFifoReadCoun_1_blk_n = ackDelayFifoReadCoun_1_full_n;
    end else begin
        ackDelayFifoReadCoun_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_264 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ackDelayFifoReadCoun_1_write = 1'b1;
    end else begin
        ackDelayFifoReadCoun_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op54_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op50_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        ackDelayFifoWriteCou_1_blk_n = ackDelayFifoWriteCou_1_full_n;
    end else begin
        ackDelayFifoWriteCou_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op54_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op50_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ackDelayFifoWriteCou_1_write = 1'b1;
    end else begin
        ackDelayFifoWriteCou_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_162)) begin
        if (((icmp_ln53_fu_191_p2 == 1'd1) & (tmp_nbreadreq_fu_82_p3 == 1'd1))) begin
            ack_table_V_address0 = zext_ln544_23_fu_197_p1;
        end else if ((tmp_nbreadreq_fu_82_p3 == 1'd0)) begin
            ack_table_V_address0 = zext_ln544_fu_172_p1;
        end else begin
            ack_table_V_address0 = 'bx;
        end
    end else begin
        ack_table_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        if ((1'b1 == ap_condition_271)) begin
            ack_table_V_address1 = ack_table_V_addr_1_reg_294_pp0_iter1_reg;
        end else if ((1'b1 == ap_condition_93)) begin
            ack_table_V_address1 = zext_ln544_24_fu_260_p1;
        end else if ((1'b1 == ap_condition_78)) begin
            ack_table_V_address1 = ack_table_V_addr_reg_274_pp0_iter1_reg;
        end else begin
            ack_table_V_address1 = 'bx;
        end
    end else begin
        ack_table_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln53_fu_191_p2 == 1'd1) & (tmp_nbreadreq_fu_82_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_nbreadreq_fu_82_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ack_table_V_ce0 = 1'b1;
    end else begin
        ack_table_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (((icmp_ln53_reg_290_pp0_iter1_reg == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)) | ((icmp_ln879_reg_310 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)))) | ((icmp_ln53_reg_290_pp0_iter1_reg == 1'd1) & (icmp_ln879_reg_310 == 1'd1) & (tmp_reg_264_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ack_table_V_ce1 = 1'b1;
    end else begin
        ack_table_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        if ((1'b1 == ap_condition_271)) begin
            ack_table_V_d1 = 12'd11;
        end else if ((1'b1 == ap_condition_93)) begin
            ack_table_V_d1 = 12'd0;
        end else if ((1'b1 == ap_condition_78)) begin
            ack_table_V_d1 = add_ln701_fu_254_p2;
        end else begin
            ack_table_V_d1 = 'bx;
        end
    end else begin
        ack_table_V_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (((icmp_ln53_reg_290_pp0_iter1_reg == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)) | ((icmp_ln879_reg_310 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)))) | ((icmp_ln53_reg_290_pp0_iter1_reg == 1'd1) & (icmp_ln879_reg_310 == 1'd1) & (tmp_reg_264_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ack_table_V_we1 = 1'b1;
    end else begin
        ack_table_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tmp_sessionID_V_20 = select_ln78_fu_213_p3;
    end else begin
        ap_sig_allocacmp_tmp_sessionID_V_20 = ad_pointer_V;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_82_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        eventEng2ackDelay_ev_1_blk_n = eventEng2ackDelay_ev_1_empty_n;
    end else begin
        eventEng2ackDelay_ev_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_82_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        eventEng2ackDelay_ev_1_read = 1'b1;
    end else begin
        eventEng2ackDelay_ev_1_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op41_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op35_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        eventEng2txEng_event_1_blk_n = eventEng2txEng_event_1_full_n;
    end else begin
        eventEng2txEng_event_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op41_write_state3 == 1'b1)) begin
            eventEng2txEng_event_1_din = tmp145_reg_280_pp0_iter1_reg;
        end else if ((ap_predicate_op35_write_state3 == 1'b1)) begin
            eventEng2txEng_event_1_din = tmp_2_fu_241_p5;
        end else begin
            eventEng2txEng_event_1_din = 'bx;
        end
    end else begin
        eventEng2txEng_event_1_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op41_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op35_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        eventEng2txEng_event_1_write = 1'b1;
    end else begin
        eventEng2txEng_event_1_write = 1'b0;
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

assign ackDelayFifoReadCoun_1_din = 1'd1;

assign ackDelayFifoWriteCou_1_din = 1'd1;

assign add_ln700_fu_202_p2 = (tmp_sessionID_V_20_reg_268 + 16'd1);

assign add_ln701_fu_254_p2 = ($signed(ack_table_V_load_reg_300) + $signed(12'd4095));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_pp0 = ((ap_ST_fsm_pp0_stage0 == ap_CS_fsm) & (1'b1 == ap_block_pp0_stage0_subdone));
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) | ((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op35_write_state3 == 1'b1)))) | ((tmp_reg_264 == 1'd1) & (1'b0 == ackDelayFifoReadCoun_1_full_n) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_82_p3 == 1'd1) & (eventEng2ackDelay_ev_1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op54_write_state4 == 1'b1)) | ((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op50_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) | ((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op35_write_state3 == 1'b1)))) | ((tmp_reg_264 == 1'd1) & (1'b0 == ackDelayFifoReadCoun_1_full_n) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_82_p3 == 1'd1) & (eventEng2ackDelay_ev_1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op54_write_state4 == 1'b1)) | ((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op50_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) | ((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op35_write_state3 == 1'b1)))) | ((tmp_reg_264 == 1'd1) & (1'b0 == ackDelayFifoReadCoun_1_full_n) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_82_p3 == 1'd1) & (eventEng2ackDelay_ev_1_empty_n == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op54_write_state4 == 1'b1)) | ((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op50_write_state4 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_82_p3 == 1'd1) & (eventEng2ackDelay_ev_1_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((tmp_reg_264 == 1'd1) & (1'b0 == ackDelayFifoReadCoun_1_full_n));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op41_write_state3 == 1'b1)) | ((eventEng2txEng_event_1_full_n == 1'b0) & (ap_predicate_op35_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op54_write_state4 == 1'b1)) | ((1'b0 == ackDelayFifoWriteCou_1_full_n) & (ap_predicate_op50_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_condition_162 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0));
end

always @ (*) begin
    ap_condition_271 = ((icmp_ln53_reg_290_pp0_iter1_reg == 1'd1) & (icmp_ln879_reg_310 == 1'd1) & (tmp_reg_264_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_condition_78 = ((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1));
end

always @ (*) begin
    ap_condition_93 = (((icmp_ln53_reg_290_pp0_iter1_reg == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)) | ((icmp_ln879_reg_310 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)));
end

always @ (*) begin
    ap_enable_operation_10 = (tmp_nbreadreq_fu_82_p3 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_18 = (ap_predicate_op18_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_19 = (tmp_reg_264 == 1'd0);
end

always @ (*) begin
    ap_enable_operation_27 = (ap_predicate_op27_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_37 = (ap_predicate_op37_store_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_40 = (ap_predicate_op40_store_state3 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_42 = (ap_predicate_op42_store_state3 == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state2_pp0_iter1_stage0 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_enable_state3_pp0_iter2_stage0 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_predicate_op18_load_state1 = ((icmp_ln53_fu_191_p2 == 1'd1) & (tmp_nbreadreq_fu_82_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op27_load_state2 = ((icmp_ln53_reg_290 == 1'd1) & (tmp_reg_264 == 1'd1));
end

always @ (*) begin
    ap_predicate_op35_write_state3 = ((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (icmp_ln879_50_fu_227_p2 == 1'd1) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op37_store_state3 = ((icmp_ln895_reg_306 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd0) & (tmp_518_nbwritereq_fu_104_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op40_store_state3 = (((icmp_ln53_reg_290_pp0_iter1_reg == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)) | ((icmp_ln879_reg_310 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)));
end

always @ (*) begin
    ap_predicate_op41_write_state3 = (((icmp_ln53_reg_290_pp0_iter1_reg == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)) | ((icmp_ln879_reg_310 == 1'd0) & (tmp_reg_264_pp0_iter1_reg == 1'd1)));
end

always @ (*) begin
    ap_predicate_op42_store_state3 = ((icmp_ln53_reg_290_pp0_iter1_reg == 1'd1) & (icmp_ln879_reg_310 == 1'd1) & (tmp_reg_264_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op50_write_state4 = ((icmp_ln895_reg_306_pp0_iter2_reg == 1'd0) & (tmp_reg_264_pp0_iter2_reg == 1'd0) & (icmp_ln879_50_reg_318 == 1'd1) & (tmp_518_reg_314 == 1'd1));
end

always @ (*) begin
    ap_predicate_op54_write_state4 = (((icmp_ln53_reg_290_pp0_iter2_reg == 1'd0) & (tmp_reg_264_pp0_iter2_reg == 1'd1)) | ((icmp_ln879_reg_310_pp0_iter2_reg == 1'd0) & (tmp_reg_264_pp0_iter2_reg == 1'd1)));
end

assign grp_fu_162_p2 = ((ack_table_V_q0 == 12'd0) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_191_p2 = ((tmp_type_fu_177_p1 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln879_50_fu_227_p2 = ((ack_table_V_load_reg_300 == 12'd1) ? 1'b1 : 1'b0);

assign icmp_ln879_51_fu_207_p2 = ((add_ln700_fu_202_p2 == 16'd1000) ? 1'b1 : 1'b0);

assign select_ln78_fu_213_p3 = ((icmp_ln879_51_fu_207_p2[0:0] === 1'b1) ? 16'd0 : add_ln700_fu_202_p2);

assign tmp_220_i_fu_232_p4 = {{{{37'd0}, {tmp_sessionID_V_20_reg_268_pp0_iter1_reg}}}, {3'd2}};

assign tmp_2_fu_241_p5 = {{ap_const_lv152_lc_1[151:56]}, {tmp_220_i_fu_232_p4}};

assign tmp_518_nbwritereq_fu_104_p3 = eventEng2txEng_event_1_full_n;

assign tmp_nbreadreq_fu_82_p3 = eventEng2ackDelay_ev_1_empty_n;

assign tmp_sessionID_V_fu_181_p4 = {{eventEng2ackDelay_ev_1_dout[18:3]}};

assign tmp_type_fu_177_p1 = eventEng2ackDelay_ev_1_dout[2:0];

assign zext_ln544_23_fu_197_p1 = tmp_sessionID_V_fu_181_p4;

assign zext_ln544_24_fu_260_p1 = tmp_sessionID_V_reg_285_pp0_iter1_reg;

assign zext_ln544_fu_172_p1 = ap_sig_allocacmp_tmp_sessionID_V_20;

endmodule //ack_delay

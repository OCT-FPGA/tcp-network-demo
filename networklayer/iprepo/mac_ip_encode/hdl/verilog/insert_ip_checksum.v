// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module insert_ip_checksum (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dataStreamBuffer1_V_dout,
        dataStreamBuffer1_V_empty_n,
        dataStreamBuffer1_V_read,
        checksumFifo_V_V_dout,
        checksumFifo_V_V_empty_n,
        checksumFifo_V_V_read,
        dataStreamBuffer2_V_din,
        dataStreamBuffer2_V_full_n,
        dataStreamBuffer2_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [576:0] dataStreamBuffer1_V_dout;
input   dataStreamBuffer1_V_empty_n;
output   dataStreamBuffer1_V_read;
input  [15:0] checksumFifo_V_V_dout;
input   checksumFifo_V_V_empty_n;
output   checksumFifo_V_V_read;
output  [576:0] dataStreamBuffer2_V_din;
input   dataStreamBuffer2_V_full_n;
output   dataStreamBuffer2_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dataStreamBuffer1_V_read;
reg checksumFifo_V_V_read;
reg[576:0] dataStreamBuffer2_V_din;
reg dataStreamBuffer2_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] grp_nbreadreq_fu_66_p3;
reg    ap_predicate_op6_read_state1;
wire   [0:0] tmp_3_nbreadreq_fu_80_p3;
reg    ap_predicate_op13_read_state1;
reg    ap_predicate_op14_read_state1;
reg    ap_predicate_op26_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [1:0] wordCount_V_load_reg_209;
reg   [0:0] tmp_2_reg_213;
reg    ap_predicate_op35_write_state2;
reg   [0:0] tmp_1_reg_217;
reg   [0:0] tmp_3_reg_221;
reg    ap_predicate_op40_write_state2;
reg   [0:0] tmp_reg_235;
reg    ap_predicate_op44_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] wordCount_V;
reg    dataStreamBuffer1_V_blk_n;
wire    ap_block_pp0_stage0;
reg    checksumFifo_V_V_blk_n;
reg    dataStreamBuffer2_V_blk_n;
reg   [576:0] reg_109;
wire   [511:0] p_Result_s_fu_158_p5;
reg   [511:0] p_Result_s_reg_225;
reg   [64:0] tmp_6_i_reg_230;
wire   [0:0] grp_fu_101_p3;
reg    ap_block_pp0_stage0_subdone;
wire   [1:0] select_ln117_fu_118_p3;
wire   [1:0] zext_ln700_fu_186_p1;
reg    ap_block_pp0_stage0_01001;
wire   [576:0] tmp_193_fu_202_p3;
wire   [7:0] trunc_ln647_fu_142_p1;
wire   [7:0] p_Result_2_i_i_fu_132_p4;
wire   [511:0] p_Val2_4_fu_154_p1;
wire   [15:0] agg_result_V_0_1_i_i_fu_146_p3;
wire   [0:0] xor_ln100_fu_180_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_278;
reg    ap_condition_276;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 wordCount_V = 2'd0;
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((1'b1 == ap_condition_278)) begin
            wordCount_V <= 2'd0;
        end else if (((tmp_3_nbreadreq_fu_80_p3 == 1'd1) & (wordCount_V == 2'd0))) begin
            wordCount_V <= zext_ln700_fu_186_p1;
        end else if ((wordCount_V == 2'd1)) begin
            wordCount_V <= select_ln117_fu_118_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_nbreadreq_fu_80_p3 == 1'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1) & (wordCount_V == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_s_reg_225 <= p_Result_s_fu_158_p5;
        tmp_6_i_reg_230 <= {{dataStreamBuffer1_V_dout[576:512]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op26_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op6_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_109 <= dataStreamBuffer1_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((wordCount_V == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_reg_217 <= grp_nbreadreq_fu_66_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((wordCount_V == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_2_reg_213 <= grp_nbreadreq_fu_66_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_66_p3 == 1'd1) & (wordCount_V == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_reg_221 <= tmp_3_nbreadreq_fu_80_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~(wordCount_V == 2'd0) & ~(wordCount_V == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_235 <= grp_nbreadreq_fu_66_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        wordCount_V_load_reg_209 <= wordCount_V;
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op14_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        checksumFifo_V_V_blk_n = checksumFifo_V_V_empty_n;
    end else begin
        checksumFifo_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op14_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        checksumFifo_V_V_read = 1'b1;
    end else begin
        checksumFifo_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op26_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op13_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op6_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        dataStreamBuffer1_V_blk_n = dataStreamBuffer1_V_empty_n;
    end else begin
        dataStreamBuffer1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op26_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op13_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op6_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dataStreamBuffer1_V_read = 1'b1;
    end else begin
        dataStreamBuffer1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op35_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op44_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op40_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        dataStreamBuffer2_V_blk_n = dataStreamBuffer2_V_full_n;
    end else begin
        dataStreamBuffer2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op40_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001))) begin
        dataStreamBuffer2_V_din = tmp_193_fu_202_p3;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op35_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op44_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001)))) begin
        dataStreamBuffer2_V_din = reg_109;
    end else begin
        dataStreamBuffer2_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op35_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op44_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op40_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dataStreamBuffer2_V_write = 1'b1;
    end else begin
        dataStreamBuffer2_V_write = 1'b0;
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

assign agg_result_V_0_1_i_i_fu_146_p3 = {{trunc_ln647_fu_142_p1}, {p_Result_2_i_i_fu_132_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((checksumFifo_V_V_empty_n == 1'b0) & (ap_predicate_op14_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op26_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op6_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op40_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((checksumFifo_V_V_empty_n == 1'b0) & (ap_predicate_op14_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op26_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op6_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op40_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((checksumFifo_V_V_empty_n == 1'b0) & (ap_predicate_op14_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op26_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op6_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op40_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((checksumFifo_V_V_empty_n == 1'b0) & (ap_predicate_op14_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op26_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)) | ((dataStreamBuffer1_V_empty_n == 1'b0) & (ap_predicate_op6_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op35_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)) | ((dataStreamBuffer2_V_full_n == 1'b0) & (ap_predicate_op40_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_276 = ((grp_nbreadreq_fu_66_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_278 = (~(wordCount_V == 2'd0) & ~(wordCount_V == 2'd1) & (grp_fu_101_p3 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op13_read_state1 = ((tmp_3_nbreadreq_fu_80_p3 == 1'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1) & (wordCount_V == 2'd0));
end

always @ (*) begin
    ap_predicate_op14_read_state1 = ((tmp_3_nbreadreq_fu_80_p3 == 1'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1) & (wordCount_V == 2'd0));
end

always @ (*) begin
    ap_predicate_op26_read_state1 = (~(wordCount_V == 2'd0) & ~(wordCount_V == 2'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op35_write_state2 = ((tmp_2_reg_213 == 1'd1) & (wordCount_V_load_reg_209 == 2'd1));
end

always @ (*) begin
    ap_predicate_op40_write_state2 = ((wordCount_V_load_reg_209 == 2'd0) & (tmp_3_reg_221 == 1'd1) & (tmp_1_reg_217 == 1'd1));
end

always @ (*) begin
    ap_predicate_op44_write_state2 = (~(wordCount_V_load_reg_209 == 2'd0) & ~(wordCount_V_load_reg_209 == 2'd1) & (tmp_reg_235 == 1'd1));
end

always @ (*) begin
    ap_predicate_op6_read_state1 = ((grp_nbreadreq_fu_66_p3 == 1'd1) & (wordCount_V == 2'd1));
end

assign grp_fu_101_p3 = dataStreamBuffer1_V_dout[32'd576];

assign grp_nbreadreq_fu_66_p3 = dataStreamBuffer1_V_empty_n;

assign p_Result_2_i_i_fu_132_p4 = {{checksumFifo_V_V_dout[15:8]}};

assign p_Result_s_fu_158_p5 = {{p_Val2_4_fu_154_p1[511:96]}, {agg_result_V_0_1_i_i_fu_146_p3}, {p_Val2_4_fu_154_p1[79:0]}};

assign p_Val2_4_fu_154_p1 = dataStreamBuffer1_V_dout[511:0];

assign select_ln117_fu_118_p3 = ((grp_fu_101_p3[0:0] === 1'b1) ? 2'd0 : 2'd2);

assign tmp_193_fu_202_p3 = {{tmp_6_i_reg_230}, {p_Result_s_reg_225}};

assign tmp_3_nbreadreq_fu_80_p3 = checksumFifo_V_V_empty_n;

assign trunc_ln647_fu_142_p1 = checksumFifo_V_V_dout[7:0];

assign xor_ln100_fu_180_p2 = (grp_fu_101_p3 ^ 1'd1);

assign zext_ln700_fu_186_p1 = xor_ln100_fu_180_p2;

endmodule //insert_ip_checksum
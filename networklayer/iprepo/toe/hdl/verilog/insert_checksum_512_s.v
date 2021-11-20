// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module insert_checksum_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpPkgBuffer4_s_5_dout,
        txEng_tcpPkgBuffer4_s_5_empty_n,
        txEng_tcpPkgBuffer4_s_5_read,
        txEng_tcpPkgBuffer5_s_4_din,
        txEng_tcpPkgBuffer5_s_4_full_n,
        txEng_tcpPkgBuffer5_s_4_write,
        txEng_tcpChecksumFif_1_dout,
        txEng_tcpChecksumFif_1_empty_n,
        txEng_tcpChecksumFif_1_read
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [576:0] txEng_tcpPkgBuffer4_s_5_dout;
input   txEng_tcpPkgBuffer4_s_5_empty_n;
output   txEng_tcpPkgBuffer4_s_5_read;
output  [576:0] txEng_tcpPkgBuffer5_s_4_din;
input   txEng_tcpPkgBuffer5_s_4_full_n;
output   txEng_tcpPkgBuffer5_s_4_write;
input  [15:0] txEng_tcpChecksumFif_1_dout;
input   txEng_tcpChecksumFif_1_empty_n;
output   txEng_tcpChecksumFif_1_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpPkgBuffer4_s_5_read;
reg[576:0] txEng_tcpPkgBuffer5_s_4_din;
reg txEng_tcpPkgBuffer5_s_4_write;
reg txEng_tcpChecksumFif_1_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] state_V_2;
reg   [2:0] wordCount_V;
reg    txEng_tcpPkgBuffer4_s_5_blk_n;
wire   [0:0] grp_nbreadreq_fu_68_p3;
wire   [0:0] tmp_436_nbreadreq_fu_90_p3;
reg    txEng_tcpPkgBuffer5_s_4_blk_n;
reg    txEng_tcpChecksumFif_1_blk_n;
reg   [2:0] ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4;
reg    ap_predicate_op9_read_state1;
reg    ap_predicate_op11_write_state1;
reg    ap_predicate_op21_read_state1;
reg    ap_predicate_op22_read_state1;
reg    ap_predicate_op31_write_state1;
reg    ap_predicate_op38_read_state1;
reg    ap_predicate_op39_write_state1;
reg    ap_block_state1;
wire   [0:0] icmp_ln879_fu_214_p2;
wire   [2:0] add_ln700_fu_207_p2;
wire   [0:0] grp_fu_114_p3;
wire   [1:0] select_ln1578_fu_189_p3;
wire   [576:0] tmp_3_fu_180_p3;
wire   [7:0] trunc_ln647_fu_142_p1;
wire   [7:0] p_Result_138_i_i_fu_132_p4;
wire   [511:0] p_Val2_55_fu_154_p1;
wire   [15:0] agg_result_V_0_1_i_i_fu_146_p3;
wire   [64:0] tmp_132_i_fu_170_p4;
wire   [511:0] p_Result_s_fu_158_p5;
reg   [0:0] ap_NS_fsm;
reg    ap_condition_50;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 state_V_2 = 2'd1;
#0 wordCount_V = 3'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        state_V_2 <= select_ln1578_fu_189_p3;
    end else if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (grp_fu_114_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd2) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (icmp_ln879_fu_214_p2 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_V_2 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        wordCount_V <= ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_50)) begin
        if ((icmp_ln879_fu_214_p2 == 1'd0)) begin
            ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4 = add_ln700_fu_207_p2;
        end else if ((icmp_ln879_fu_214_p2 == 1'd1)) begin
            ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4 = 3'd0;
        end else begin
            ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_wordCount_V_new_0_i_phi_fu_107_p4 = 'bx;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        txEng_tcpChecksumFif_1_blk_n = txEng_tcpChecksumFif_1_empty_n;
    end else begin
        txEng_tcpChecksumFif_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op21_read_state1 == 1'b1))) begin
        txEng_tcpChecksumFif_1_read = 1'b1;
    end else begin
        txEng_tcpChecksumFif_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd2) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        txEng_tcpPkgBuffer4_s_5_blk_n = txEng_tcpPkgBuffer4_s_5_empty_n;
    end else begin
        txEng_tcpPkgBuffer4_s_5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op38_read_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op22_read_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op9_read_state1 == 1'b1)))) begin
        txEng_tcpPkgBuffer4_s_5_read = 1'b1;
    end else begin
        txEng_tcpPkgBuffer4_s_5_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd2) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        txEng_tcpPkgBuffer5_s_4_blk_n = txEng_tcpPkgBuffer5_s_4_full_n;
    end else begin
        txEng_tcpPkgBuffer5_s_4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op31_write_state1 == 1'b1))) begin
        txEng_tcpPkgBuffer5_s_4_din = tmp_3_fu_180_p3;
    end else if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op39_write_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op11_write_state1 == 1'b1)))) begin
        txEng_tcpPkgBuffer5_s_4_din = txEng_tcpPkgBuffer4_s_5_dout;
    end else begin
        txEng_tcpPkgBuffer5_s_4_din = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op39_write_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op31_write_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op11_write_state1 == 1'b1)))) begin
        txEng_tcpPkgBuffer5_s_4_write = 1'b1;
    end else begin
        txEng_tcpPkgBuffer5_s_4_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln700_fu_207_p2 = (wordCount_V + 3'd1);

assign agg_result_V_0_1_i_i_fu_146_p3 = {{trunc_ln647_fu_142_p1}, {p_Result_138_i_i_fu_132_p4}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpChecksumFif_1_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op39_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op31_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer5_s_4_full_n == 1'b0) & (ap_predicate_op11_write_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op22_read_state1 == 1'b1)) | ((txEng_tcpPkgBuffer4_s_5_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_condition_50 = ((grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0) & (1'b1 == ap_CS_fsm_state1));
end

always @ (*) begin
    ap_predicate_op11_write_state1 = ((grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd2));
end

always @ (*) begin
    ap_predicate_op21_read_state1 = ((tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1));
end

always @ (*) begin
    ap_predicate_op22_read_state1 = ((tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1));
end

always @ (*) begin
    ap_predicate_op31_write_state1 = ((tmp_436_nbreadreq_fu_90_p3 == 1'd1) & (grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd1));
end

always @ (*) begin
    ap_predicate_op38_read_state1 = ((grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0));
end

always @ (*) begin
    ap_predicate_op39_write_state1 = ((grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd0));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((grp_nbreadreq_fu_68_p3 == 1'd1) & (state_V_2 == 2'd2));
end

assign grp_fu_114_p3 = txEng_tcpPkgBuffer4_s_5_dout[32'd576];

assign grp_nbreadreq_fu_68_p3 = txEng_tcpPkgBuffer4_s_5_empty_n;

assign icmp_ln879_fu_214_p2 = ((add_ln700_fu_207_p2 == 3'd0) ? 1'b1 : 1'b0);

assign p_Result_138_i_i_fu_132_p4 = {{txEng_tcpChecksumFif_1_dout[15:8]}};

assign p_Result_s_fu_158_p5 = {{p_Val2_55_fu_154_p1[511:144]}, {agg_result_V_0_1_i_i_fu_146_p3}, {p_Val2_55_fu_154_p1[127:0]}};

assign p_Val2_55_fu_154_p1 = txEng_tcpPkgBuffer4_s_5_dout[511:0];

assign select_ln1578_fu_189_p3 = ((grp_fu_114_p3[0:0] === 1'b1) ? 2'd1 : 2'd2);

assign tmp_132_i_fu_170_p4 = {{txEng_tcpPkgBuffer4_s_5_dout[576:512]}};

assign tmp_3_fu_180_p3 = {{tmp_132_i_fu_170_p4}, {p_Result_s_fu_158_p5}};

assign tmp_436_nbreadreq_fu_90_p3 = txEng_tcpChecksumFif_1_empty_n;

assign trunc_ln647_fu_142_p1 = txEng_tcpChecksumFif_1_dout[7:0];

endmodule //insert_checksum_512_s

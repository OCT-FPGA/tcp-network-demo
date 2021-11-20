// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module lshiftWordByOctet (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpPkgBuffer5_s_4_dout,
        txEng_tcpPkgBuffer5_s_4_empty_n,
        txEng_tcpPkgBuffer5_s_4_read,
        txEng_tcpPkgBuffer6_s_3_din,
        txEng_tcpPkgBuffer6_s_3_full_n,
        txEng_tcpPkgBuffer6_s_3_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [576:0] txEng_tcpPkgBuffer5_s_4_dout;
input   txEng_tcpPkgBuffer5_s_4_empty_n;
output   txEng_tcpPkgBuffer5_s_4_read;
output  [576:0] txEng_tcpPkgBuffer6_s_3_din;
input   txEng_tcpPkgBuffer6_s_3_full_n;
output   txEng_tcpPkgBuffer6_s_3_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpPkgBuffer5_s_4_read;
reg[576:0] txEng_tcpPkgBuffer6_s_3_din;
reg txEng_tcpPkgBuffer6_s_3_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] ls_writeRemainder_lo_load_fu_148_p1;
wire   [0:0] tmp_nbreadreq_fu_88_p3;
reg    ap_predicate_op9_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] ls_writeRemainder_lo_reg_321;
reg   [0:0] tmp_reg_325;
reg    ap_predicate_op39_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ls_writeRemainder;
reg   [511:0] prevWord_data_V_12;
reg   [63:0] prevWord_keep_V_15;
reg   [0:0] ls_firstWord;
reg    txEng_tcpPkgBuffer6_s_3_blk_n;
wire    ap_block_pp0_stage0;
reg    txEng_tcpPkgBuffer5_s_4_blk_n;
reg   [159:0] reg_140;
reg   [19:0] reg_144;
wire   [351:0] trunc_ln647_fu_184_p1;
reg   [351:0] trunc_ln647_reg_332;
reg   [43:0] p_Result_30_i_reg_338;
wire   [0:0] sendWord_last_V_fu_208_p2;
reg   [0:0] sendWord_last_V_reg_344;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109;
wire   [0:0] tmp_423_fu_176_p3;
wire   [0:0] xor_ln761_fu_226_p2;
wire   [511:0] p_Val2_54_fu_162_p1;
wire   [576:0] tmp_2_fu_292_p4;
reg    ap_block_pp0_stage0_01001;
wire   [576:0] tmp39_fu_308_p5;
wire   [19:0] p_Result_32_i_fu_198_p4;
wire   [63:0] p_Result_88_fu_255_p3;
wire   [63:0] p_Result_90_fu_269_p3;
wire   [511:0] p_Result_s_fu_248_p3;
wire   [511:0] p_Result_89_fu_262_p3;
wire   [63:0] sendWord_keep_V_fu_276_p3;
wire   [511:0] sendWord_data_V_fu_284_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_127;
reg    ap_condition_131;
reg    ap_condition_78;
reg    ap_condition_152;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ls_writeRemainder = 1'd0;
#0 prevWord_data_V_12 = 512'd0;
#0 prevWord_keep_V_15 = 64'd0;
#0 ls_firstWord = 1'd1;
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
    if ((1'b1 == ap_condition_78)) begin
        if ((1'b1 == ap_condition_131)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= 1'd0;
        end else if ((1'b1 == ap_condition_127)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_78)) begin
        if ((ls_writeRemainder_lo_load_fu_148_p1 == 1'd1)) begin
            ls_writeRemainder <= 1'd0;
        end else if ((1'b1 == ap_condition_127)) begin
            ls_writeRemainder <= xor_ln761_fu_226_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_325 == 1'd1) & (ls_writeRemainder_lo_reg_321 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ls_writeRemainder_lo_reg_321 <= ls_writeRemainder;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_88_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_30_i_reg_338 <= {{txEng_tcpPkgBuffer5_s_4_dout[555:512]}};
        sendWord_last_V_reg_344 <= sendWord_last_V_fu_208_p2;
        trunc_ln647_reg_332 <= trunc_ln647_fu_184_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_88_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prevWord_data_V_12 <= p_Val2_54_fu_162_p1;
        prevWord_keep_V_15 <= {{txEng_tcpPkgBuffer5_s_4_dout[575:512]}};
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_lo_load_fu_148_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_88_p3 == 1'd1) & (ls_writeRemainder == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_140 <= {{prevWord_data_V_12[511:352]}};
        reg_144 <= {{prevWord_keep_V_15[63:44]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_325 <= tmp_nbreadreq_fu_88_p3;
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
        txEng_tcpPkgBuffer5_s_4_blk_n = txEng_tcpPkgBuffer5_s_4_empty_n;
    end else begin
        txEng_tcpPkgBuffer5_s_4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        txEng_tcpPkgBuffer5_s_4_read = 1'b1;
    end else begin
        txEng_tcpPkgBuffer5_s_4_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_lo_reg_321 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1)))) begin
        txEng_tcpPkgBuffer6_s_3_blk_n = txEng_tcpPkgBuffer6_s_3_full_n;
    end else begin
        txEng_tcpPkgBuffer6_s_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_152)) begin
        if ((ls_writeRemainder_lo_reg_321 == 1'd1)) begin
            txEng_tcpPkgBuffer6_s_3_din = tmp39_fu_308_p5;
        end else if ((ap_predicate_op39_write_state2 == 1'b1)) begin
            txEng_tcpPkgBuffer6_s_3_din = tmp_2_fu_292_p4;
        end else begin
            txEng_tcpPkgBuffer6_s_3_din = 'bx;
        end
    end else begin
        txEng_tcpPkgBuffer6_s_3_din = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ls_writeRemainder_lo_reg_321 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1)))) begin
        txEng_tcpPkgBuffer6_s_3_write = 1'b1;
    end else begin
        txEng_tcpPkgBuffer6_s_3_write = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_lo_reg_321 == 1'd1) & (txEng_tcpPkgBuffer6_s_3_full_n == 1'b0)) | ((txEng_tcpPkgBuffer6_s_3_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpPkgBuffer5_s_4_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_lo_reg_321 == 1'd1) & (txEng_tcpPkgBuffer6_s_3_full_n == 1'b0)) | ((txEng_tcpPkgBuffer6_s_3_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpPkgBuffer5_s_4_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ls_writeRemainder_lo_reg_321 == 1'd1) & (txEng_tcpPkgBuffer6_s_3_full_n == 1'b0)) | ((txEng_tcpPkgBuffer6_s_3_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpPkgBuffer5_s_4_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_tcpPkgBuffer5_s_4_empty_n == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ls_writeRemainder_lo_reg_321 == 1'd1) & (txEng_tcpPkgBuffer6_s_3_full_n == 1'b0)) | ((txEng_tcpPkgBuffer6_s_3_full_n == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_127 = ((tmp_423_fu_176_p3 == 1'd1) & (tmp_nbreadreq_fu_88_p3 == 1'd1) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_condition_131 = ((tmp_nbreadreq_fu_88_p3 == 1'd1) & (tmp_423_fu_176_p3 == 1'd0) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_condition_152 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

always @ (*) begin
    ap_condition_78 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109 = 'bx;

always @ (*) begin
    ap_predicate_op39_write_state2 = ((tmp_reg_325 == 1'd1) & (ls_writeRemainder_lo_reg_321 == 1'd0));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((tmp_nbreadreq_fu_88_p3 == 1'd1) & (ls_writeRemainder == 1'd0));
end

assign ls_writeRemainder_lo_load_fu_148_p1 = ls_writeRemainder;

assign p_Result_32_i_fu_198_p4 = {{txEng_tcpPkgBuffer5_s_4_dout[575:556]}};

assign p_Result_88_fu_255_p3 = {{p_Result_30_i_reg_338}, {20'd1048575}};

assign p_Result_89_fu_262_p3 = {{trunc_ln647_reg_332}, {reg_140}};

assign p_Result_90_fu_269_p3 = {{p_Result_30_i_reg_338}, {reg_144}};

assign p_Result_s_fu_248_p3 = {{trunc_ln647_reg_332}, {160'd0}};

assign p_Val2_54_fu_162_p1 = txEng_tcpPkgBuffer5_s_4_dout[511:0];

assign sendWord_data_V_fu_284_p3 = ((ls_firstWord[0:0] === 1'b1) ? p_Result_s_fu_248_p3 : p_Result_89_fu_262_p3);

assign sendWord_keep_V_fu_276_p3 = ((ls_firstWord[0:0] === 1'b1) ? p_Result_88_fu_255_p3 : p_Result_90_fu_269_p3);

assign sendWord_last_V_fu_208_p2 = ((p_Result_32_i_fu_198_p4 == 20'd0) ? 1'b1 : 1'b0);

assign tmp39_fu_308_p5 = {{{{{{45'd17592186044416}, {reg_144}}}, {352'd0}}}, {reg_140}};

assign tmp_2_fu_292_p4 = {{{sendWord_last_V_reg_344}, {sendWord_keep_V_fu_276_p3}}, {sendWord_data_V_fu_284_p3}};

assign tmp_423_fu_176_p3 = txEng_tcpPkgBuffer5_s_4_dout[32'd576];

assign tmp_nbreadreq_fu_88_p3 = txEng_tcpPkgBuffer5_s_4_empty_n;

assign trunc_ln647_fu_184_p1 = txEng_tcpPkgBuffer5_s_4_dout[351:0];

assign xor_ln761_fu_226_p2 = (sendWord_last_V_fu_208_p2 ^ 1'd1);

endmodule //lshiftWordByOctet

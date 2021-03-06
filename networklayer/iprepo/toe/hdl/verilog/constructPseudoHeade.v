// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module constructPseudoHeade (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_ipMetaFifo_V_t_dout,
        rxEng_ipMetaFifo_V_t_empty_n,
        rxEng_ipMetaFifo_V_t_read,
        rxEng_ipMetaFifo_V_o_dout,
        rxEng_ipMetaFifo_V_o_empty_n,
        rxEng_ipMetaFifo_V_o_read,
        rxEng_ipMetaFifo_V_l_dout,
        rxEng_ipMetaFifo_V_l_empty_n,
        rxEng_ipMetaFifo_V_l_read,
        rxEng_pseudoHeaderFi_3_din,
        rxEng_pseudoHeaderFi_3_full_n,
        rxEng_pseudoHeaderFi_3_write,
        rxEng_pseudoHeaderFi_5_din,
        rxEng_pseudoHeaderFi_5_full_n,
        rxEng_pseudoHeaderFi_5_write,
        rxEng_pseudoHeaderFi_6_din,
        rxEng_pseudoHeaderFi_6_full_n,
        rxEng_pseudoHeaderFi_6_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv512_lc_1 = 512'd0;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rxEng_ipMetaFifo_V_t_dout;
input   rxEng_ipMetaFifo_V_t_empty_n;
output   rxEng_ipMetaFifo_V_t_read;
input  [31:0] rxEng_ipMetaFifo_V_o_dout;
input   rxEng_ipMetaFifo_V_o_empty_n;
output   rxEng_ipMetaFifo_V_o_read;
input  [15:0] rxEng_ipMetaFifo_V_l_dout;
input   rxEng_ipMetaFifo_V_l_empty_n;
output   rxEng_ipMetaFifo_V_l_read;
output  [511:0] rxEng_pseudoHeaderFi_3_din;
input   rxEng_pseudoHeaderFi_3_full_n;
output   rxEng_pseudoHeaderFi_3_write;
output  [63:0] rxEng_pseudoHeaderFi_5_din;
input   rxEng_pseudoHeaderFi_5_full_n;
output   rxEng_pseudoHeaderFi_5_write;
output  [0:0] rxEng_pseudoHeaderFi_6_din;
input   rxEng_pseudoHeaderFi_6_full_n;
output   rxEng_pseudoHeaderFi_6_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_ipMetaFifo_V_t_read;
reg rxEng_ipMetaFifo_V_o_read;
reg rxEng_ipMetaFifo_V_l_read;
reg rxEng_pseudoHeaderFi_3_write;
reg rxEng_pseudoHeaderFi_5_write;
reg rxEng_pseudoHeaderFi_6_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    io_acc_block_signal_op7;
wire   [0:0] state_3_load_load_fu_129_p1;
wire   [0:0] tmp_nbreadreq_fu_92_p5;
reg    ap_predicate_op7_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    io_acc_block_signal_op47;
reg   [0:0] state_3_load_reg_338;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] state_3;
reg   [15:0] header_idx;
reg   [95:0] header_header_V;
reg    rxEng_ipMetaFifo_V_t_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_ipMetaFifo_V_o_blk_n;
reg    rxEng_ipMetaFifo_V_l_blk_n;
reg    rxEng_pseudoHeaderFi_3_blk_n;
reg    rxEng_pseudoHeaderFi_5_blk_n;
reg    rxEng_pseudoHeaderFi_6_blk_n;
reg   [0:0] tmp_reg_342;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] select_ln82_fu_324_p3;
wire   [95:0] p_Result_s_fu_195_p5;
reg    ap_block_pp0_stage0_01001;
wire   [95:0] p_Result_143_fu_149_p5;
wire   [7:0] trunc_ln647_16_fu_183_p1;
wire   [7:0] p_Result_138_i_i_i_fu_173_p4;
wire   [95:0] p_Result_144_fu_161_p5;
wire   [15:0] agg_result_V_0_1_i_i_fu_187_p3;
wire   [24:0] Lo_assign_fu_239_p3;
wire   [0:0] icmp_ln647_fu_253_p2;
wire   [0:0] trunc_ln647_fu_259_p1;
wire   [0:0] tmp_510_fu_263_p3;
wire   [0:0] select_ln647_fu_271_p3;
wire   [95:0] zext_ln647_fu_279_p1;
wire   [95:0] select_ln647_13_fu_283_p3;
wire   [95:0] select_ln647_14_fu_291_p3;
wire   [95:0] p_Result_145_fu_299_p2;
wire   [0:0] icmp_ln82_fu_247_p2;
wire   [15:0] add_ln85_fu_318_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_123;
reg    ap_condition_90;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 state_3 = 1'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 96'd28334198897217871282176;
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
    if ((1'b1 == ap_condition_123)) begin
        if ((state_3_load_reg_338 == 1'd1)) begin
            header_idx <= select_ln82_fu_324_p3;
        end else if (((tmp_reg_342 == 1'd1) & (state_3_load_reg_338 == 1'd0))) begin
            header_idx <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_90)) begin
        if ((state_3_load_load_fu_129_p1 == 1'd1)) begin
            state_3 <= 1'd0;
        end else if (((tmp_nbreadreq_fu_92_p5 == 1'd1) & (state_3 == 1'd0))) begin
            state_3 <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_92_p5 == 1'd1) & (state_3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        header_header_V <= p_Result_s_fu_195_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        state_3_load_reg_338 <= state_3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (state_3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_342 <= tmp_nbreadreq_fu_92_p5;
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_l_blk_n = rxEng_ipMetaFifo_V_l_empty_n;
    end else begin
        rxEng_ipMetaFifo_V_l_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_l_read = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_l_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_o_blk_n = rxEng_ipMetaFifo_V_o_empty_n;
    end else begin
        rxEng_ipMetaFifo_V_o_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_o_read = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_o_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_t_blk_n = rxEng_ipMetaFifo_V_t_empty_n;
    end else begin
        rxEng_ipMetaFifo_V_t_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1))) begin
        rxEng_ipMetaFifo_V_t_read = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_t_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_3_blk_n = rxEng_pseudoHeaderFi_3_full_n;
    end else begin
        rxEng_pseudoHeaderFi_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_3_write = 1'b1;
    end else begin
        rxEng_pseudoHeaderFi_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_5_blk_n = rxEng_pseudoHeaderFi_5_full_n;
    end else begin
        rxEng_pseudoHeaderFi_5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_5_write = 1'b1;
    end else begin
        rxEng_pseudoHeaderFi_5_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_6_blk_n = rxEng_pseudoHeaderFi_6_full_n;
    end else begin
        rxEng_pseudoHeaderFi_6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (state_3_load_reg_338 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        rxEng_pseudoHeaderFi_6_write = 1'b1;
    end else begin
        rxEng_pseudoHeaderFi_6_write = 1'b0;
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

assign Lo_assign_fu_239_p3 = {{header_idx}, {9'd0}};

assign add_ln85_fu_318_p2 = (header_idx + 16'd1);

assign agg_result_V_0_1_i_i_fu_187_p3 = {{trunc_ln647_16_fu_183_p1}, {p_Result_138_i_i_i_fu_173_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((state_3_load_reg_338 == 1'd1) & (io_acc_block_signal_op47 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((state_3_load_reg_338 == 1'd1) & (io_acc_block_signal_op47 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((state_3_load_reg_338 == 1'd1) & (io_acc_block_signal_op47 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((io_acc_block_signal_op7 == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((state_3_load_reg_338 == 1'd1) & (io_acc_block_signal_op47 == 1'b0));
end

always @ (*) begin
    ap_condition_123 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_90 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op7_read_state1 = ((tmp_nbreadreq_fu_92_p5 == 1'd1) & (state_3 == 1'd0));
end

assign icmp_ln647_fu_253_p2 = ((Lo_assign_fu_239_p3 > 25'd95) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_247_p2 = ((Lo_assign_fu_239_p3 < 25'd96) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op47 = (rxEng_pseudoHeaderFi_6_full_n & rxEng_pseudoHeaderFi_5_full_n & rxEng_pseudoHeaderFi_3_full_n);

assign io_acc_block_signal_op7 = (rxEng_ipMetaFifo_V_t_empty_n & rxEng_ipMetaFifo_V_o_empty_n & rxEng_ipMetaFifo_V_l_empty_n);

assign p_Result_138_i_i_i_fu_173_p4 = {{rxEng_ipMetaFifo_V_l_dout[15:8]}};

assign p_Result_143_fu_149_p5 = {{header_header_V[95:32]}, {rxEng_ipMetaFifo_V_t_dout}};

assign p_Result_144_fu_161_p5 = {{p_Result_143_fu_149_p5[95:64]}, {rxEng_ipMetaFifo_V_o_dout}, {p_Result_143_fu_149_p5[31:0]}};

assign p_Result_145_fu_299_p2 = (select_ln647_14_fu_291_p3 & select_ln647_13_fu_283_p3);

assign p_Result_s_fu_195_p5 = {{agg_result_V_0_1_i_i_fu_187_p3}, {p_Result_144_fu_161_p5[79:0]}};

assign rxEng_pseudoHeaderFi_3_din = {{ap_const_lv512_lc_1[511:96]}, {p_Result_145_fu_299_p2}};

assign rxEng_pseudoHeaderFi_5_din = 64'd18446744073709551615;

assign rxEng_pseudoHeaderFi_6_din = 1'd1;

assign select_ln647_13_fu_283_p3 = ((icmp_ln647_fu_253_p2[0:0] === 1'b1) ? zext_ln647_fu_279_p1 : header_header_V);

assign select_ln647_14_fu_291_p3 = ((icmp_ln647_fu_253_p2[0:0] === 1'b1) ? 96'd17179869183 : 96'd79228162514264337593543950335);

assign select_ln647_fu_271_p3 = ((icmp_ln647_fu_253_p2[0:0] === 1'b1) ? trunc_ln647_fu_259_p1 : tmp_510_fu_263_p3);

assign select_ln82_fu_324_p3 = ((icmp_ln82_fu_247_p2[0:0] === 1'b1) ? add_ln85_fu_318_p2 : header_idx);

assign state_3_load_load_fu_129_p1 = state_3;

assign tmp_510_fu_263_p3 = header_header_V[32'd95];

assign tmp_nbreadreq_fu_92_p5 = (rxEng_ipMetaFifo_V_t_empty_n & rxEng_ipMetaFifo_V_o_empty_n & rxEng_ipMetaFifo_V_l_empty_n);

assign trunc_ln647_16_fu_183_p1 = rxEng_ipMetaFifo_V_l_dout[7:0];

assign trunc_ln647_fu_259_p1 = header_header_V[0:0];

assign zext_ln647_fu_279_p1 = select_ln647_fu_271_p3;

endmodule //constructPseudoHeade

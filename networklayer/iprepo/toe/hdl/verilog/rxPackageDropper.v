// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rxPackageDropper (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng_dataBuffer3_V_dout,
        rxEng_dataBuffer3_V_empty_n,
        rxEng_dataBuffer3_V_read,
        rxEng_fsmDropFifo_V_dout,
        rxEng_fsmDropFifo_V_empty_n,
        rxEng_fsmDropFifo_V_read,
        rxEng_metaHandlerDro_1_dout,
        rxEng_metaHandlerDro_1_empty_n,
        rxEng_metaHandlerDro_1_read,
        m_axis_rxwrite_data_TREADY,
        m_axis_rxwrite_data_TDATA,
        m_axis_rxwrite_data_TVALID,
        m_axis_rxwrite_data_TKEEP,
        m_axis_rxwrite_data_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [576:0] rxEng_dataBuffer3_V_dout;
input   rxEng_dataBuffer3_V_empty_n;
output   rxEng_dataBuffer3_V_read;
input  [0:0] rxEng_fsmDropFifo_V_dout;
input   rxEng_fsmDropFifo_V_empty_n;
output   rxEng_fsmDropFifo_V_read;
input  [0:0] rxEng_metaHandlerDro_1_dout;
input   rxEng_metaHandlerDro_1_empty_n;
output   rxEng_metaHandlerDro_1_read;
input   m_axis_rxwrite_data_TREADY;
output  [511:0] m_axis_rxwrite_data_TDATA;
output   m_axis_rxwrite_data_TVALID;
output  [63:0] m_axis_rxwrite_data_TKEEP;
output  [0:0] m_axis_rxwrite_data_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_dataBuffer3_V_read;
reg rxEng_fsmDropFifo_V_read;
reg rxEng_metaHandlerDro_1_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] grp_nbreadreq_fu_66_p3;
reg    ap_predicate_op7_read_state1;
reg    ap_predicate_op12_read_state1;
wire   [0:0] tmp_322_nbreadreq_fu_80_p3;
reg    ap_predicate_op19_read_state1;
wire   [0:0] tmp_nbreadreq_fu_94_p3;
reg    ap_predicate_op24_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [1:0] tpf_state_load_reg_181;
reg   [0:0] tmp_323_reg_193;
reg    ap_predicate_op30_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [1:0] tpf_state_load_reg_181_pp0_iter1_reg;
reg   [0:0] tmp_323_reg_193_pp0_iter1_reg;
reg    ap_predicate_op40_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] tpf_state;
reg    m_axis_rxwrite_data_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_metaHandlerDro_1_blk_n;
reg    rxEng_fsmDropFifo_V_blk_n;
reg    rxEng_dataBuffer3_V_blk_n;
wire   [0:0] grp_fu_121_p3;
reg   [0:0] tmp_last_V_reg_197;
wire   [511:0] tmp_data_V_fu_139_p1;
reg   [511:0] tmp_data_V_reg_202;
reg   [63:0] tmp_keep_V_reg_207;
reg    ap_block_pp0_stage0_subdone;
wire   [1:0] select_ln1635_fu_153_p3;
wire   [1:0] select_ln1621_fu_167_p3;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    m_axis_rxwrite_data_TVALID_int;
wire    m_axis_rxwrite_data_TREADY_int;
wire    regslice_both_rxBufferDataOut_V_data_V_U_vld_out;
wire    regslice_both_rxBufferDataOut_V_keep_V_U_apdone_blk;
wire    regslice_both_rxBufferDataOut_V_keep_V_U_ack_in_dummy;
wire    regslice_both_rxBufferDataOut_V_keep_V_U_vld_out;
wire    regslice_both_rxBufferDataOut_V_last_V_U_apdone_blk;
wire    regslice_both_rxBufferDataOut_V_last_V_U_ack_in_dummy;
wire    regslice_both_rxBufferDataOut_V_last_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 tpf_state = 2'd0;
end

regslice_both #(
    .DataWidth( 512 ))
regslice_both_rxBufferDataOut_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_data_V_reg_202),
    .vld_in(m_axis_rxwrite_data_TVALID_int),
    .ack_in(m_axis_rxwrite_data_TREADY_int),
    .data_out(m_axis_rxwrite_data_TDATA),
    .vld_out(regslice_both_rxBufferDataOut_V_data_V_U_vld_out),
    .ack_out(m_axis_rxwrite_data_TREADY),
    .apdone_blk(regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 64 ))
regslice_both_rxBufferDataOut_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_keep_V_reg_207),
    .vld_in(m_axis_rxwrite_data_TVALID_int),
    .ack_in(regslice_both_rxBufferDataOut_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_rxwrite_data_TKEEP),
    .vld_out(regslice_both_rxBufferDataOut_V_keep_V_U_vld_out),
    .ack_out(m_axis_rxwrite_data_TREADY),
    .apdone_blk(regslice_both_rxBufferDataOut_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_rxBufferDataOut_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_last_V_reg_197),
    .vld_in(m_axis_rxwrite_data_TVALID_int),
    .ack_in(regslice_both_rxBufferDataOut_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_rxwrite_data_TLAST),
    .vld_out(regslice_both_rxBufferDataOut_V_last_V_U_vld_out),
    .ack_out(m_axis_rxwrite_data_TREADY),
    .apdone_blk(regslice_both_rxBufferDataOut_V_last_V_U_apdone_blk)
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
    if (((tmp_nbreadreq_fu_94_p3 == 1'd1) & (tpf_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tpf_state <= select_ln1621_fu_167_p3;
    end else if (((tmp_322_nbreadreq_fu_80_p3 == 1'd1) & (tpf_state == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tpf_state <= select_ln1635_fu_153_p3;
    end else if ((((grp_fu_121_p3 == 1'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_fu_121_p3 == 1'd1) & (grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tpf_state <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tpf_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_323_reg_193 <= grp_nbreadreq_fu_66_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_323_reg_193_pp0_iter1_reg <= tmp_323_reg_193;
        tpf_state_load_reg_181 <= tpf_state;
        tpf_state_load_reg_181_pp0_iter1_reg <= tpf_state_load_reg_181;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_data_V_reg_202 <= tmp_data_V_fu_139_p1;
        tmp_keep_V_reg_207 <= {{rxEng_dataBuffer3_V_dout[575:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_reg_197 <= rxEng_dataBuffer3_V_dout[32'd576];
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
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op40_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_rxwrite_data_TDATA_blk_n = m_axis_rxwrite_data_TREADY_int;
    end else begin
        m_axis_rxwrite_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op30_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_rxwrite_data_TVALID_int = 1'b1;
    end else begin
        m_axis_rxwrite_data_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        rxEng_dataBuffer3_V_blk_n = rxEng_dataBuffer3_V_empty_n;
    end else begin
        rxEng_dataBuffer3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op7_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        rxEng_dataBuffer3_V_read = 1'b1;
    end else begin
        rxEng_dataBuffer3_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op19_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_fsmDropFifo_V_blk_n = rxEng_fsmDropFifo_V_empty_n;
    end else begin
        rxEng_fsmDropFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op19_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_fsmDropFifo_V_read = 1'b1;
    end else begin
        rxEng_fsmDropFifo_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_metaHandlerDro_1_blk_n = rxEng_metaHandlerDro_1_empty_n;
    end else begin
        rxEng_metaHandlerDro_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxEng_metaHandlerDro_1_read = 1'b1;
    end else begin
        rxEng_metaHandlerDro_1_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_metaHandlerDro_1_empty_n == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((rxEng_fsmDropFifo_V_empty_n == 1'b0) & (ap_predicate_op19_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_metaHandlerDro_1_empty_n == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((rxEng_fsmDropFifo_V_empty_n == 1'b0) & (ap_predicate_op19_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_metaHandlerDro_1_empty_n == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((rxEng_fsmDropFifo_V_empty_n == 1'b0) & (ap_predicate_op19_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((rxEng_metaHandlerDro_1_empty_n == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((rxEng_fsmDropFifo_V_empty_n == 1'b0) & (ap_predicate_op19_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)) | ((rxEng_dataBuffer3_V_empty_n == 1'b0) & (ap_predicate_op7_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = ((m_axis_rxwrite_data_TREADY_int == 1'b0) & (ap_predicate_op30_write_state2 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((m_axis_rxwrite_data_TREADY_int == 1'b0) & (ap_predicate_op40_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_rxBufferDataOut_V_data_V_U_apdone_blk == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op12_read_state1 = ((grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd2));
end

always @ (*) begin
    ap_predicate_op19_read_state1 = ((tmp_322_nbreadreq_fu_80_p3 == 1'd1) & (tpf_state == 2'd1));
end

always @ (*) begin
    ap_predicate_op24_read_state1 = ((tmp_nbreadreq_fu_94_p3 == 1'd1) & (tpf_state == 2'd0));
end

always @ (*) begin
    ap_predicate_op30_write_state2 = ((tpf_state_load_reg_181 == 2'd2) & (tmp_323_reg_193 == 1'd1));
end

always @ (*) begin
    ap_predicate_op40_write_state3 = ((tpf_state_load_reg_181_pp0_iter1_reg == 2'd2) & (tmp_323_reg_193_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op7_read_state1 = ((grp_nbreadreq_fu_66_p3 == 1'd1) & (tpf_state == 2'd3));
end

assign grp_fu_121_p3 = rxEng_dataBuffer3_V_dout[32'd576];

assign grp_nbreadreq_fu_66_p3 = rxEng_dataBuffer3_V_empty_n;

assign m_axis_rxwrite_data_TVALID = regslice_both_rxBufferDataOut_V_data_V_U_vld_out;

assign select_ln1621_fu_167_p3 = ((rxEng_metaHandlerDro_1_dout[0:0] === 1'b1) ? 2'd3 : 2'd1);

assign select_ln1635_fu_153_p3 = ((rxEng_fsmDropFifo_V_dout[0:0] === 1'b1) ? 2'd3 : 2'd2);

assign tmp_322_nbreadreq_fu_80_p3 = rxEng_fsmDropFifo_V_empty_n;

assign tmp_data_V_fu_139_p1 = rxEng_dataBuffer3_V_dout[511:0];

assign tmp_nbreadreq_fu_94_p3 = rxEng_metaHandlerDro_1_empty_n;

endmodule //rxPackageDropper

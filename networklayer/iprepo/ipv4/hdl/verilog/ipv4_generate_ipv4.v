// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ipv4_generate_ipv4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        tx_shift2ipv4Fifo_V_1_dout,
        tx_shift2ipv4Fifo_V_1_empty_n,
        tx_shift2ipv4Fifo_V_1_read,
        tx_shift2ipv4Fifo_V_2_dout,
        tx_shift2ipv4Fifo_V_2_empty_n,
        tx_shift2ipv4Fifo_V_2_read,
        tx_shift2ipv4Fifo_V_s_dout,
        tx_shift2ipv4Fifo_V_s_empty_n,
        tx_shift2ipv4Fifo_V_s_read,
        txEng_ipMetaDataFifoIn_V_TVALID,
        m_axis_tx_data_TREADY,
        txEng_ipMetaDataFifoIn_V_TDATA,
        txEng_ipMetaDataFifoIn_V_TREADY,
        m_axis_tx_data_TDATA,
        m_axis_tx_data_TVALID,
        m_axis_tx_data_TKEEP,
        m_axis_tx_data_TLAST,
        local_ipv4_address_V,
        protocol_V
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] tx_shift2ipv4Fifo_V_1_dout;
input   tx_shift2ipv4Fifo_V_1_empty_n;
output   tx_shift2ipv4Fifo_V_1_read;
input  [63:0] tx_shift2ipv4Fifo_V_2_dout;
input   tx_shift2ipv4Fifo_V_2_empty_n;
output   tx_shift2ipv4Fifo_V_2_read;
input  [0:0] tx_shift2ipv4Fifo_V_s_dout;
input   tx_shift2ipv4Fifo_V_s_empty_n;
output   tx_shift2ipv4Fifo_V_s_read;
input   txEng_ipMetaDataFifoIn_V_TVALID;
input   m_axis_tx_data_TREADY;
input  [47:0] txEng_ipMetaDataFifoIn_V_TDATA;
output   txEng_ipMetaDataFifoIn_V_TREADY;
output  [511:0] m_axis_tx_data_TDATA;
output   m_axis_tx_data_TVALID;
output  [63:0] m_axis_tx_data_TKEEP;
output  [0:0] m_axis_tx_data_TLAST;
input  [31:0] local_ipv4_address_V;
input  [7:0] protocol_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg tx_shift2ipv4Fifo_V_1_read;
reg tx_shift2ipv4Fifo_V_2_read;
reg tx_shift2ipv4Fifo_V_s_read;
reg txEng_ipMetaDataFifoIn_V_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    io_acc_block_signal_op9;
wire   [0:0] grp_nbreadreq_fu_134_p5;
reg    ap_predicate_op9_read_state1;
wire    io_acc_block_signal_op17;
reg    ap_predicate_op17_read_state1;
wire   [0:0] tmp_nbreadreq_fu_156_p3;
reg    ap_predicate_op24_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [1:0] gi_state_load_reg_462;
reg   [0:0] tmp_3_reg_466;
reg    ap_predicate_op56_write_state2;
reg   [0:0] tmp_4_reg_475;
reg    ap_predicate_op58_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [1:0] gi_state_load_reg_462_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_466_pp0_iter1_reg;
reg    ap_predicate_op67_write_state3;
reg   [0:0] tmp_4_reg_475_pp0_iter1_reg;
reg    ap_predicate_op70_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] gi_state;
reg   [15:0] header_idx_1;
reg   [159:0] header_header_V_1;
reg    txEng_ipMetaDataFifoIn_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    m_axis_tx_data_TDATA_blk_n;
reg    tx_shift2ipv4Fifo_V_1_blk_n;
reg    tx_shift2ipv4Fifo_V_2_blk_n;
reg    tx_shift2ipv4Fifo_V_s_blk_n;
reg   [511:0] reg_195;
reg   [63:0] reg_200;
wire   [0:0] grp_fu_191_p1;
reg   [0:0] tmp_last_V_3_reg_470;
reg   [0:0] tmp_last_V_reg_479;
reg   [0:0] tmp_reg_484;
wire   [511:0] currWord_data_V_fu_441_p3;
reg    ap_block_pp0_stage0_subdone;
wire   [1:0] select_ln222_fu_215_p3;
wire   [15:0] select_ln82_fu_433_p3;
wire   [159:0] p_Result_s_fu_317_p5;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] xor_ln222_fu_209_p2;
wire   [15:0] meta_length_V_fu_239_p4;
wire   [15:0] length_V_1_fu_249_p2;
wire   [7:0] trunc_ln647_fu_265_p1;
wire   [7:0] p_Result_2_i_i_i_fu_255_p4;
wire   [15:0] agg_result_V_0_1_i_i_fu_269_p3;
wire   [159:0] p_Result_11_fu_281_p5;
wire   [31:0] meta_their_address_V_fu_235_p1;
wire   [159:0] p_Result_12_fu_293_p5;
wire   [159:0] p_Result_13_fu_305_p5;
wire   [24:0] Lo_assign_fu_349_p3;
wire   [0:0] icmp_ln647_fu_363_p2;
wire   [0:0] trunc_ln647_2_fu_369_p1;
wire   [0:0] tmp_5_fu_373_p3;
wire   [0:0] select_ln647_fu_381_p3;
wire   [159:0] zext_ln647_fu_389_p1;
wire   [159:0] select_ln647_1_fu_393_p3;
wire   [159:0] select_ln647_2_fu_401_p3;
wire   [159:0] p_Result_14_fu_409_p2;
wire   [0:0] icmp_ln82_fu_357_p2;
wire   [15:0] add_ln85_fu_427_p2;
wire   [511:0] p_Result_9_fu_415_p5;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg   [511:0] m_axis_tx_data_TDATA_int;
reg    m_axis_tx_data_TVALID_int;
wire    m_axis_tx_data_TREADY_int;
wire    regslice_both_m_axis_tx_data_V_data_V_U_vld_out;
wire    regslice_both_m_axis_tx_data_V_keep_V_U_apdone_blk;
wire    regslice_both_m_axis_tx_data_V_keep_V_U_ack_in_dummy;
wire    regslice_both_m_axis_tx_data_V_keep_V_U_vld_out;
wire    regslice_both_m_axis_tx_data_V_last_V_U_apdone_blk;
reg   [0:0] m_axis_tx_data_TLAST_int;
wire    regslice_both_m_axis_tx_data_V_last_V_U_ack_in_dummy;
wire    regslice_both_m_axis_tx_data_V_last_V_U_vld_out;
reg    ap_condition_218;
reg    ap_condition_140;
reg    ap_condition_223;
reg    ap_condition_256;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 gi_state = 2'd0;
#0 header_idx_1 = 16'd0;
#0 header_header_V_1 = 160'd1180591620717411303493;
end

regslice_both #(
    .DataWidth( 512 ))
regslice_both_m_axis_tx_data_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_tx_data_TDATA_int),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(m_axis_tx_data_TREADY_int),
    .data_out(m_axis_tx_data_TDATA),
    .vld_out(regslice_both_m_axis_tx_data_V_data_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 64 ))
regslice_both_m_axis_tx_data_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(reg_200),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(regslice_both_m_axis_tx_data_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_tx_data_TKEEP),
    .vld_out(regslice_both_m_axis_tx_data_V_keep_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_m_axis_tx_data_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_m_axis_tx_data_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_tx_data_TLAST_int),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(regslice_both_m_axis_tx_data_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_tx_data_TLAST),
    .vld_out(regslice_both_m_axis_tx_data_V_last_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_m_axis_tx_data_V_last_V_U_apdone_blk)
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
    if ((1'b1 == ap_condition_140)) begin
        if (((tmp_nbreadreq_fu_156_p3 == 1'd1) & (gi_state == 2'd0))) begin
            gi_state <= 2'd2;
        end else if ((1'b1 == ap_condition_218)) begin
            gi_state <= 2'd0;
        end else if (((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd2))) begin
            gi_state <= select_ln222_fu_215_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_223)) begin
        if (((gi_state_load_reg_462 == 2'd0) & (tmp_reg_484 == 1'd1))) begin
            header_idx_1 <= 16'd0;
        end else if (((tmp_3_reg_466 == 1'd1) & (gi_state_load_reg_462 == 2'd2))) begin
            header_idx_1 <= select_ln82_fu_433_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gi_state_load_reg_462 <= gi_state;
        gi_state_load_reg_462_pp0_iter1_reg <= gi_state_load_reg_462;
        tmp_3_reg_466_pp0_iter1_reg <= tmp_3_reg_466;
        tmp_4_reg_475_pp0_iter1_reg <= tmp_4_reg_475;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_156_p3 == 1'd1) & (gi_state == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V_1 <= p_Result_s_fu_317_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_195 <= tx_shift2ipv4Fifo_V_1_dout;
        reg_200 <= tx_shift2ipv4Fifo_V_2_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_reg_466 <= grp_nbreadreq_fu_134_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_4_reg_475 <= grp_nbreadreq_fu_134_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_3_reg_470 <= tx_shift2ipv4Fifo_V_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_reg_479 <= tx_shift2ipv4Fifo_V_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((gi_state == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_484 <= tmp_nbreadreq_fu_156_p3;
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
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op56_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op70_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op67_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_tx_data_TDATA_blk_n = m_axis_tx_data_TREADY_int;
    end else begin
        m_axis_tx_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_256)) begin
        if ((ap_predicate_op58_write_state2 == 1'b1)) begin
            m_axis_tx_data_TDATA_int = reg_195;
        end else if ((ap_predicate_op56_write_state2 == 1'b1)) begin
            m_axis_tx_data_TDATA_int = currWord_data_V_fu_441_p3;
        end else begin
            m_axis_tx_data_TDATA_int = 'bx;
        end
    end else begin
        m_axis_tx_data_TDATA_int = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_256)) begin
        if ((ap_predicate_op58_write_state2 == 1'b1)) begin
            m_axis_tx_data_TLAST_int = tmp_last_V_reg_479;
        end else if ((ap_predicate_op56_write_state2 == 1'b1)) begin
            m_axis_tx_data_TLAST_int = tmp_last_V_3_reg_470;
        end else begin
            m_axis_tx_data_TLAST_int = 'bx;
        end
    end else begin
        m_axis_tx_data_TLAST_int = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op56_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axis_tx_data_TVALID_int = 1'b1;
    end else begin
        m_axis_tx_data_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        txEng_ipMetaDataFifoIn_V_TDATA_blk_n = txEng_ipMetaDataFifoIn_V_TVALID;
    end else begin
        txEng_ipMetaDataFifoIn_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        txEng_ipMetaDataFifoIn_V_TREADY = 1'b1;
    end else begin
        txEng_ipMetaDataFifoIn_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2ipv4Fifo_V_1_blk_n = tx_shift2ipv4Fifo_V_1_empty_n;
    end else begin
        tx_shift2ipv4Fifo_V_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ipv4Fifo_V_1_read = 1'b1;
    end else begin
        tx_shift2ipv4Fifo_V_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2ipv4Fifo_V_2_blk_n = tx_shift2ipv4Fifo_V_2_empty_n;
    end else begin
        tx_shift2ipv4Fifo_V_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ipv4Fifo_V_2_read = 1'b1;
    end else begin
        tx_shift2ipv4Fifo_V_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        tx_shift2ipv4Fifo_V_s_blk_n = tx_shift2ipv4Fifo_V_s_empty_n;
    end else begin
        tx_shift2ipv4Fifo_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op9_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        tx_shift2ipv4Fifo_V_s_read = 1'b1;
    end else begin
        tx_shift2ipv4Fifo_V_s_read = 1'b0;
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

assign Lo_assign_fu_349_p3 = {{header_idx_1}, {9'd0}};

assign add_ln85_fu_427_p2 = (header_idx_1 + 16'd1);

assign agg_result_V_0_1_i_i_fu_269_p3 = {{trunc_ln647_fu_265_p1}, {p_Result_2_i_i_i_fu_255_p4}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_ipMetaDataFifoIn_V_TVALID == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((io_acc_block_signal_op17 == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((io_acc_block_signal_op9 == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_ipMetaDataFifoIn_V_TVALID == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((io_acc_block_signal_op17 == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((io_acc_block_signal_op9 == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_ipMetaDataFifoIn_V_TVALID == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((io_acc_block_signal_op17 == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((io_acc_block_signal_op9 == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((txEng_ipMetaDataFifoIn_V_TVALID == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1)) | ((io_acc_block_signal_op17 == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((io_acc_block_signal_op9 == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = (((m_axis_tx_data_TREADY_int == 1'b0) & (ap_predicate_op56_write_state2 == 1'b1)) | ((m_axis_tx_data_TREADY_int == 1'b0) & (ap_predicate_op58_write_state2 == 1'b1)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = (((m_axis_tx_data_TREADY_int == 1'b0) & (ap_predicate_op70_write_state3 == 1'b1)) | ((m_axis_tx_data_TREADY_int == 1'b0) & (ap_predicate_op67_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_m_axis_tx_data_V_data_V_U_apdone_blk == 1'b1);
end

always @ (*) begin
    ap_condition_140 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_218 = ((grp_fu_191_p1 == 1'd1) & (grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd3));
end

always @ (*) begin
    ap_condition_223 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_256 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op17_read_state1 = ((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd3));
end

always @ (*) begin
    ap_predicate_op24_read_state1 = ((tmp_nbreadreq_fu_156_p3 == 1'd1) & (gi_state == 2'd0));
end

always @ (*) begin
    ap_predicate_op56_write_state2 = ((tmp_3_reg_466 == 1'd1) & (gi_state_load_reg_462 == 2'd2));
end

always @ (*) begin
    ap_predicate_op58_write_state2 = ((gi_state_load_reg_462 == 2'd3) & (tmp_4_reg_475 == 1'd1));
end

always @ (*) begin
    ap_predicate_op67_write_state3 = ((tmp_3_reg_466_pp0_iter1_reg == 1'd1) & (gi_state_load_reg_462_pp0_iter1_reg == 2'd2));
end

always @ (*) begin
    ap_predicate_op70_write_state3 = ((gi_state_load_reg_462_pp0_iter1_reg == 2'd3) & (tmp_4_reg_475_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((grp_nbreadreq_fu_134_p5 == 1'd1) & (gi_state == 2'd2));
end

assign currWord_data_V_fu_441_p3 = ((icmp_ln82_fu_357_p2[0:0] === 1'b1) ? p_Result_9_fu_415_p5 : reg_195);

assign grp_fu_191_p1 = tx_shift2ipv4Fifo_V_s_dout;

assign grp_nbreadreq_fu_134_p5 = (tx_shift2ipv4Fifo_V_s_empty_n & tx_shift2ipv4Fifo_V_2_empty_n & tx_shift2ipv4Fifo_V_1_empty_n);

assign icmp_ln647_fu_363_p2 = ((Lo_assign_fu_349_p3 > 25'd159) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_357_p2 = ((Lo_assign_fu_349_p3 < 25'd160) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op17 = (tx_shift2ipv4Fifo_V_s_empty_n & tx_shift2ipv4Fifo_V_2_empty_n & tx_shift2ipv4Fifo_V_1_empty_n);

assign io_acc_block_signal_op9 = (tx_shift2ipv4Fifo_V_s_empty_n & tx_shift2ipv4Fifo_V_2_empty_n & tx_shift2ipv4Fifo_V_1_empty_n);

assign length_V_1_fu_249_p2 = (16'd20 + meta_length_V_fu_239_p4);

assign m_axis_tx_data_TVALID = regslice_both_m_axis_tx_data_V_data_V_U_vld_out;

assign meta_length_V_fu_239_p4 = {{txEng_ipMetaDataFifoIn_V_TDATA[47:32]}};

assign meta_their_address_V_fu_235_p1 = txEng_ipMetaDataFifoIn_V_TDATA[31:0];

assign p_Result_11_fu_281_p5 = {{header_header_V_1[159:32]}, {agg_result_V_0_1_i_i_fu_269_p3}, {header_header_V_1[15:0]}};

assign p_Result_12_fu_293_p5 = {{meta_their_address_V_fu_235_p1}, {p_Result_11_fu_281_p5[127:0]}};

assign p_Result_13_fu_305_p5 = {{p_Result_12_fu_293_p5[159:128]}, {local_ipv4_address_V}, {p_Result_12_fu_293_p5[95:0]}};

assign p_Result_14_fu_409_p2 = (select_ln647_2_fu_401_p3 & select_ln647_1_fu_393_p3);

assign p_Result_2_i_i_i_fu_255_p4 = {{length_V_1_fu_249_p2[15:8]}};

assign p_Result_9_fu_415_p5 = {{reg_195[511:160]}, {p_Result_14_fu_409_p2}};

assign p_Result_s_fu_317_p5 = {{p_Result_13_fu_305_p5[159:80]}, {protocol_V}, {p_Result_13_fu_305_p5[71:0]}};

assign select_ln222_fu_215_p3 = ((xor_ln222_fu_209_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign select_ln647_1_fu_393_p3 = ((icmp_ln647_fu_363_p2[0:0] === 1'b1) ? zext_ln647_fu_389_p1 : header_header_V_1);

assign select_ln647_2_fu_401_p3 = ((icmp_ln647_fu_363_p2[0:0] === 1'b1) ? 160'd316912650057057350374175801343 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln647_fu_381_p3 = ((icmp_ln647_fu_363_p2[0:0] === 1'b1) ? trunc_ln647_2_fu_369_p1 : tmp_5_fu_373_p3);

assign select_ln82_fu_433_p3 = ((icmp_ln82_fu_357_p2[0:0] === 1'b1) ? add_ln85_fu_427_p2 : header_idx_1);

assign tmp_5_fu_373_p3 = header_header_V_1[32'd159];

assign tmp_nbreadreq_fu_156_p3 = txEng_ipMetaDataFifoIn_V_TVALID;

assign trunc_ln647_2_fu_369_p1 = header_header_V_1[0:0];

assign trunc_ln647_fu_265_p1 = length_V_1_fu_249_p2[7:0];

assign xor_ln222_fu_209_p2 = (tx_shift2ipv4Fifo_V_s_dout ^ 1'd1);

assign zext_ln647_fu_389_p1 = select_ln647_fu_381_p3;

endmodule //ipv4_generate_ipv4

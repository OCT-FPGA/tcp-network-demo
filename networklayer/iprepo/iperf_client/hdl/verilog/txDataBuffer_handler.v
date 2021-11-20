// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module txDataBuffer_handler (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txDataBuffer_V_data_s_dout,
        txDataBuffer_V_data_s_empty_n,
        txDataBuffer_V_data_s_read,
        txDataBuffer_V_keep_s_dout,
        txDataBuffer_V_keep_s_empty_n,
        txDataBuffer_V_keep_s_read,
        txDataBuffer_V_last_s_dout,
        txDataBuffer_V_last_s_empty_n,
        txDataBuffer_V_last_s_read,
        m_axis_tx_data_TREADY,
        m_axis_tx_data_TDATA,
        m_axis_tx_data_TVALID,
        m_axis_tx_data_TKEEP,
        m_axis_tx_data_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [511:0] txDataBuffer_V_data_s_dout;
input   txDataBuffer_V_data_s_empty_n;
output   txDataBuffer_V_data_s_read;
input  [63:0] txDataBuffer_V_keep_s_dout;
input   txDataBuffer_V_keep_s_empty_n;
output   txDataBuffer_V_keep_s_read;
input  [0:0] txDataBuffer_V_last_s_dout;
input   txDataBuffer_V_last_s_empty_n;
output   txDataBuffer_V_last_s_read;
input   m_axis_tx_data_TREADY;
output  [511:0] m_axis_tx_data_TDATA;
output   m_axis_tx_data_TVALID;
output  [63:0] m_axis_tx_data_TKEEP;
output  [0:0] m_axis_tx_data_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txDataBuffer_V_data_s_read;
reg txDataBuffer_V_keep_s_read;
reg txDataBuffer_V_last_s_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    io_acc_block_signal_op6;
wire   [0:0] tmp_nbreadreq_fu_40_p5;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_reg_87;
reg    ap_block_state2_io;
wire    regslice_both_txData_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_reg_87_pp0_iter1_reg;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg    m_axis_tx_data_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    txDataBuffer_V_data_s_blk_n;
reg    txDataBuffer_V_keep_s_blk_n;
reg    txDataBuffer_V_last_s_blk_n;
reg   [511:0] tmp_data_V_reg_91;
reg   [63:0] tmp_keep_V_reg_96;
reg   [0:0] tmp_last_V_reg_101;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    m_axis_tx_data_TVALID_int;
wire    m_axis_tx_data_TREADY_int;
wire    regslice_both_txData_V_data_V_U_vld_out;
wire    regslice_both_txData_V_keep_V_U_apdone_blk;
wire    regslice_both_txData_V_keep_V_U_ack_in_dummy;
wire    regslice_both_txData_V_keep_V_U_vld_out;
wire    regslice_both_txData_V_last_V_U_apdone_blk;
wire    regslice_both_txData_V_last_V_U_ack_in_dummy;
wire    regslice_both_txData_V_last_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

regslice_both #(
    .DataWidth( 512 ))
regslice_both_txData_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_data_V_reg_91),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(m_axis_tx_data_TREADY_int),
    .data_out(m_axis_tx_data_TDATA),
    .vld_out(regslice_both_txData_V_data_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_txData_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 64 ))
regslice_both_txData_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_keep_V_reg_96),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(regslice_both_txData_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_tx_data_TKEEP),
    .vld_out(regslice_both_txData_V_keep_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_txData_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_txData_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_last_V_reg_101),
    .vld_in(m_axis_tx_data_TVALID_int),
    .ack_in(regslice_both_txData_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_tx_data_TLAST),
    .vld_out(regslice_both_txData_V_last_V_U_vld_out),
    .ack_out(m_axis_tx_data_TREADY),
    .apdone_blk(regslice_both_txData_V_last_V_U_apdone_blk)
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
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_data_V_reg_91 <= txDataBuffer_V_data_s_dout;
        tmp_keep_V_reg_96 <= txDataBuffer_V_keep_s_dout;
        tmp_last_V_reg_101 <= txDataBuffer_V_last_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_87 <= tmp_nbreadreq_fu_40_p5;
        tmp_reg_87_pp0_iter1_reg <= tmp_reg_87;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((((1'b0 == ap_block_pp0_stage0) & (tmp_reg_87_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (tmp_reg_87 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        m_axis_tx_data_TDATA_blk_n = m_axis_tx_data_TREADY_int;
    end else begin
        m_axis_tx_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_87 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axis_tx_data_TVALID_int = 1'b1;
    end else begin
        m_axis_tx_data_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_data_s_blk_n = txDataBuffer_V_data_s_empty_n;
    end else begin
        txDataBuffer_V_data_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_data_s_read = 1'b1;
    end else begin
        txDataBuffer_V_data_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_keep_s_blk_n = txDataBuffer_V_keep_s_empty_n;
    end else begin
        txDataBuffer_V_keep_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_keep_s_read = 1'b1;
    end else begin
        txDataBuffer_V_keep_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_last_s_blk_n = txDataBuffer_V_last_s_empty_n;
    end else begin
        txDataBuffer_V_last_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_40_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txDataBuffer_V_last_s_read = 1'b1;
    end else begin
        txDataBuffer_V_last_s_read = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((regslice_both_txData_V_data_V_U_apdone_blk == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p5 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_txData_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p5 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_txData_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p5 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_40_p5 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((tmp_reg_87 == 1'd1) & (m_axis_tx_data_TREADY_int == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((tmp_reg_87_pp0_iter1_reg == 1'd1) & (m_axis_tx_data_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_txData_V_data_V_U_apdone_blk == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign io_acc_block_signal_op6 = (txDataBuffer_V_last_s_empty_n & txDataBuffer_V_keep_s_empty_n & txDataBuffer_V_data_s_empty_n);

assign m_axis_tx_data_TVALID = regslice_both_txData_V_data_V_U_vld_out;

assign tmp_nbreadreq_fu_40_p5 = (txDataBuffer_V_last_s_empty_n & txDataBuffer_V_keep_s_empty_n & txDataBuffer_V_data_s_empty_n);

endmodule //txDataBuffer_handler

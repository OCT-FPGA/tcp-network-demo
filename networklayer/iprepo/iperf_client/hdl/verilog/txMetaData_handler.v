// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module txMetaData_handler (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txMetaDataBuffer_V_s_dout,
        txMetaDataBuffer_V_s_empty_n,
        txMetaDataBuffer_V_s_read,
        txMetaDataBuffer_V_l_dout,
        txMetaDataBuffer_V_l_empty_n,
        txMetaDataBuffer_V_l_read,
        txMetaData_V_TREADY,
        txMetaData_V_TDATA,
        txMetaData_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] txMetaDataBuffer_V_s_dout;
input   txMetaDataBuffer_V_s_empty_n;
output   txMetaDataBuffer_V_s_read;
input  [15:0] txMetaDataBuffer_V_l_dout;
input   txMetaDataBuffer_V_l_empty_n;
output   txMetaDataBuffer_V_l_read;
input   txMetaData_V_TREADY;
output  [31:0] txMetaData_V_TDATA;
output   txMetaData_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txMetaDataBuffer_V_s_read;
reg txMetaDataBuffer_V_l_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    io_acc_block_signal_op6;
wire   [0:0] tmp_nbreadreq_fu_36_p4;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_reg_76;
reg    ap_block_state2_io;
wire    regslice_both_txMetaData_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_reg_76_pp0_iter1_reg;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg    txMetaData_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    txMetaDataBuffer_V_s_blk_n;
reg    txMetaDataBuffer_V_l_blk_n;
reg   [15:0] tmp_sessionID_V_reg_80;
reg   [15:0] tmp_length_V_reg_85;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [31:0] txMetaData_V_TDATA_int;
reg    txMetaData_V_TVALID_int;
wire    txMetaData_V_TREADY_int;
wire    regslice_both_txMetaData_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

regslice_both #(
    .DataWidth( 32 ))
regslice_both_txMetaData_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(txMetaData_V_TDATA_int),
    .vld_in(txMetaData_V_TVALID_int),
    .ack_in(txMetaData_V_TREADY_int),
    .data_out(txMetaData_V_TDATA),
    .vld_out(regslice_both_txMetaData_V_U_vld_out),
    .ack_out(txMetaData_V_TREADY),
    .apdone_blk(regslice_both_txMetaData_V_U_apdone_blk)
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_36_p4 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_length_V_reg_85 <= txMetaDataBuffer_V_l_dout;
        tmp_sessionID_V_reg_80 <= txMetaDataBuffer_V_s_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_76 <= tmp_nbreadreq_fu_36_p4;
        tmp_reg_76_pp0_iter1_reg <= tmp_reg_76;
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_36_p4 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txMetaDataBuffer_V_l_blk_n = txMetaDataBuffer_V_l_empty_n;
    end else begin
        txMetaDataBuffer_V_l_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_36_p4 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txMetaDataBuffer_V_l_read = 1'b1;
    end else begin
        txMetaDataBuffer_V_l_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_36_p4 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txMetaDataBuffer_V_s_blk_n = txMetaDataBuffer_V_s_empty_n;
    end else begin
        txMetaDataBuffer_V_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_36_p4 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txMetaDataBuffer_V_s_read = 1'b1;
    end else begin
        txMetaDataBuffer_V_s_read = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (tmp_reg_76_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (tmp_reg_76 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        txMetaData_V_TDATA_blk_n = txMetaData_V_TREADY_int;
    end else begin
        txMetaData_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_76 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txMetaData_V_TVALID_int = 1'b1;
    end else begin
        txMetaData_V_TVALID_int = 1'b0;
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
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((regslice_both_txMetaData_V_U_apdone_blk == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_36_p4 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_txMetaData_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_36_p4 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_txMetaData_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_36_p4 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_36_p4 == 1'd1) & (io_acc_block_signal_op6 == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((tmp_reg_76 == 1'd1) & (txMetaData_V_TREADY_int == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((tmp_reg_76_pp0_iter1_reg == 1'd1) & (txMetaData_V_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_txMetaData_V_U_apdone_blk == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign io_acc_block_signal_op6 = (txMetaDataBuffer_V_s_empty_n & txMetaDataBuffer_V_l_empty_n);

assign tmp_nbreadreq_fu_36_p4 = (txMetaDataBuffer_V_s_empty_n & txMetaDataBuffer_V_l_empty_n);

assign txMetaData_V_TDATA_int = {{tmp_length_V_reg_85}, {tmp_sessionID_V_reg_80}};

assign txMetaData_V_TVALID = regslice_both_txMetaData_V_U_vld_out;

endmodule //txMetaData_handler

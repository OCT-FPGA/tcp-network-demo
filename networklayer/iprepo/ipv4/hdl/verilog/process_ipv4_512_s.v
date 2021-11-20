// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module process_ipv4_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_rx_data_TVALID,
        rx_process2dropFifo_1_1_din,
        rx_process2dropFifo_1_1_full_n,
        rx_process2dropFifo_1_1_write,
        rx_process2dropFifo_2_0_din,
        rx_process2dropFifo_2_0_full_n,
        rx_process2dropFifo_2_0_write,
        rx_process2dropFifo_s_2_din,
        rx_process2dropFifo_s_2_full_n,
        rx_process2dropFifo_s_2_write,
        rx_process2dropLengt_1_din,
        rx_process2dropLengt_1_full_n,
        rx_process2dropLengt_1_write,
        MetaOut_V_TREADY,
        s_axis_rx_data_TDATA,
        s_axis_rx_data_TREADY,
        s_axis_rx_data_TKEEP,
        s_axis_rx_data_TLAST,
        MetaOut_V_TDATA,
        MetaOut_V_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_rx_data_TVALID;
output  [511:0] rx_process2dropFifo_1_1_din;
input   rx_process2dropFifo_1_1_full_n;
output   rx_process2dropFifo_1_1_write;
output  [63:0] rx_process2dropFifo_2_0_din;
input   rx_process2dropFifo_2_0_full_n;
output   rx_process2dropFifo_2_0_write;
output  [0:0] rx_process2dropFifo_s_2_din;
input   rx_process2dropFifo_s_2_full_n;
output   rx_process2dropFifo_s_2_write;
output  [3:0] rx_process2dropLengt_1_din;
input   rx_process2dropLengt_1_full_n;
output   rx_process2dropLengt_1_write;
input   MetaOut_V_TREADY;
input  [511:0] s_axis_rx_data_TDATA;
output   s_axis_rx_data_TREADY;
input  [63:0] s_axis_rx_data_TKEEP;
input  [0:0] s_axis_rx_data_TLAST;
output  [47:0] MetaOut_V_TDATA;
output   MetaOut_V_TVALID;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rx_process2dropFifo_1_1_write;
reg rx_process2dropFifo_2_0_write;
reg rx_process2dropFifo_s_2_write;
reg rx_process2dropLengt_1_write;
reg s_axis_rx_data_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_98_p5;
reg    ap_block_state1_pp0_stage0_iter0;
wire    io_acc_block_signal_op39;
reg   [0:0] tmp_reg_421;
reg   [0:0] or_ln73_reg_456;
reg    ap_predicate_op39_write_state2;
reg   [0:0] metaWritten_load_reg_461;
reg    ap_predicate_op42_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_predicate_op47_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_MetaOut_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_reg_421_pp0_iter1_reg;
reg   [0:0] or_ln73_reg_456_pp0_iter1_reg;
reg   [0:0] metaWritten_load_reg_461_pp0_iter1_reg;
reg    ap_predicate_op64_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx;
reg   [159:0] header_header_V;
reg   [0:0] metaWritten;
reg    s_axis_rx_data_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    MetaOut_V_TDATA_blk_n;
reg    rx_process2dropFifo_1_1_blk_n;
reg    rx_process2dropFifo_2_0_blk_n;
reg    rx_process2dropFifo_s_2_blk_n;
reg    rx_process2dropLengt_1_blk_n;
reg   [511:0] tmp_data_V_reg_425;
reg   [63:0] tmp_keep_V_reg_430;
reg   [0:0] tmp_last_V_reg_435;
wire   [15:0] add_ln67_fu_315_p2;
wire   [0:0] header_ready_load_load_fu_195_p1;
wire   [0:0] or_ln73_fu_321_p2;
wire   [0:0] metaWritten_load_load_fu_327_p1;
wire   [0:0] or_ln63_fu_398_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147;
wire   [15:0] ap_phi_reg_pp0_iter0_phi_ln73_reg_158;
reg   [15:0] ap_phi_reg_pp0_iter1_phi_ln73_reg_158;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_167;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_167;
wire   [0:0] and_ln63_fu_386_p2;
reg   [0:0] ap_sig_allocacmp_header_ready_load;
wire   [15:0] select_ln63_fu_391_p3;
reg   [15:0] ap_sig_allocacmp_header_idx_load;
wire   [159:0] p_Result_s_fu_303_p2;
wire   [0:0] xor_ln63_fu_381_p2;
reg   [0:0] ap_sig_allocacmp_metaWritten_load;
reg    ap_block_pp0_stage0_01001;
wire   [24:0] Lo_assign_fu_203_p3;
wire   [0:0] trunc_ln414_fu_225_p1;
wire   [0:0] icmp_ln414_fu_219_p2;
wire   [159:0] st3_fu_229_p3;
wire   [159:0] tmp_V_1_fu_211_p1;
wire   [159:0] select_ln414_fu_237_p3;
reg   [159:0] tmp_1_fu_245_p4;
wire   [159:0] select_ln414_2_fu_263_p3;
wire   [159:0] select_ln414_3_fu_271_p3;
wire   [159:0] and_ln414_fu_279_p2;
wire   [159:0] xor_ln414_fu_285_p2;
wire   [159:0] select_ln414_1_fu_255_p3;
wire   [159:0] and_ln414_1_fu_291_p2;
wire   [159:0] and_ln414_2_fu_297_p2;
wire   [7:0] p_Result_2_1_i_i_fu_360_p4;
wire   [7:0] p_Result_2_i_i19_i_fu_350_p4;
wire   [31:0] tmp_their_address_V_fu_340_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [47:0] MetaOut_V_TDATA_int;
reg    MetaOut_V_TVALID_int;
wire    MetaOut_V_TREADY_int;
wire    regslice_both_MetaOut_V_U_vld_out;
reg    ap_condition_120;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 160'd1180591620717411303493;
#0 metaWritten = 1'd0;
end

regslice_both #(
    .DataWidth( 48 ))
regslice_both_MetaOut_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(MetaOut_V_TDATA_int),
    .vld_in(MetaOut_V_TVALID_int),
    .ack_in(MetaOut_V_TREADY_int),
    .data_out(MetaOut_V_TDATA),
    .vld_out(regslice_both_MetaOut_V_U_vld_out),
    .ack_out(MetaOut_V_TREADY),
    .apdone_blk(regslice_both_MetaOut_V_U_apdone_blk)
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
    if (((metaWritten_load_load_fu_327_p1 == 1'd0) & (or_ln73_fu_321_p2 == 1'd1) & (tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_167 <= 1'd1;
    end else if ((((metaWritten_load_load_fu_327_p1 == 1'd1) & (or_ln73_fu_321_p2 == 1'd1) & (tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((or_ln73_fu_321_p2 == 1'd0) & (tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_167 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_167 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_167;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        if (((header_ready_load_load_fu_195_p1 == 1'd0) & (tmp_nbreadreq_fu_98_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_158 <= add_ln67_fu_315_p2;
        end else if (((header_ready_load_load_fu_195_p1 == 1'd1) & (tmp_nbreadreq_fu_98_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_158 <= ap_sig_allocacmp_header_idx_load;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_158 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_158;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((header_ready_load_load_fu_195_p1 == 1'd0) & (tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V <= p_Result_s_fu_303_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx <= select_ln63_fu_391_p3;
        header_ready <= and_ln63_fu_386_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_421 == 1'd1) & (or_ln63_fu_398_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        metaWritten <= xor_ln63_fu_381_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_98_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        metaWritten_load_reg_461 <= ap_sig_allocacmp_metaWritten_load;
        or_ln73_reg_456 <= or_ln73_fu_321_p2;
        tmp_data_V_reg_425 <= s_axis_rx_data_TDATA;
        tmp_keep_V_reg_430 <= s_axis_rx_data_TKEEP;
        tmp_last_V_reg_435 <= s_axis_rx_data_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        metaWritten_load_reg_461_pp0_iter1_reg <= metaWritten_load_reg_461;
        or_ln73_reg_456_pp0_iter1_reg <= or_ln73_reg_456;
        tmp_reg_421 <= tmp_nbreadreq_fu_98_p5;
        tmp_reg_421_pp0_iter1_reg <= tmp_reg_421;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op64_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        MetaOut_V_TDATA_blk_n = MetaOut_V_TREADY_int;
    end else begin
        MetaOut_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        MetaOut_V_TVALID_int = 1'b1;
    end else begin
        MetaOut_V_TVALID_int = 1'b0;
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
    if ((tmp_nbreadreq_fu_98_p5 == 1'd1)) begin
        if ((header_ready_load_load_fu_195_p1 == 1'd0)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4 = 1'd1;
        end else if ((header_ready_load_load_fu_195_p1 == 1'd1)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4 = 1'd0;
        end else begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147;
        end
    end else begin
        ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147;
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
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_idx_load = select_ln63_fu_391_p3;
    end else begin
        ap_sig_allocacmp_header_idx_load = header_idx;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_ready_load = and_ln63_fu_386_p2;
    end else begin
        ap_sig_allocacmp_header_ready_load = header_ready;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (or_ln63_fu_398_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_metaWritten_load = xor_ln63_fu_381_p2;
    end else begin
        ap_sig_allocacmp_metaWritten_load = metaWritten;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_process2dropFifo_1_1_blk_n = rx_process2dropFifo_1_1_full_n;
    end else begin
        rx_process2dropFifo_1_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_process2dropFifo_1_1_write = 1'b1;
    end else begin
        rx_process2dropFifo_1_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_process2dropFifo_2_0_blk_n = rx_process2dropFifo_2_0_full_n;
    end else begin
        rx_process2dropFifo_2_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_process2dropFifo_2_0_write = 1'b1;
    end else begin
        rx_process2dropFifo_2_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_process2dropFifo_s_2_blk_n = rx_process2dropFifo_s_2_full_n;
    end else begin
        rx_process2dropFifo_s_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op39_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_process2dropFifo_s_2_write = 1'b1;
    end else begin
        rx_process2dropFifo_s_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op42_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_process2dropLengt_1_blk_n = rx_process2dropLengt_1_full_n;
    end else begin
        rx_process2dropLengt_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op42_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rx_process2dropLengt_1_write = 1'b1;
    end else begin
        rx_process2dropLengt_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_rx_data_TDATA_blk_n = s_axis_rx_data_TVALID;
    end else begin
        s_axis_rx_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_98_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_rx_data_TREADY = 1'b1;
    end else begin
        s_axis_rx_data_TREADY = 1'b0;
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

assign Lo_assign_fu_203_p3 = {{ap_sig_allocacmp_header_idx_load}, {9'd0}};

assign MetaOut_V_TDATA_int = {{{p_Result_2_1_i_i_fu_360_p4}, {p_Result_2_i_i19_i_fu_350_p4}}, {tmp_their_address_V_fu_340_p4}};

assign MetaOut_V_TVALID = regslice_both_MetaOut_V_U_vld_out;

assign add_ln67_fu_315_p2 = (16'd1 + ap_sig_allocacmp_header_idx_load);

assign and_ln414_1_fu_291_p2 = (xor_ln414_fu_285_p2 & header_header_V);

assign and_ln414_2_fu_297_p2 = (select_ln414_1_fu_255_p3 & and_ln414_fu_279_p2);

assign and_ln414_fu_279_p2 = (select_ln414_3_fu_271_p3 & select_ln414_2_fu_263_p3);

assign and_ln63_fu_386_p2 = (xor_ln63_fu_381_p2 & or_ln73_reg_456);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((regslice_both_MetaOut_V_U_apdone_blk == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op42_write_state2 == 1'b1)) | ((io_acc_block_signal_op39 == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_98_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op42_write_state2 == 1'b1)) | ((io_acc_block_signal_op39 == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_98_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_MetaOut_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op42_write_state2 == 1'b1)) | ((io_acc_block_signal_op39 == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_98_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_MetaOut_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_98_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_io = ((1'b0 == MetaOut_V_TREADY_int) & (ap_predicate_op47_write_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op42_write_state2 == 1'b1)) | ((io_acc_block_signal_op39 == 1'b0) & (ap_predicate_op39_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_io = ((1'b0 == MetaOut_V_TREADY_int) & (ap_predicate_op64_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_MetaOut_V_U_apdone_blk == 1'b1);
end

always @ (*) begin
    ap_condition_120 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_167 = 'bx;

assign ap_phi_reg_pp0_iter0_phi_ln73_reg_158 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147 = 'bx;

always @ (*) begin
    ap_predicate_op39_write_state2 = ((or_ln73_reg_456 == 1'd1) & (tmp_reg_421 == 1'd1));
end

always @ (*) begin
    ap_predicate_op42_write_state2 = ((metaWritten_load_reg_461 == 1'd0) & (or_ln73_reg_456 == 1'd1) & (tmp_reg_421 == 1'd1));
end

always @ (*) begin
    ap_predicate_op47_write_state2 = ((metaWritten_load_reg_461 == 1'd0) & (or_ln73_reg_456 == 1'd1) & (tmp_reg_421 == 1'd1));
end

always @ (*) begin
    ap_predicate_op64_write_state3 = ((metaWritten_load_reg_461_pp0_iter1_reg == 1'd0) & (tmp_reg_421_pp0_iter1_reg == 1'd1) & (or_ln73_reg_456_pp0_iter1_reg == 1'd1));
end

assign header_ready_load_load_fu_195_p1 = ap_sig_allocacmp_header_ready_load;

assign icmp_ln414_fu_219_p2 = ((Lo_assign_fu_203_p3 > 25'd159) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op39 = (rx_process2dropFifo_s_2_full_n & rx_process2dropFifo_2_0_full_n & rx_process2dropFifo_1_1_full_n);

assign metaWritten_load_load_fu_327_p1 = ap_sig_allocacmp_metaWritten_load;

assign or_ln63_fu_398_p2 = (tmp_last_V_reg_435 | ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_167);

assign or_ln73_fu_321_p2 = (ap_sig_allocacmp_header_ready_load | ap_phi_mux_write_flag_1_i_i_phi_fu_150_p4);

assign p_Result_2_1_i_i_fu_360_p4 = {{header_header_V[23:16]}};

assign p_Result_2_i_i19_i_fu_350_p4 = {{header_header_V[31:24]}};

assign p_Result_s_fu_303_p2 = (and_ln414_2_fu_297_p2 | and_ln414_1_fu_291_p2);

assign rx_process2dropFifo_1_1_din = tmp_data_V_reg_425;

assign rx_process2dropFifo_2_0_din = tmp_keep_V_reg_430;

assign rx_process2dropFifo_s_2_din = tmp_last_V_reg_435;

assign rx_process2dropLengt_1_din = header_header_V[3:0];

assign select_ln414_1_fu_255_p3 = ((icmp_ln414_fu_219_p2[0:0] === 1'b1) ? tmp_1_fu_245_p4 : tmp_V_1_fu_211_p1);

assign select_ln414_2_fu_263_p3 = ((icmp_ln414_fu_219_p2[0:0] === 1'b1) ? 160'd730750818665451459101842416358141509827966271488 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_3_fu_271_p3 = ((icmp_ln414_fu_219_p2[0:0] === 1'b1) ? 160'd1 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_fu_237_p3 = ((icmp_ln414_fu_219_p2[0:0] === 1'b1) ? st3_fu_229_p3 : tmp_V_1_fu_211_p1);

assign select_ln63_fu_391_p3 = ((tmp_last_V_reg_435[0:0] === 1'b1) ? 16'd0 : ap_phi_reg_pp0_iter1_phi_ln73_reg_158);

assign st3_fu_229_p3 = {{trunc_ln414_fu_225_p1}, {159'd0}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_237_p3) begin
    for (ap_tvar_int_0 = 160 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 159 - 0) begin
            tmp_1_fu_245_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_1_fu_245_p4[ap_tvar_int_0] = select_ln414_fu_237_p3[159 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_1_fu_211_p1 = s_axis_rx_data_TDATA[159:0];

assign tmp_nbreadreq_fu_98_p5 = s_axis_rx_data_TVALID;

assign tmp_their_address_V_fu_340_p4 = {{header_header_V[127:96]}};

assign trunc_ln414_fu_225_p1 = s_axis_rx_data_TDATA[0:0];

assign xor_ln414_fu_285_p2 = (160'd1461501637330902918203684832716283019655932542975 ^ and_ln414_fu_279_p2);

assign xor_ln63_fu_381_p2 = (tmp_last_V_reg_435 ^ 1'd1);

endmodule //process_ipv4_512_s
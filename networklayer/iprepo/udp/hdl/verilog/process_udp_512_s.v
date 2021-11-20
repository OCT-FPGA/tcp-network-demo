// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module process_udp_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_rx_data_TVALID,
        rx_udp2shiftFifo_V_d_din,
        rx_udp2shiftFifo_V_d_full_n,
        rx_udp2shiftFifo_V_d_write,
        rx_udp2shiftFifo_V_k_din,
        rx_udp2shiftFifo_V_k_full_n,
        rx_udp2shiftFifo_V_k_write,
        rx_udp2shiftFifo_V_l_din,
        rx_udp2shiftFifo_V_l_full_n,
        rx_udp2shiftFifo_V_l_write,
        rx_udpMetaFifo_V_din,
        rx_udpMetaFifo_V_full_n,
        rx_udpMetaFifo_V_write,
        s_axis_rx_data_TDATA,
        s_axis_rx_data_TREADY,
        s_axis_rx_data_TKEEP,
        s_axis_rx_data_TLAST,
        regListenPort_V
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
output  [511:0] rx_udp2shiftFifo_V_d_din;
input   rx_udp2shiftFifo_V_d_full_n;
output   rx_udp2shiftFifo_V_d_write;
output  [63:0] rx_udp2shiftFifo_V_k_din;
input   rx_udp2shiftFifo_V_k_full_n;
output   rx_udp2shiftFifo_V_k_write;
output  [0:0] rx_udp2shiftFifo_V_l_din;
input   rx_udp2shiftFifo_V_l_full_n;
output   rx_udp2shiftFifo_V_l_write;
output  [48:0] rx_udpMetaFifo_V_din;
input   rx_udpMetaFifo_V_full_n;
output   rx_udpMetaFifo_V_write;
input  [511:0] s_axis_rx_data_TDATA;
output   s_axis_rx_data_TREADY;
input  [63:0] s_axis_rx_data_TKEEP;
input  [0:0] s_axis_rx_data_TLAST;
input  [15:0] regListenPort_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rx_udp2shiftFifo_V_d_write;
reg rx_udp2shiftFifo_V_k_write;
reg rx_udp2shiftFifo_V_l_write;
reg rx_udpMetaFifo_V_write;
reg s_axis_rx_data_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_112_p5;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    io_acc_block_signal_op62;
reg   [0:0] tmp_reg_471;
reg   [0:0] tmp_reg_471_pp0_iter1_reg;
reg   [0:0] or_ln73_1_reg_508;
reg   [0:0] tmp_valid_reg_526;
reg    ap_predicate_op62_write_state3;
reg   [0:0] metaWritten_load_reg_512;
reg    ap_predicate_op65_write_state3;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] pu_header_ready;
reg   [15:0] pu_header_idx;
reg   [63:0] pu_header_header_V;
reg   [0:0] metaWritten;
reg    s_axis_rx_data_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    rx_udp2shiftFifo_V_d_blk_n;
reg    rx_udp2shiftFifo_V_k_blk_n;
reg    rx_udp2shiftFifo_V_l_blk_n;
reg    rx_udpMetaFifo_V_blk_n;
reg   [511:0] tmp_data_V_reg_475;
reg   [511:0] tmp_data_V_reg_475_pp0_iter1_reg;
reg   [63:0] tmp_keep_V_reg_480;
reg   [63:0] tmp_keep_V_reg_480_pp0_iter1_reg;
reg   [0:0] tmp_last_V_reg_485;
reg   [0:0] tmp_last_V_reg_485_pp0_iter1_reg;
wire   [0:0] pu_header_ready_load_load_fu_204_p1;
reg   [0:0] pu_header_ready_load_reg_493;
wire   [15:0] add_ln67_fu_328_p2;
wire   [0:0] or_ln73_1_fu_334_p2;
wire   [0:0] metaWritten_load_load_fu_339_p1;
wire   [7:0] p_Result_51_i_i32_s_fu_347_p4;
reg   [7:0] p_Result_51_i_i32_s_reg_516;
wire   [7:0] p_Result_51_1_i_i3_fu_357_p4;
reg   [7:0] p_Result_51_1_i_i3_reg_521;
wire   [0:0] tmp_valid_fu_375_p2;
reg   [7:0] p_Result_51_i_i37_s_reg_531;
wire   [7:0] trunc_ln647_fu_390_p1;
reg   [7:0] trunc_ln647_reg_536;
reg   [7:0] p_Result_51_i_i42_s_reg_541;
reg   [7:0] p_Result_51_1_i_i4_reg_546;
wire   [0:0] xor_ln73_fu_414_p2;
reg   [0:0] xor_ln73_reg_551;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] ap_phi_reg_pp0_iter0_phi_ln73_reg_154;
reg   [15:0] ap_phi_reg_pp0_iter1_phi_ln73_reg_154;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163;
reg   [0:0] ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176;
reg   [0:0] ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176;
wire   [0:0] and_ln73_fu_419_p2;
reg   [0:0] ap_sig_allocacmp_pu_header_ready_load;
wire   [15:0] select_ln73_fu_425_p3;
reg   [15:0] ap_sig_allocacmp_pu_header_idx_load;
wire   [63:0] p_Result_s_fu_316_p2;
wire   [0:0] or_ln73_fu_456_p2;
reg   [0:0] ap_sig_allocacmp_metaWritten_load;
reg    ap_block_pp0_stage0_01001;
wire   [18:0] tmp_1_fu_220_p3;
wire   [25:0] zext_ln414_fu_228_p1;
wire   [0:0] trunc_ln414_fu_238_p1;
wire   [0:0] icmp_ln414_fu_232_p2;
wire   [63:0] st4_fu_242_p3;
wire   [63:0] tmp_V_fu_212_p1;
wire   [63:0] select_ln414_fu_250_p3;
reg   [63:0] tmp_2_fu_258_p4;
wire   [63:0] select_ln414_2_fu_276_p3;
wire   [63:0] select_ln414_3_fu_284_p3;
wire   [63:0] and_ln414_fu_292_p2;
wire   [63:0] xor_ln414_fu_298_p2;
wire   [63:0] select_ln414_1_fu_268_p3;
wire   [63:0] and_ln414_1_fu_304_p2;
wire   [63:0] and_ln414_2_fu_310_p2;
wire   [15:0] dstPort_V_fu_367_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_97;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 pu_header_ready = 1'd0;
#0 pu_header_idx = 16'd0;
#0 pu_header_header_V = 64'd0;
#0 metaWritten = 1'd0;
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
    if ((1'b1 == ap_condition_97)) begin
        if (((pu_header_ready_load_load_fu_204_p1 == 1'd0) & (tmp_nbreadreq_fu_112_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= add_ln67_fu_328_p2;
        end else if (((pu_header_ready_load_load_fu_204_p1 == 1'd1) & (tmp_nbreadreq_fu_112_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= ap_sig_allocacmp_pu_header_idx_load;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_154;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_97)) begin
        if (((pu_header_ready_load_load_fu_204_p1 == 1'd0) & (tmp_nbreadreq_fu_112_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= 1'd1;
        end else if (((pu_header_ready_load_load_fu_204_p1 == 1'd1) & (tmp_nbreadreq_fu_112_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (metaWritten_load_load_fu_339_p1 == 1'd0) & (tmp_reg_471 == 1'd1) & (or_ln73_1_fu_334_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= 1'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (or_ln73_1_fu_334_p2 == 1'd0) & (tmp_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_471 == 1'd1) & (metaWritten_load_load_fu_339_p1 == 1'd1) & (or_ln73_1_fu_334_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= 1'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_471_pp0_iter1_reg == 1'd1) & (or_ln73_fu_456_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        metaWritten <= xor_ln73_reg_551;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_471 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        metaWritten_load_reg_512 <= ap_sig_allocacmp_metaWritten_load;
        or_ln73_1_reg_508 <= or_ln73_1_fu_334_p2;
        xor_ln73_reg_551 <= xor_ln73_fu_414_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_471 == 1'd1) & (or_ln73_1_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_51_1_i_i3_reg_521 <= {{pu_header_header_V[23:16]}};
        p_Result_51_i_i32_s_reg_516 <= {{pu_header_header_V[31:24]}};
        tmp_valid_reg_526 <= tmp_valid_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (metaWritten_load_load_fu_339_p1 == 1'd0) & (tmp_reg_471 == 1'd1) & (or_ln73_1_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_51_1_i_i4_reg_546 <= {{pu_header_header_V[39:32]}};
        p_Result_51_i_i37_s_reg_531 <= {{pu_header_header_V[15:8]}};
        p_Result_51_i_i42_s_reg_541 <= {{pu_header_header_V[47:40]}};
        trunc_ln647_reg_536 <= trunc_ln647_fu_390_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (pu_header_ready_load_load_fu_204_p1 == 1'd0) & (tmp_nbreadreq_fu_112_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pu_header_header_V <= p_Result_s_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pu_header_idx <= select_ln73_fu_425_p3;
        pu_header_ready <= and_ln73_fu_419_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_112_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pu_header_ready_load_reg_493 <= ap_sig_allocacmp_pu_header_ready_load;
        tmp_data_V_reg_475 <= s_axis_rx_data_TDATA;
        tmp_keep_V_reg_480 <= s_axis_rx_data_TKEEP;
        tmp_last_V_reg_485 <= s_axis_rx_data_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_data_V_reg_475_pp0_iter1_reg <= tmp_data_V_reg_475;
        tmp_keep_V_reg_480_pp0_iter1_reg <= tmp_keep_V_reg_480;
        tmp_last_V_reg_485_pp0_iter1_reg <= tmp_last_V_reg_485;
        tmp_reg_471 <= tmp_nbreadreq_fu_112_p5;
        tmp_reg_471_pp0_iter1_reg <= tmp_reg_471;
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
    if (((tmp_reg_471_pp0_iter1_reg == 1'd1) & (or_ln73_fu_456_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_metaWritten_load = xor_ln73_reg_551;
    end else begin
        ap_sig_allocacmp_metaWritten_load = metaWritten;
    end
end

always @ (*) begin
    if (((tmp_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_pu_header_idx_load = select_ln73_fu_425_p3;
    end else begin
        ap_sig_allocacmp_pu_header_idx_load = pu_header_idx;
    end
end

always @ (*) begin
    if (((tmp_reg_471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_pu_header_ready_load = and_ln73_fu_419_p2;
    end else begin
        ap_sig_allocacmp_pu_header_ready_load = pu_header_ready;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_udp2shiftFifo_V_d_blk_n = rx_udp2shiftFifo_V_d_full_n;
    end else begin
        rx_udp2shiftFifo_V_d_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1))) begin
        rx_udp2shiftFifo_V_d_write = 1'b1;
    end else begin
        rx_udp2shiftFifo_V_d_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_udp2shiftFifo_V_k_blk_n = rx_udp2shiftFifo_V_k_full_n;
    end else begin
        rx_udp2shiftFifo_V_k_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1))) begin
        rx_udp2shiftFifo_V_k_write = 1'b1;
    end else begin
        rx_udp2shiftFifo_V_k_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_udp2shiftFifo_V_l_blk_n = rx_udp2shiftFifo_V_l_full_n;
    end else begin
        rx_udp2shiftFifo_V_l_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op62_write_state3 == 1'b1))) begin
        rx_udp2shiftFifo_V_l_write = 1'b1;
    end else begin
        rx_udp2shiftFifo_V_l_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op65_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_udpMetaFifo_V_blk_n = rx_udpMetaFifo_V_full_n;
    end else begin
        rx_udpMetaFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op65_write_state3 == 1'b1))) begin
        rx_udpMetaFifo_V_write = 1'b1;
    end else begin
        rx_udpMetaFifo_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_112_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_rx_data_TDATA_blk_n = s_axis_rx_data_TVALID;
    end else begin
        s_axis_rx_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_112_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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

assign add_ln67_fu_328_p2 = (16'd1 + ap_sig_allocacmp_pu_header_idx_load);

assign and_ln414_1_fu_304_p2 = (xor_ln414_fu_298_p2 & pu_header_header_V);

assign and_ln414_2_fu_310_p2 = (select_ln414_1_fu_268_p3 & and_ln414_fu_292_p2);

assign and_ln414_fu_292_p2 = (select_ln414_3_fu_284_p3 & select_ln414_2_fu_276_p3);

assign and_ln73_fu_419_p2 = (xor_ln73_fu_414_p2 & or_ln73_1_fu_334_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((rx_udpMetaFifo_V_full_n == 1'b0) & (ap_predicate_op65_write_state3 == 1'b1)) | ((io_acc_block_signal_op62 == 1'b0) & (ap_predicate_op62_write_state3 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_112_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((rx_udpMetaFifo_V_full_n == 1'b0) & (ap_predicate_op65_write_state3 == 1'b1)) | ((io_acc_block_signal_op62 == 1'b0) & (ap_predicate_op62_write_state3 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_112_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((rx_udpMetaFifo_V_full_n == 1'b0) & (ap_predicate_op65_write_state3 == 1'b1)) | ((io_acc_block_signal_op62 == 1'b0) & (ap_predicate_op62_write_state3 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_112_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_112_p5 == 1'd1) & (s_axis_rx_data_TVALID == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((rx_udpMetaFifo_V_full_n == 1'b0) & (ap_predicate_op65_write_state3 == 1'b1)) | ((io_acc_block_signal_op62 == 1'b0) & (ap_predicate_op62_write_state3 == 1'b1)));
end

always @ (*) begin
    ap_condition_97 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176 = 'bx;

assign ap_phi_reg_pp0_iter0_phi_ln73_reg_154 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163 = 'bx;

always @ (*) begin
    ap_predicate_op62_write_state3 = ((tmp_valid_reg_526 == 1'd1) & (or_ln73_1_reg_508 == 1'd1) & (tmp_reg_471_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op65_write_state3 = ((metaWritten_load_reg_512 == 1'd0) & (or_ln73_1_reg_508 == 1'd1) & (tmp_reg_471_pp0_iter1_reg == 1'd1));
end

assign dstPort_V_fu_367_p3 = {{p_Result_51_1_i_i3_fu_357_p4}, {p_Result_51_i_i32_s_fu_347_p4}};

assign icmp_ln414_fu_232_p2 = ((zext_ln414_fu_228_p1 != 26'd0) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op62 = (rx_udp2shiftFifo_V_l_full_n & rx_udp2shiftFifo_V_k_full_n & rx_udp2shiftFifo_V_d_full_n);

assign metaWritten_load_load_fu_339_p1 = ap_sig_allocacmp_metaWritten_load;

assign or_ln73_1_fu_334_p2 = (pu_header_ready_load_reg_493 | ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163);

assign or_ln73_fu_456_p2 = (tmp_last_V_reg_485_pp0_iter1_reg | ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176);

assign p_Result_51_1_i_i3_fu_357_p4 = {{pu_header_header_V[23:16]}};

assign p_Result_51_i_i32_s_fu_347_p4 = {{pu_header_header_V[31:24]}};

assign p_Result_s_fu_316_p2 = (and_ln414_2_fu_310_p2 | and_ln414_1_fu_304_p2);

assign pu_header_ready_load_load_fu_204_p1 = ap_sig_allocacmp_pu_header_ready_load;

assign rx_udp2shiftFifo_V_d_din = tmp_data_V_reg_475_pp0_iter1_reg;

assign rx_udp2shiftFifo_V_k_din = tmp_keep_V_reg_480_pp0_iter1_reg;

assign rx_udp2shiftFifo_V_l_din = tmp_last_V_reg_485_pp0_iter1_reg;

assign rx_udpMetaFifo_V_din = {{{{{{{tmp_valid_reg_526}, {p_Result_51_1_i_i4_reg_546}}, {p_Result_51_i_i42_s_reg_541}}, {p_Result_51_1_i_i3_reg_521}}, {p_Result_51_i_i32_s_reg_516}}, {trunc_ln647_reg_536}}, {p_Result_51_i_i37_s_reg_531}};

assign select_ln414_1_fu_268_p3 = ((icmp_ln414_fu_232_p2[0:0] === 1'b1) ? tmp_2_fu_258_p4 : tmp_V_fu_212_p1);

assign select_ln414_2_fu_276_p3 = ((icmp_ln414_fu_232_p2[0:0] === 1'b1) ? 64'd9223372036854775808 : 64'd18446744073709551615);

assign select_ln414_3_fu_284_p3 = ((icmp_ln414_fu_232_p2[0:0] === 1'b1) ? 64'd1 : 64'd18446744073709551615);

assign select_ln414_fu_250_p3 = ((icmp_ln414_fu_232_p2[0:0] === 1'b1) ? st4_fu_242_p3 : tmp_V_fu_212_p1);

assign select_ln73_fu_425_p3 = ((tmp_last_V_reg_485[0:0] === 1'b1) ? 16'd0 : ap_phi_reg_pp0_iter1_phi_ln73_reg_154);

assign st4_fu_242_p3 = {{trunc_ln414_fu_238_p1}, {63'd0}};

assign tmp_1_fu_220_p3 = {{ap_sig_allocacmp_pu_header_idx_load}, {3'd0}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_250_p3) begin
    for (ap_tvar_int_0 = 64 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 63 - 0) begin
            tmp_2_fu_258_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_2_fu_258_p4[ap_tvar_int_0] = select_ln414_fu_250_p3[63 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_fu_212_p1 = s_axis_rx_data_TDATA[63:0];

assign tmp_nbreadreq_fu_112_p5 = s_axis_rx_data_TVALID;

assign tmp_valid_fu_375_p2 = ((dstPort_V_fu_367_p3 == regListenPort_V) ? 1'b1 : 1'b0);

assign trunc_ln414_fu_238_p1 = s_axis_rx_data_TDATA[0:0];

assign trunc_ln647_fu_390_p1 = pu_header_header_V[7:0];

assign xor_ln414_fu_298_p2 = (64'd18446744073709551615 ^ and_ln414_fu_292_p2);

assign xor_ln73_fu_414_p2 = (tmp_last_V_reg_485 ^ 1'd1);

assign zext_ln414_fu_228_p1 = tmp_1_fu_220_p3;

endmodule //process_udp_512_s

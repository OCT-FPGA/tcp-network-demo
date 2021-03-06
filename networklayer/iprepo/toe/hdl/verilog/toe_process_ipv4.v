// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_process_ipv4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_tcp_data_TVALID,
        rxEng_dataBuffer0_V_din,
        rxEng_dataBuffer0_V_full_n,
        rxEng_dataBuffer0_V_write,
        rx_process2dropLengt_1_din,
        rx_process2dropLengt_1_full_n,
        rx_process2dropLengt_1_write,
        rxEng_ipMetaFifo_V_t_din,
        rxEng_ipMetaFifo_V_t_full_n,
        rxEng_ipMetaFifo_V_t_write,
        rxEng_ipMetaFifo_V_o_din,
        rxEng_ipMetaFifo_V_o_full_n,
        rxEng_ipMetaFifo_V_o_write,
        rxEng_ipMetaFifo_V_l_din,
        rxEng_ipMetaFifo_V_l_full_n,
        rxEng_ipMetaFifo_V_l_write,
        s_axis_tcp_data_TDATA,
        s_axis_tcp_data_TREADY,
        s_axis_tcp_data_TKEEP,
        s_axis_tcp_data_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_tcp_data_TVALID;
output  [576:0] rxEng_dataBuffer0_V_din;
input   rxEng_dataBuffer0_V_full_n;
output   rxEng_dataBuffer0_V_write;
output  [3:0] rx_process2dropLengt_1_din;
input   rx_process2dropLengt_1_full_n;
output   rx_process2dropLengt_1_write;
output  [31:0] rxEng_ipMetaFifo_V_t_din;
input   rxEng_ipMetaFifo_V_t_full_n;
output   rxEng_ipMetaFifo_V_t_write;
output  [31:0] rxEng_ipMetaFifo_V_o_din;
input   rxEng_ipMetaFifo_V_o_full_n;
output   rxEng_ipMetaFifo_V_o_write;
output  [15:0] rxEng_ipMetaFifo_V_l_din;
input   rxEng_ipMetaFifo_V_l_full_n;
output   rxEng_ipMetaFifo_V_l_write;
input  [511:0] s_axis_tcp_data_TDATA;
output   s_axis_tcp_data_TREADY;
input  [63:0] s_axis_tcp_data_TKEEP;
input  [0:0] s_axis_tcp_data_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng_dataBuffer0_V_write;
reg rx_process2dropLengt_1_write;
reg rxEng_ipMetaFifo_V_t_write;
reg rxEng_ipMetaFifo_V_o_write;
reg rxEng_ipMetaFifo_V_l_write;
reg s_axis_tcp_data_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_110_p5;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_469;
reg   [0:0] or_ln73_reg_504;
reg    ap_predicate_op46_write_state2;
reg   [0:0] metaWritten_load_reg_509;
reg    ap_predicate_op49_write_state2;
wire    io_acc_block_signal_op58;
reg    ap_predicate_op58_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx_5;
reg   [159:0] header_header_V_6;
reg   [0:0] metaWritten;
reg    s_axis_tcp_data_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    rxEng_dataBuffer0_V_blk_n;
reg    rx_process2dropLengt_1_blk_n;
reg    rxEng_ipMetaFifo_V_t_blk_n;
reg    rxEng_ipMetaFifo_V_o_blk_n;
reg    rxEng_ipMetaFifo_V_l_blk_n;
reg   [511:0] tmp_data_V_reg_473;
reg   [63:0] tmp_keep_V_reg_478;
reg   [0:0] tmp_last_V_reg_483;
wire   [15:0] add_ln67_fu_327_p2;
wire   [0:0] header_ready_load_load_fu_207_p1;
wire   [0:0] or_ln73_fu_333_p2;
wire   [0:0] metaWritten_load_load_fu_339_p1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_159;
wire   [15:0] ap_phi_reg_pp0_iter0_phi_ln73_reg_170;
reg   [15:0] ap_phi_reg_pp0_iter1_phi_ln73_reg_170;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_179;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_179;
wire   [0:0] and_ln69_fu_434_p2;
reg   [0:0] ap_sig_allocacmp_header_ready_load;
wire   [15:0] select_ln69_fu_439_p3;
reg   [15:0] ap_sig_allocacmp_header_idx_5_load;
wire   [159:0] p_Result_s_fu_315_p2;
wire   [0:0] xor_ln69_fu_429_p2;
wire   [0:0] or_ln69_fu_446_p2;
reg   [0:0] ap_sig_allocacmp_metaWritten_load;
reg    ap_block_pp0_stage0_01001;
wire   [3:0] tmp_V_fu_355_p1;
wire   [24:0] Lo_assign_fu_215_p3;
wire   [0:0] trunc_ln414_fu_237_p1;
wire   [0:0] icmp_ln414_fu_231_p2;
wire   [159:0] st3_fu_241_p3;
wire   [159:0] tmp_V_3_fu_223_p1;
wire   [159:0] select_ln414_fu_249_p3;
reg   [159:0] tmp_223_fu_257_p4;
wire   [159:0] select_ln414_2_fu_275_p3;
wire   [159:0] select_ln414_3_fu_283_p3;
wire   [159:0] and_ln414_fu_291_p2;
wire   [159:0] xor_ln414_fu_297_p2;
wire   [159:0] select_ln414_1_fu_267_p3;
wire   [159:0] and_ln414_4_fu_303_p2;
wire   [159:0] and_ln414_5_fu_309_p2;
wire   [7:0] p_Result_138_1_i_i_fu_392_p4;
wire   [7:0] p_Result_138_i_i_fu_382_p4;
wire   [5:0] shl_ln_fu_410_p3;
wire   [15:0] agg_result_V_0_1_i_i_fu_402_p3;
wire   [15:0] zext_ln214_3_fu_418_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_98;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx_5 = 16'd0;
#0 header_header_V_6 = 160'd1180591620717411303493;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (metaWritten_load_load_fu_339_p1 == 1'd0) & (or_ln73_fu_333_p2 == 1'd1) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_179 <= 1'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (metaWritten_load_load_fu_339_p1 == 1'd1) & (or_ln73_fu_333_p2 == 1'd1) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (or_ln73_fu_333_p2 == 1'd0) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_179 <= 1'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_179 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_179;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_98)) begin
        if (((header_ready_load_load_fu_207_p1 == 1'd0) & (tmp_nbreadreq_fu_110_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_170 <= add_ln67_fu_327_p2;
        end else if (((header_ready_load_load_fu_207_p1 == 1'd1) & (tmp_nbreadreq_fu_110_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_170 <= ap_sig_allocacmp_header_idx_5_load;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_170 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_170;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (header_ready_load_load_fu_207_p1 == 1'd0) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        header_header_V_6 <= p_Result_s_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_469 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        header_idx_5 <= select_ln69_fu_439_p3;
        header_ready <= and_ln69_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_469 == 1'd1) & (or_ln69_fu_446_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        metaWritten <= xor_ln69_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        metaWritten_load_reg_509 <= ap_sig_allocacmp_metaWritten_load;
        or_ln73_reg_504 <= or_ln73_fu_333_p2;
        tmp_data_V_reg_473 <= s_axis_tcp_data_TDATA;
        tmp_keep_V_reg_478 <= s_axis_tcp_data_TKEEP;
        tmp_last_V_reg_483 <= s_axis_tcp_data_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_469 <= tmp_nbreadreq_fu_110_p5;
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
    if ((tmp_nbreadreq_fu_110_p5 == 1'd1)) begin
        if ((header_ready_load_load_fu_207_p1 == 1'd0)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4 = 1'd1;
        end else if ((header_ready_load_load_fu_207_p1 == 1'd1)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4 = 1'd0;
        end else begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_159;
        end
    end else begin
        ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_159;
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
    if (((tmp_reg_469 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_idx_5_load = select_ln69_fu_439_p3;
    end else begin
        ap_sig_allocacmp_header_idx_5_load = header_idx_5;
    end
end

always @ (*) begin
    if (((tmp_reg_469 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_ready_load = and_ln69_fu_434_p2;
    end else begin
        ap_sig_allocacmp_header_ready_load = header_ready;
    end
end

always @ (*) begin
    if (((tmp_reg_469 == 1'd1) & (or_ln69_fu_446_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_metaWritten_load = xor_ln69_fu_429_p2;
    end else begin
        ap_sig_allocacmp_metaWritten_load = metaWritten;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op46_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_dataBuffer0_V_blk_n = rxEng_dataBuffer0_V_full_n;
    end else begin
        rxEng_dataBuffer0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op46_write_state2 == 1'b1))) begin
        rxEng_dataBuffer0_V_write = 1'b1;
    end else begin
        rxEng_dataBuffer0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_ipMetaFifo_V_l_blk_n = rxEng_ipMetaFifo_V_l_full_n;
    end else begin
        rxEng_ipMetaFifo_V_l_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1))) begin
        rxEng_ipMetaFifo_V_l_write = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_l_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_ipMetaFifo_V_o_blk_n = rxEng_ipMetaFifo_V_o_full_n;
    end else begin
        rxEng_ipMetaFifo_V_o_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1))) begin
        rxEng_ipMetaFifo_V_o_write = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_o_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxEng_ipMetaFifo_V_t_blk_n = rxEng_ipMetaFifo_V_t_full_n;
    end else begin
        rxEng_ipMetaFifo_V_t_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op58_write_state2 == 1'b1))) begin
        rxEng_ipMetaFifo_V_t_write = 1'b1;
    end else begin
        rxEng_ipMetaFifo_V_t_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op49_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rx_process2dropLengt_1_blk_n = rx_process2dropLengt_1_full_n;
    end else begin
        rx_process2dropLengt_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op49_write_state2 == 1'b1))) begin
        rx_process2dropLengt_1_write = 1'b1;
    end else begin
        rx_process2dropLengt_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_tcp_data_TDATA_blk_n = s_axis_tcp_data_TVALID;
    end else begin
        s_axis_tcp_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_110_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_tcp_data_TREADY = 1'b1;
    end else begin
        s_axis_tcp_data_TREADY = 1'b0;
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

assign Lo_assign_fu_215_p3 = {{ap_sig_allocacmp_header_idx_5_load}, {9'd0}};

assign add_ln67_fu_327_p2 = (16'd1 + ap_sig_allocacmp_header_idx_5_load);

assign agg_result_V_0_1_i_i_fu_402_p3 = {{p_Result_138_1_i_i_fu_392_p4}, {p_Result_138_i_i_fu_382_p4}};

assign and_ln414_4_fu_303_p2 = (xor_ln414_fu_297_p2 & header_header_V_6);

assign and_ln414_5_fu_309_p2 = (select_ln414_1_fu_267_p3 & and_ln414_fu_291_p2);

assign and_ln414_fu_291_p2 = (select_ln414_3_fu_283_p3 & select_ln414_2_fu_275_p3);

assign and_ln69_fu_434_p2 = (xor_ln69_fu_429_p2 & or_ln73_reg_504);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (ap_predicate_op58_write_state2 == 1'b1)) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((rxEng_dataBuffer0_V_full_n == 1'b0) & (ap_predicate_op46_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_110_p5 == 1'd1) & (s_axis_tcp_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (ap_predicate_op58_write_state2 == 1'b1)) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((rxEng_dataBuffer0_V_full_n == 1'b0) & (ap_predicate_op46_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_110_p5 == 1'd1) & (s_axis_tcp_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op58 == 1'b0) & (ap_predicate_op58_write_state2 == 1'b1)) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((rxEng_dataBuffer0_V_full_n == 1'b0) & (ap_predicate_op46_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_110_p5 == 1'd1) & (s_axis_tcp_data_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_110_p5 == 1'd1) & (s_axis_tcp_data_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((io_acc_block_signal_op58 == 1'b0) & (ap_predicate_op58_write_state2 == 1'b1)) | ((rx_process2dropLengt_1_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)) | ((rxEng_dataBuffer0_V_full_n == 1'b0) & (ap_predicate_op46_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_98 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_179 = 'bx;

assign ap_phi_reg_pp0_iter0_phi_ln73_reg_170 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_159 = 'bx;

always @ (*) begin
    ap_predicate_op46_write_state2 = ((or_ln73_reg_504 == 1'd1) & (tmp_reg_469 == 1'd1));
end

always @ (*) begin
    ap_predicate_op49_write_state2 = ((metaWritten_load_reg_509 == 1'd0) & (or_ln73_reg_504 == 1'd1) & (tmp_reg_469 == 1'd1));
end

always @ (*) begin
    ap_predicate_op58_write_state2 = ((metaWritten_load_reg_509 == 1'd0) & (or_ln73_reg_504 == 1'd1) & (tmp_reg_469 == 1'd1));
end

assign header_ready_load_load_fu_207_p1 = ap_sig_allocacmp_header_ready_load;

assign icmp_ln414_fu_231_p2 = ((Lo_assign_fu_215_p3 > 25'd159) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op58 = (rxEng_ipMetaFifo_V_t_full_n & rxEng_ipMetaFifo_V_o_full_n & rxEng_ipMetaFifo_V_l_full_n);

assign metaWritten_load_load_fu_339_p1 = ap_sig_allocacmp_metaWritten_load;

assign or_ln69_fu_446_p2 = (tmp_last_V_reg_483 | ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_179);

assign or_ln73_fu_333_p2 = (ap_sig_allocacmp_header_ready_load | ap_phi_mux_write_flag_1_i_i_phi_fu_162_p4);

assign p_Result_138_1_i_i_fu_392_p4 = {{header_header_V_6[23:16]}};

assign p_Result_138_i_i_fu_382_p4 = {{header_header_V_6[31:24]}};

assign p_Result_s_fu_315_p2 = (and_ln414_5_fu_309_p2 | and_ln414_4_fu_303_p2);

assign rxEng_dataBuffer0_V_din = {{{tmp_last_V_reg_483}, {tmp_keep_V_reg_478}}, {tmp_data_V_reg_473}};

assign rxEng_ipMetaFifo_V_l_din = (agg_result_V_0_1_i_i_fu_402_p3 - zext_ln214_3_fu_418_p1);

assign rxEng_ipMetaFifo_V_o_din = {{header_header_V_6[159:128]}};

assign rxEng_ipMetaFifo_V_t_din = {{header_header_V_6[127:96]}};

assign rx_process2dropLengt_1_din = tmp_V_fu_355_p1;

assign select_ln414_1_fu_267_p3 = ((icmp_ln414_fu_231_p2[0:0] === 1'b1) ? tmp_223_fu_257_p4 : tmp_V_3_fu_223_p1);

assign select_ln414_2_fu_275_p3 = ((icmp_ln414_fu_231_p2[0:0] === 1'b1) ? 160'd730750818665451459101842416358141509827966271488 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_3_fu_283_p3 = ((icmp_ln414_fu_231_p2[0:0] === 1'b1) ? 160'd1 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_fu_249_p3 = ((icmp_ln414_fu_231_p2[0:0] === 1'b1) ? st3_fu_241_p3 : tmp_V_3_fu_223_p1);

assign select_ln69_fu_439_p3 = ((tmp_last_V_reg_483[0:0] === 1'b1) ? 16'd0 : ap_phi_reg_pp0_iter1_phi_ln73_reg_170);

assign shl_ln_fu_410_p3 = {{tmp_V_fu_355_p1}, {2'd0}};

assign st3_fu_241_p3 = {{trunc_ln414_fu_237_p1}, {159'd0}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_249_p3) begin
    for (ap_tvar_int_0 = 160 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 159 - 0) begin
            tmp_223_fu_257_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_223_fu_257_p4[ap_tvar_int_0] = select_ln414_fu_249_p3[159 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_3_fu_223_p1 = s_axis_tcp_data_TDATA[159:0];

assign tmp_V_fu_355_p1 = header_header_V_6[3:0];

assign tmp_nbreadreq_fu_110_p5 = s_axis_tcp_data_TVALID;

assign trunc_ln414_fu_237_p1 = s_axis_tcp_data_TDATA[0:0];

assign xor_ln414_fu_297_p2 = (160'd1461501637330902918203684832716283019655932542975 ^ and_ln414_fu_291_p2);

assign xor_ln69_fu_429_p2 = (tmp_last_V_reg_483 ^ 1'd1);

assign zext_ln214_3_fu_418_p1 = shl_ln_fu_410_p3;

endmodule //toe_process_ipv4

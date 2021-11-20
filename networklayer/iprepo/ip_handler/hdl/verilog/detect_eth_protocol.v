// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module detect_eth_protocol (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_raw_TVALID,
        etherTypeFifo_V_V_din,
        etherTypeFifo_V_V_full_n,
        etherTypeFifo_V_V_write,
        ethDataFifo_V_data_V_din,
        ethDataFifo_V_data_V_full_n,
        ethDataFifo_V_data_V_write,
        ethDataFifo_V_keep_V_din,
        ethDataFifo_V_keep_V_full_n,
        ethDataFifo_V_keep_V_write,
        ethDataFifo_V_last_V_din,
        ethDataFifo_V_last_V_full_n,
        ethDataFifo_V_last_V_write,
        s_axis_raw_TDATA,
        s_axis_raw_TREADY,
        s_axis_raw_TKEEP,
        s_axis_raw_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_raw_TVALID;
output  [15:0] etherTypeFifo_V_V_din;
input   etherTypeFifo_V_V_full_n;
output   etherTypeFifo_V_V_write;
output  [511:0] ethDataFifo_V_data_V_din;
input   ethDataFifo_V_data_V_full_n;
output   ethDataFifo_V_data_V_write;
output  [63:0] ethDataFifo_V_keep_V_din;
input   ethDataFifo_V_keep_V_full_n;
output   ethDataFifo_V_keep_V_write;
output  [0:0] ethDataFifo_V_last_V_din;
input   ethDataFifo_V_last_V_full_n;
output   ethDataFifo_V_last_V_write;
input  [511:0] s_axis_raw_TDATA;
output   s_axis_raw_TREADY;
input  [63:0] s_axis_raw_TKEEP;
input  [0:0] s_axis_raw_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg etherTypeFifo_V_V_write;
reg ethDataFifo_V_data_V_write;
reg ethDataFifo_V_keep_V_write;
reg ethDataFifo_V_last_V_write;
reg s_axis_raw_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_90_p5;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_398;
reg   [0:0] or_ln54_reg_438;
reg    ap_predicate_op49_write_state2;
wire    io_acc_block_signal_op51;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx_1;
reg   [111:0] header_header_V_1;
reg   [0:0] metaWritten_1;
reg    s_axis_raw_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    etherTypeFifo_V_V_blk_n;
reg    ethDataFifo_V_data_V_blk_n;
reg    ethDataFifo_V_keep_V_blk_n;
reg    ethDataFifo_V_last_V_blk_n;
reg   [511:0] tmp_data_V_reg_402;
reg   [63:0] tmp_keep_V_reg_407;
reg   [0:0] tmp_last_V_reg_412;
wire   [15:0] add_ln67_fu_297_p2;
wire   [0:0] header_ready_load_load_fu_177_p1;
wire   [0:0] or_ln73_fu_303_p2;
reg   [0:0] or_ln73_reg_433;
wire   [0:0] or_ln54_fu_319_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_132;
wire   [15:0] ap_phi_reg_pp0_iter0_phi_ln73_reg_143;
reg   [15:0] ap_phi_reg_pp0_iter1_phi_ln73_reg_143;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_1_flag_0_reg_152;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_1_flag_0_reg_152;
wire   [0:0] and_ln62_fu_363_p2;
reg   [0:0] ap_sig_allocacmp_header_ready_load;
wire   [15:0] select_ln62_fu_368_p3;
reg   [15:0] ap_sig_allocacmp_header_idx_1_load;
wire   [111:0] p_Result_s_fu_285_p2;
wire   [0:0] xor_ln62_fu_358_p2;
wire   [0:0] or_ln62_fu_375_p2;
reg   [0:0] ap_sig_allocacmp_metaWritten_1_load;
reg    ap_block_pp0_stage0_01001;
wire   [24:0] Lo_assign_fu_185_p3;
wire   [0:0] trunc_ln414_fu_207_p1;
wire   [0:0] icmp_ln414_fu_201_p2;
wire   [111:0] st3_fu_211_p3;
wire   [111:0] tmp_V_2_fu_193_p1;
wire   [111:0] select_ln414_fu_219_p3;
reg   [111:0] tmp_88_fu_227_p4;
wire   [111:0] select_ln414_5_fu_245_p3;
wire   [111:0] select_ln414_6_fu_253_p3;
wire   [111:0] and_ln414_fu_261_p2;
wire   [111:0] xor_ln414_fu_267_p2;
wire   [111:0] select_ln414_4_fu_237_p3;
wire   [111:0] and_ln414_3_fu_273_p2;
wire   [111:0] and_ln414_4_fu_279_p2;
wire   [0:0] xor_ln54_fu_313_p2;
wire   [7:0] p_Result_2_1_i_i_i_fu_339_p4;
wire   [7:0] p_Result_2_i_i_i_fu_329_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_84;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx_1 = 16'd0;
#0 header_header_V_1 = 112'd0;
#0 metaWritten_1 = 1'd0;
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
    if ((1'b1 == ap_condition_84)) begin
        if (((or_ln54_fu_319_p2 == 1'd1) & (tmp_nbreadreq_fu_90_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_metaWritten_1_flag_0_reg_152 <= 1'd0;
        end else if (((or_ln54_fu_319_p2 == 1'd0) & (tmp_nbreadreq_fu_90_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_metaWritten_1_flag_0_reg_152 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_metaWritten_1_flag_0_reg_152 <= ap_phi_reg_pp0_iter0_metaWritten_1_flag_0_reg_152;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_84)) begin
        if (((header_ready_load_load_fu_177_p1 == 1'd0) & (tmp_nbreadreq_fu_90_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_143 <= add_ln67_fu_297_p2;
        end else if (((header_ready_load_load_fu_177_p1 == 1'd1) & (tmp_nbreadreq_fu_90_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_143 <= ap_sig_allocacmp_header_idx_1_load;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_143 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_143;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (header_ready_load_load_fu_177_p1 == 1'd0) & (tmp_nbreadreq_fu_90_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        header_header_V_1 <= p_Result_s_fu_285_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        header_idx_1 <= select_ln62_fu_368_p3;
        header_ready <= and_ln62_fu_363_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_398 == 1'd1) & (or_ln62_fu_375_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        metaWritten_1 <= xor_ln62_fu_358_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_90_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln54_reg_438 <= or_ln54_fu_319_p2;
        or_ln73_reg_433 <= or_ln73_fu_303_p2;
        tmp_data_V_reg_402 <= s_axis_raw_TDATA;
        tmp_keep_V_reg_407 <= s_axis_raw_TKEEP;
        tmp_last_V_reg_412 <= s_axis_raw_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_398 <= tmp_nbreadreq_fu_90_p5;
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
    if ((tmp_nbreadreq_fu_90_p5 == 1'd1)) begin
        if ((header_ready_load_load_fu_177_p1 == 1'd0)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4 = 1'd1;
        end else if ((header_ready_load_load_fu_177_p1 == 1'd1)) begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4 = 1'd0;
        end else begin
            ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_132;
        end
    end else begin
        ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4 = ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_132;
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
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_header_idx_1_load = select_ln62_fu_368_p3;
    end else begin
        ap_sig_allocacmp_header_idx_1_load = header_idx_1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_header_ready_load = and_ln62_fu_363_p2;
    end else begin
        ap_sig_allocacmp_header_ready_load = header_ready;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (or_ln62_fu_375_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_metaWritten_1_load = xor_ln62_fu_358_p2;
    end else begin
        ap_sig_allocacmp_metaWritten_1_load = metaWritten_1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_data_V_blk_n = ethDataFifo_V_data_V_full_n;
    end else begin
        ethDataFifo_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_data_V_write = 1'b1;
    end else begin
        ethDataFifo_V_data_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_keep_V_blk_n = ethDataFifo_V_keep_V_full_n;
    end else begin
        ethDataFifo_V_keep_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_keep_V_write = 1'b1;
    end else begin
        ethDataFifo_V_keep_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_last_V_blk_n = ethDataFifo_V_last_V_full_n;
    end else begin
        ethDataFifo_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_398 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ethDataFifo_V_last_V_write = 1'b1;
    end else begin
        ethDataFifo_V_last_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op49_write_state2 == 1'b1))) begin
        etherTypeFifo_V_V_blk_n = etherTypeFifo_V_V_full_n;
    end else begin
        etherTypeFifo_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op49_write_state2 == 1'b1))) begin
        etherTypeFifo_V_V_write = 1'b1;
    end else begin
        etherTypeFifo_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_90_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_raw_TDATA_blk_n = s_axis_raw_TVALID;
    end else begin
        s_axis_raw_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_90_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_axis_raw_TREADY = 1'b1;
    end else begin
        s_axis_raw_TREADY = 1'b0;
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

assign Lo_assign_fu_185_p3 = {{ap_sig_allocacmp_header_idx_1_load}, {9'd0}};

assign add_ln67_fu_297_p2 = (16'd1 + ap_sig_allocacmp_header_idx_1_load);

assign and_ln414_3_fu_273_p2 = (xor_ln414_fu_267_p2 & header_header_V_1);

assign and_ln414_4_fu_279_p2 = (select_ln414_4_fu_237_p3 & and_ln414_fu_261_p2);

assign and_ln414_fu_261_p2 = (select_ln414_6_fu_253_p3 & select_ln414_5_fu_245_p3);

assign and_ln62_fu_363_p2 = (xor_ln62_fu_358_p2 & or_ln73_reg_433);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_reg_398 == 1'd1) & (io_acc_block_signal_op51 == 1'b0)) | ((etherTypeFifo_V_V_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_90_p5 == 1'd1) & (s_axis_raw_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_reg_398 == 1'd1) & (io_acc_block_signal_op51 == 1'b0)) | ((etherTypeFifo_V_V_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_90_p5 == 1'd1) & (s_axis_raw_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((tmp_reg_398 == 1'd1) & (io_acc_block_signal_op51 == 1'b0)) | ((etherTypeFifo_V_V_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_90_p5 == 1'd1) & (s_axis_raw_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_90_p5 == 1'd1) & (s_axis_raw_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((tmp_reg_398 == 1'd1) & (io_acc_block_signal_op51 == 1'b0)) | ((etherTypeFifo_V_V_full_n == 1'b0) & (ap_predicate_op49_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_84 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_1_flag_0_reg_152 = 'bx;

assign ap_phi_reg_pp0_iter0_phi_ln73_reg_143 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_132 = 'bx;

always @ (*) begin
    ap_predicate_op49_write_state2 = ((or_ln54_reg_438 == 1'd0) & (tmp_reg_398 == 1'd1));
end

assign ethDataFifo_V_data_V_din = tmp_data_V_reg_402;

assign ethDataFifo_V_keep_V_din = tmp_keep_V_reg_407;

assign ethDataFifo_V_last_V_din = tmp_last_V_reg_412;

assign etherTypeFifo_V_V_din = {{p_Result_2_1_i_i_i_fu_339_p4}, {p_Result_2_i_i_i_fu_329_p4}};

assign header_ready_load_load_fu_177_p1 = ap_sig_allocacmp_header_ready_load;

assign icmp_ln414_fu_201_p2 = ((Lo_assign_fu_185_p3 > 25'd111) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op51 = (ethDataFifo_V_last_V_full_n & ethDataFifo_V_keep_V_full_n & ethDataFifo_V_data_V_full_n);

assign or_ln54_fu_319_p2 = (xor_ln54_fu_313_p2 | ap_sig_allocacmp_metaWritten_1_load);

assign or_ln62_fu_375_p2 = (tmp_last_V_reg_412 | ap_phi_reg_pp0_iter1_metaWritten_1_flag_0_reg_152);

assign or_ln73_fu_303_p2 = (ap_sig_allocacmp_header_ready_load | ap_phi_mux_write_flag_1_i_i_phi_fu_135_p4);

assign p_Result_2_1_i_i_i_fu_339_p4 = {{header_header_V_1[103:96]}};

assign p_Result_2_i_i_i_fu_329_p4 = {{header_header_V_1[111:104]}};

assign p_Result_s_fu_285_p2 = (and_ln414_4_fu_279_p2 | and_ln414_3_fu_273_p2);

assign select_ln414_4_fu_237_p3 = ((icmp_ln414_fu_201_p2[0:0] === 1'b1) ? tmp_88_fu_227_p4 : tmp_V_2_fu_193_p1);

assign select_ln414_5_fu_245_p3 = ((icmp_ln414_fu_201_p2[0:0] === 1'b1) ? 112'd2596148429267413814265248164610048 : 112'd5192296858534827628530496329220095);

assign select_ln414_6_fu_253_p3 = ((icmp_ln414_fu_201_p2[0:0] === 1'b1) ? 112'd1 : 112'd5192296858534827628530496329220095);

assign select_ln414_fu_219_p3 = ((icmp_ln414_fu_201_p2[0:0] === 1'b1) ? st3_fu_211_p3 : tmp_V_2_fu_193_p1);

assign select_ln62_fu_368_p3 = ((tmp_last_V_reg_412[0:0] === 1'b1) ? 16'd0 : ap_phi_reg_pp0_iter1_phi_ln73_reg_143);

assign st3_fu_211_p3 = {{trunc_ln414_fu_207_p1}, {111'd0}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_219_p3) begin
    for (ap_tvar_int_0 = 112 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 111 - 0) begin
            tmp_88_fu_227_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_88_fu_227_p4[ap_tvar_int_0] = select_ln414_fu_219_p3[111 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_2_fu_193_p1 = s_axis_raw_TDATA[111:0];

assign tmp_nbreadreq_fu_90_p5 = s_axis_raw_TVALID;

assign trunc_ln414_fu_207_p1 = s_axis_raw_TDATA[0:0];

assign xor_ln414_fu_267_p2 = (112'd5192296858534827628530496329220095 ^ and_ln414_fu_261_p2);

assign xor_ln54_fu_313_p2 = (or_ln73_fu_303_p2 ^ 1'd1);

assign xor_ln62_fu_358_p2 = (tmp_last_V_reg_412 ^ 1'd1);

endmodule //detect_eth_protocol
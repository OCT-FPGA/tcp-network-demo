// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module extract_ip_address (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        s_axis_ip_TVALID,
        dataStreamBuffer0_V_din,
        dataStreamBuffer0_V_full_n,
        dataStreamBuffer0_V_write,
        arpTableOut_V_V_TREADY,
        s_axis_ip_TDATA,
        s_axis_ip_TREADY,
        s_axis_ip_TKEEP,
        s_axis_ip_TLAST,
        arpTableOut_V_V_TDATA,
        arpTableOut_V_V_TVALID,
        regSubNetMask_V,
        regDefaultGateway_V
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   s_axis_ip_TVALID;
output  [576:0] dataStreamBuffer0_V_din;
input   dataStreamBuffer0_V_full_n;
output   dataStreamBuffer0_V_write;
input   arpTableOut_V_V_TREADY;
input  [511:0] s_axis_ip_TDATA;
output   s_axis_ip_TREADY;
input  [63:0] s_axis_ip_TKEEP;
input  [0:0] s_axis_ip_TLAST;
output  [31:0] arpTableOut_V_V_TDATA;
output   arpTableOut_V_V_TVALID;
input  [31:0] regSubNetMask_V;
input  [31:0] regDefaultGateway_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dataStreamBuffer0_V_write;
reg s_axis_ip_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_102_p5;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] tmp_reg_421;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] tmp_reg_421_pp0_iter1_reg;
reg   [0:0] or_ln53_reg_458;
reg   [0:0] icmp_ln879_reg_467;
reg    ap_predicate_op56_write_state3;
reg    ap_predicate_op57_write_state3;
reg    ap_block_state3_io;
wire    regslice_both_arpTableOut_V_V_U_apdone_blk;
reg    ap_block_state4_pp0_stage0_iter3;
reg   [0:0] tmp_reg_421_pp0_iter2_reg;
reg   [0:0] or_ln53_reg_458_pp0_iter2_reg;
reg   [0:0] icmp_ln879_reg_467_pp0_iter2_reg;
reg    ap_predicate_op66_write_state4;
reg    ap_predicate_op68_write_state4;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] header_ready;
reg   [15:0] header_idx;
reg   [159:0] header_header_V;
reg   [0:0] metaWritten;
reg    s_axis_ip_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    arpTableOut_V_V_TDATA_blk_n;
reg    dataStreamBuffer0_V_blk_n;
reg   [511:0] tmp_data_V_reg_425;
reg   [63:0] tmp_keep_V_reg_430;
reg   [0:0] tmp_last_V_reg_435;
reg   [0:0] tmp_last_V_reg_435_pp0_iter1_reg;
wire   [0:0] header_ready_load_load_fu_185_p1;
reg   [0:0] header_ready_load_reg_443;
wire   [15:0] add_ln67_fu_305_p2;
wire   [0:0] or_ln53_fu_334_p2;
wire   [31:0] dstIpAddress_V_fu_344_p4;
reg   [31:0] dstIpAddress_V_reg_462;
wire   [0:0] icmp_ln879_fu_364_p2;
wire   [0:0] xor_ln67_fu_370_p2;
reg   [0:0] xor_ln67_reg_471;
wire   [0:0] or_ln67_fu_400_p2;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] ap_phi_reg_pp0_iter0_phi_ln73_reg_138;
reg   [15:0] ap_phi_reg_pp0_iter1_phi_ln73_reg_138;
wire   [0:0] ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147;
reg   [0:0] ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_147;
wire   [0:0] ap_phi_reg_pp0_iter0_metaWritten_flag_0_i_reg_160;
reg   [0:0] ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_160;
reg   [0:0] ap_phi_reg_pp0_iter2_metaWritten_flag_0_i_reg_160;
wire   [0:0] and_ln67_fu_375_p2;
reg   [0:0] ap_sig_allocacmp_header_ready_load;
wire   [15:0] select_ln67_fu_381_p3;
reg   [15:0] ap_sig_allocacmp_header_idx_load;
wire   [159:0] p_Result_s_fu_293_p2;
reg   [0:0] ap_sig_allocacmp_metaWritten_load;
reg    ap_block_pp0_stage0_01001;
wire   [24:0] Lo_assign_fu_193_p3;
wire   [0:0] trunc_ln414_fu_215_p1;
wire   [0:0] icmp_ln414_fu_209_p2;
wire   [159:0] st5_fu_219_p3;
wire   [159:0] tmp_V_2_fu_201_p1;
wire   [159:0] select_ln414_fu_227_p3;
reg   [159:0] tmp_81_fu_235_p4;
wire   [159:0] select_ln414_2_fu_253_p3;
wire   [159:0] select_ln414_3_fu_261_p3;
wire   [159:0] and_ln414_fu_269_p2;
wire   [159:0] xor_ln414_fu_275_p2;
wire   [159:0] select_ln414_1_fu_245_p3;
wire   [159:0] and_ln414_1_fu_281_p2;
wire   [159:0] and_ln414_2_fu_287_p2;
wire   [0:0] or_ln73_fu_311_p2;
wire   [0:0] xor_ln53_fu_328_p2;
wire   [31:0] xor_ln879_fu_354_p2;
wire   [31:0] and_ln879_fu_359_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to2;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg   [31:0] arpTableOut_V_V_TDATA_int;
reg    arpTableOut_V_V_TVALID_int;
wire    arpTableOut_V_V_TREADY_int;
wire    regslice_both_arpTableOut_V_V_U_vld_out;
reg    ap_condition_119;
reg    ap_condition_216;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 header_ready = 1'd0;
#0 header_idx = 16'd0;
#0 header_header_V = 160'd1180591620717411303493;
#0 metaWritten = 1'd0;
end

regslice_both #(
    .DataWidth( 32 ))
regslice_both_arpTableOut_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(arpTableOut_V_V_TDATA_int),
    .vld_in(arpTableOut_V_V_TVALID_int),
    .ack_in(arpTableOut_V_V_TREADY_int),
    .data_out(arpTableOut_V_V_TDATA),
    .vld_out(regslice_both_arpTableOut_V_V_U_vld_out),
    .ack_out(arpTableOut_V_V_TREADY),
    .apdone_blk(regslice_both_arpTableOut_V_V_U_apdone_blk)
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
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        if (((header_ready_load_load_fu_185_p1 == 1'd0) & (tmp_nbreadreq_fu_102_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_138 <= add_ln67_fu_305_p2;
        end else if (((header_ready_load_load_fu_185_p1 == 1'd1) & (tmp_nbreadreq_fu_102_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_138 <= ap_sig_allocacmp_header_idx_load;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_phi_ln73_reg_138 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_138;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        if (((header_ready_load_load_fu_185_p1 == 1'd0) & (tmp_nbreadreq_fu_102_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_147 <= 1'd1;
        end else if (((header_ready_load_load_fu_185_p1 == 1'd1) & (tmp_nbreadreq_fu_102_p5 == 1'd1))) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_147 <= 1'd0;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_147 <= ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_216)) begin
        if (((tmp_reg_421 == 1'd1) & (or_ln53_fu_334_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter2_metaWritten_flag_0_i_reg_160 <= 1'd0;
        end else if (((or_ln53_fu_334_p2 == 1'd0) & (tmp_reg_421 == 1'd1))) begin
            ap_phi_reg_pp0_iter2_metaWritten_flag_0_i_reg_160 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_metaWritten_flag_0_i_reg_160 <= ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_160;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_metaWritten_flag_0_i_reg_160 <= ap_phi_reg_pp0_iter0_metaWritten_flag_0_i_reg_160;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln53_fu_334_p2 == 1'd0) & (tmp_reg_421 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dstIpAddress_V_reg_462 <= {{header_header_V[159:128]}};
        icmp_ln879_reg_467 <= icmp_ln879_fu_364_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((header_ready_load_load_fu_185_p1 == 1'd0) & (tmp_nbreadreq_fu_102_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_header_V <= p_Result_s_fu_293_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_idx <= select_ln67_fu_381_p3;
        header_ready <= and_ln67_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_102_p5 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        header_ready_load_reg_443 <= ap_sig_allocacmp_header_ready_load;
        tmp_data_V_reg_425 <= s_axis_ip_TDATA;
        tmp_keep_V_reg_430 <= s_axis_ip_TKEEP;
        tmp_last_V_reg_435 <= s_axis_ip_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln879_reg_467_pp0_iter2_reg <= icmp_ln879_reg_467;
        or_ln53_reg_458_pp0_iter2_reg <= or_ln53_reg_458;
        tmp_reg_421_pp0_iter2_reg <= tmp_reg_421_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_421_pp0_iter1_reg == 1'd1) & (or_ln67_fu_400_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        metaWritten <= xor_ln67_reg_471;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_421 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        or_ln53_reg_458 <= or_ln53_fu_334_p2;
        xor_ln67_reg_471 <= xor_ln67_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_last_V_reg_435_pp0_iter1_reg <= tmp_last_V_reg_435;
        tmp_reg_421 <= tmp_nbreadreq_fu_102_p5;
        tmp_reg_421_pp0_iter1_reg <= tmp_reg_421;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_idx_load = select_ln67_fu_381_p3;
    end else begin
        ap_sig_allocacmp_header_idx_load = header_idx;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_header_ready_load = and_ln67_fu_375_p2;
    end else begin
        ap_sig_allocacmp_header_ready_load = header_ready;
    end
end

always @ (*) begin
    if (((tmp_reg_421_pp0_iter1_reg == 1'd1) & (or_ln67_fu_400_p2 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_metaWritten_load = xor_ln67_reg_471;
    end else begin
        ap_sig_allocacmp_metaWritten_load = metaWritten;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op57_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op56_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op68_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_op66_write_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        arpTableOut_V_V_TDATA_blk_n = arpTableOut_V_V_TREADY_int;
    end else begin
        arpTableOut_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op57_write_state3 == 1'b1)) begin
            arpTableOut_V_V_TDATA_int = dstIpAddress_V_reg_462;
        end else if ((ap_predicate_op56_write_state3 == 1'b1)) begin
            arpTableOut_V_V_TDATA_int = regDefaultGateway_V;
        end else begin
            arpTableOut_V_V_TDATA_int = 'bx;
        end
    end else begin
        arpTableOut_V_V_TDATA_int = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op57_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op56_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        arpTableOut_V_V_TVALID_int = 1'b1;
    end else begin
        arpTableOut_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        dataStreamBuffer0_V_blk_n = dataStreamBuffer0_V_full_n;
    end else begin
        dataStreamBuffer0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_421 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dataStreamBuffer0_V_write = 1'b1;
    end else begin
        dataStreamBuffer0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_102_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        s_axis_ip_TDATA_blk_n = s_axis_ip_TVALID;
    end else begin
        s_axis_ip_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_nbreadreq_fu_102_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        s_axis_ip_TREADY = 1'b1;
    end else begin
        s_axis_ip_TREADY = 1'b0;
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

assign Lo_assign_fu_193_p3 = {{ap_sig_allocacmp_header_idx_load}, {9'd0}};

assign add_ln67_fu_305_p2 = (16'd1 + ap_sig_allocacmp_header_idx_load);

assign and_ln414_1_fu_281_p2 = (xor_ln414_fu_275_p2 & header_header_V);

assign and_ln414_2_fu_287_p2 = (select_ln414_1_fu_245_p3 & and_ln414_fu_269_p2);

assign and_ln414_fu_269_p2 = (select_ln414_3_fu_261_p3 & select_ln414_2_fu_253_p3);

assign and_ln67_fu_375_p2 = (xor_ln67_fu_370_p2 & or_ln73_fu_311_p2);

assign and_ln879_fu_359_p2 = (xor_ln879_fu_354_p2 & regSubNetMask_V);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((regslice_both_arpTableOut_V_V_U_apdone_blk == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((tmp_reg_421 == 1'd1) & (dataStreamBuffer0_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_102_p5 == 1'd1) & (s_axis_ip_TVALID == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((tmp_reg_421 == 1'd1) & (dataStreamBuffer0_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_102_p5 == 1'd1) & (s_axis_ip_TVALID == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((regslice_both_arpTableOut_V_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state4_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((tmp_reg_421 == 1'd1) & (dataStreamBuffer0_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_102_p5 == 1'd1) & (s_axis_ip_TVALID == 1'b0)))) | ((ap_enable_reg_pp0_iter3 == 1'b1) & ((regslice_both_arpTableOut_V_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state4_io))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_102_p5 == 1'd1) & (s_axis_ip_TVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((tmp_reg_421 == 1'd1) & (dataStreamBuffer0_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = (((arpTableOut_V_V_TREADY_int == 1'b0) & (ap_predicate_op57_write_state3 == 1'b1)) | ((arpTableOut_V_V_TREADY_int == 1'b0) & (ap_predicate_op56_write_state3 == 1'b1)));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = (((arpTableOut_V_V_TREADY_int == 1'b0) & (ap_predicate_op68_write_state4 == 1'b1)) | ((arpTableOut_V_V_TREADY_int == 1'b0) & (ap_predicate_op66_write_state4 == 1'b1)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (regslice_both_arpTableOut_V_V_U_apdone_blk == 1'b1);
end

always @ (*) begin
    ap_condition_119 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_216 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_metaWritten_flag_0_i_reg_160 = 'bx;

assign ap_phi_reg_pp0_iter0_phi_ln73_reg_138 = 'bx;

assign ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_147 = 'bx;

always @ (*) begin
    ap_predicate_op56_write_state3 = ((icmp_ln879_reg_467 == 1'd0) & (or_ln53_reg_458 == 1'd0) & (tmp_reg_421_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op57_write_state3 = ((or_ln53_reg_458 == 1'd0) & (icmp_ln879_reg_467 == 1'd1) & (tmp_reg_421_pp0_iter1_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op66_write_state4 = ((icmp_ln879_reg_467_pp0_iter2_reg == 1'd0) & (or_ln53_reg_458_pp0_iter2_reg == 1'd0) & (tmp_reg_421_pp0_iter2_reg == 1'd1));
end

always @ (*) begin
    ap_predicate_op68_write_state4 = ((or_ln53_reg_458_pp0_iter2_reg == 1'd0) & (icmp_ln879_reg_467_pp0_iter2_reg == 1'd1) & (tmp_reg_421_pp0_iter2_reg == 1'd1));
end

assign arpTableOut_V_V_TVALID = regslice_both_arpTableOut_V_V_U_vld_out;

assign dataStreamBuffer0_V_din = {{{tmp_last_V_reg_435}, {tmp_keep_V_reg_430}}, {tmp_data_V_reg_425}};

assign dstIpAddress_V_fu_344_p4 = {{header_header_V[159:128]}};

assign header_ready_load_load_fu_185_p1 = ap_sig_allocacmp_header_ready_load;

assign icmp_ln414_fu_209_p2 = ((Lo_assign_fu_193_p3 > 25'd159) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_364_p2 = ((and_ln879_fu_359_p2 == 32'd0) ? 1'b1 : 1'b0);

assign or_ln53_fu_334_p2 = (xor_ln53_fu_328_p2 | ap_sig_allocacmp_metaWritten_load);

assign or_ln67_fu_400_p2 = (tmp_last_V_reg_435_pp0_iter1_reg | ap_phi_reg_pp0_iter2_metaWritten_flag_0_i_reg_160);

assign or_ln73_fu_311_p2 = (header_ready_load_reg_443 | ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_147);

assign p_Result_s_fu_293_p2 = (and_ln414_2_fu_287_p2 | and_ln414_1_fu_281_p2);

assign select_ln414_1_fu_245_p3 = ((icmp_ln414_fu_209_p2[0:0] === 1'b1) ? tmp_81_fu_235_p4 : tmp_V_2_fu_201_p1);

assign select_ln414_2_fu_253_p3 = ((icmp_ln414_fu_209_p2[0:0] === 1'b1) ? 160'd730750818665451459101842416358141509827966271488 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_3_fu_261_p3 = ((icmp_ln414_fu_209_p2[0:0] === 1'b1) ? 160'd1 : 160'd1461501637330902918203684832716283019655932542975);

assign select_ln414_fu_227_p3 = ((icmp_ln414_fu_209_p2[0:0] === 1'b1) ? st5_fu_219_p3 : tmp_V_2_fu_201_p1);

assign select_ln67_fu_381_p3 = ((tmp_last_V_reg_435[0:0] === 1'b1) ? 16'd0 : ap_phi_reg_pp0_iter1_phi_ln73_reg_138);

assign st5_fu_219_p3 = {{trunc_ln414_fu_215_p1}, {159'd0}};

integer ap_tvar_int_0;

always @ (select_ln414_fu_227_p3) begin
    for (ap_tvar_int_0 = 160 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 159 - 0) begin
            tmp_81_fu_235_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_81_fu_235_p4[ap_tvar_int_0] = select_ln414_fu_227_p3[159 - ap_tvar_int_0];
        end
    end
end

assign tmp_V_2_fu_201_p1 = s_axis_ip_TDATA[159:0];

assign tmp_nbreadreq_fu_102_p5 = s_axis_ip_TVALID;

assign trunc_ln414_fu_215_p1 = s_axis_ip_TDATA[0:0];

assign xor_ln414_fu_275_p2 = (160'd1461501637330902918203684832716283019655932542975 ^ and_ln414_fu_269_p2);

assign xor_ln53_fu_328_p2 = (or_ln73_fu_311_p2 ^ 1'd1);

assign xor_ln67_fu_370_p2 = (tmp_last_V_reg_435 ^ 1'd1);

assign xor_ln879_fu_354_p2 = (regDefaultGateway_V ^ dstIpAddress_V_fu_344_p4);

endmodule //extract_ip_address
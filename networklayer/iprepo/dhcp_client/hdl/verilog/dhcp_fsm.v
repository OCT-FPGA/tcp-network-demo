// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dhcp_fsm (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dhcp_replyMetaFifo_V_dout,
        dhcp_replyMetaFifo_V_empty_n,
        dhcp_replyMetaFifo_V_read,
        portOpen_V_V_dout,
        portOpen_V_V_empty_n,
        portOpen_V_V_read,
        dhcp_requestMetaFifo_1_din,
        dhcp_requestMetaFifo_1_full_n,
        dhcp_requestMetaFifo_1_write,
        ipAddressOut_V,
        ipAddressOut_V_ap_vld,
        dhcpEnable_V,
        inputIpAddress_V
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [103:0] dhcp_replyMetaFifo_V_dout;
input   dhcp_replyMetaFifo_V_empty_n;
output   dhcp_replyMetaFifo_V_read;
input  [0:0] portOpen_V_V_dout;
input   portOpen_V_V_empty_n;
output   portOpen_V_V_read;
output  [71:0] dhcp_requestMetaFifo_1_din;
input   dhcp_requestMetaFifo_1_full_n;
output   dhcp_requestMetaFifo_1_write;
output  [31:0] ipAddressOut_V;
output   ipAddressOut_V_ap_vld;
input  [0:0] dhcpEnable_V;
input  [31:0] inputIpAddress_V;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg dhcp_replyMetaFifo_V_read;
reg portOpen_V_V_read;
reg[71:0] dhcp_requestMetaFifo_1_din;
reg dhcp_requestMetaFifo_1_write;
reg ipAddressOut_V_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire   [2:0] state_load_load_fu_245_p1;
wire   [0:0] grp_nbreadreq_fu_112_p3;
reg    ap_predicate_op11_read_state1;
reg    ap_predicate_op21_read_state1;
reg    ap_predicate_op38_read_state1;
wire   [0:0] tmp_nbreadreq_fu_126_p3;
reg    ap_predicate_op66_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] state_load_reg_395;
reg   [0:0] tmp_4_reg_445;
reg   [0:0] icmp_ln879_6_reg_459;
reg   [0:0] icmp_ln879_10_reg_463;
reg    ap_predicate_op91_write_state2;
wire   [0:0] dhcpEnable_V_read_read_fu_106_p2;
reg   [0:0] icmp_ln879_reg_467;
reg    ap_predicate_op96_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] myIpAddress_V;
reg   [2:0] state;
reg   [31:0] time_V;
reg   [31:0] randomValue_V;
reg   [31:0] myIdentity_V;
reg   [31:0] IpAddressBuffer_V;
reg    portOpen_V_V_blk_n;
wire    ap_block_pp0_stage0;
reg    dhcp_requestMetaFifo_1_blk_n;
reg    dhcp_replyMetaFifo_V_blk_n;
reg   [31:0] tmp_identifier_V_reg_408;
reg   [31:0] myIdentity_V_load_reg_420;
reg   [0:0] tmp_5_reg_429;
wire   [0:0] icmp_ln879_9_fu_203_p2;
wire   [0:0] icmp_ln879_8_fu_268_p2;
reg   [0:0] icmp_ln879_8_reg_437;
wire   [0:0] icmp_ln879_11_fu_274_p2;
reg   [0:0] icmp_ln879_11_reg_441;
wire   [0:0] grp_fu_208_p2;
reg   [31:0] tmp_requestedIpAddre_reg_453;
wire   [0:0] icmp_ln879_6_fu_300_p2;
wire   [0:0] icmp_ln879_10_fu_306_p2;
wire   [31:0] xor_ln214_fu_334_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] ap_phi_mux_storemerge_i_phi_fu_157_p4;
wire   [2:0] ap_phi_reg_pp0_iter0_storemerge_i_reg_154;
reg   [1:0] ap_phi_mux_storemerge220_i_phi_fu_168_p4;
wire   [1:0] ap_phi_reg_pp0_iter0_storemerge220_i_reg_165;
wire   [31:0] ap_phi_reg_pp0_iter0_t_V_1_reg_176;
reg   [31:0] ap_phi_reg_pp0_iter1_t_V_1_reg_176;
wire   [2:0] zext_ln290_fu_312_p1;
wire   [31:0] grp_fu_213_p2;
wire   [31:0] add_ln700_fu_383_p2;
reg   [31:0] ap_sig_allocacmp_tmp_identifier_V;
wire   [71:0] tmp_2_fu_366_p4;
reg    ap_block_pp0_stage0_01001;
wire   [71:0] tmp22_fu_375_p3;
wire   [31:0] trunc_ln321_1_fu_264_p1;
wire   [7:0] grp_fu_224_p4;
wire   [31:0] tmp_identifier_V_1_fu_286_p1;
wire   [31:0] shl_ln214_fu_328_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_200;
reg    ap_condition_187;
reg    ap_condition_322;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 myIpAddress_V = 32'd0;
#0 state = 3'd0;
#0 time_V = 32'd100;
#0 randomValue_V = 32'd883610443;
#0 myIdentity_V = 32'd0;
#0 IpAddressBuffer_V = 32'd0;
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
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((grp_fu_208_p2 == 1'd1) & (dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_t_V_1_reg_176 <= xor_ln214_fu_334_p2;
    end else if ((((state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & ((state_load_load_fu_245_p1 == 3'd5) | ((state_load_load_fu_245_p1 == 3'd6) | (state_load_load_fu_245_p1 == 3'd7)))) | ((state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (dhcpEnable_V_read_read_fu_106_p2 == 1'd0)) | ((dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_t_V_1_reg_176 <= ap_sig_allocacmp_tmp_identifier_V;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_t_V_1_reg_176 <= ap_phi_reg_pp0_iter0_t_V_1_reg_176;
    end
end

always @ (posedge ap_clk) begin
    if ((((state_load_reg_395 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state_load_reg_395 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        myIpAddress_V <= inputIpAddress_V;
    end else if (((state_load_reg_395 == 3'd3) & (icmp_ln879_11_reg_441 == 1'd1) & (icmp_ln879_8_reg_437 == 1'd1) & (tmp_5_reg_429 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIpAddress_V <= IpAddressBuffer_V;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_208_p2 == 1'd1) & (dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= 3'd2;
    end else if (((icmp_ln879_6_fu_300_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= zext_ln290_fu_312_p1;
    end else if (((icmp_ln879_8_fu_268_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        state <= ap_phi_mux_storemerge_i_phi_fu_157_p4;
    end else if ((((tmp_nbreadreq_fu_126_p3 == 1'd1) & (state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_fu_208_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd0) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln879_9_fu_203_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd0) & (state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (dhcpEnable_V_read_read_fu_106_p2 == 1'd0)))) begin
        state <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln879_10_fu_306_p2 == 1'd1) & (icmp_ln879_6_fu_300_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_fu_208_p2 == 1'd1) & (dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        time_V <= 32'd750750750;
    end else if ((((grp_nbreadreq_fu_112_p3 == 1'd0) & (state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_112_p3 == 1'd0) & (state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln879_9_fu_203_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_208_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        time_V <= grp_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_load_reg_395 == 3'd2) & (icmp_ln879_10_reg_463 == 1'd1) & (icmp_ln879_6_reg_459 == 1'd1) & (tmp_4_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        IpAddressBuffer_V <= tmp_requestedIpAddre_reg_453;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_6_fu_300_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_10_reg_463 <= icmp_ln879_10_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln879_8_fu_268_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_11_reg_441 <= icmp_ln879_11_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_6_reg_459 <= icmp_ln879_6_fu_300_p2;
        tmp_requestedIpAddre_reg_453 <= {{dhcp_replyMetaFifo_V_dout[63:32]}};
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_8_reg_437 <= icmp_ln879_8_fu_268_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln879_reg_467 <= grp_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fu_208_p2 == 1'd1) & (dhcpEnable_V == 1'd1) & (state_load_load_fu_245_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIdentity_V <= ap_sig_allocacmp_tmp_identifier_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIdentity_V_load_reg_420 <= myIdentity_V;
        state_load_reg_395 <= state;
        tmp_identifier_V_reg_408 <= ap_sig_allocacmp_tmp_identifier_V;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        randomValue_V <= add_ln700_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_4_reg_445 <= grp_nbreadreq_fu_112_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_5_reg_429 <= grp_nbreadreq_fu_112_p3;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if ((1'b1 == ap_condition_200)) begin
        if ((icmp_ln879_10_fu_306_p2 == 1'd0)) begin
            ap_phi_mux_storemerge220_i_phi_fu_168_p4 = 2'd1;
        end else if ((icmp_ln879_10_fu_306_p2 == 1'd1)) begin
            ap_phi_mux_storemerge220_i_phi_fu_168_p4 = 2'd3;
        end else begin
            ap_phi_mux_storemerge220_i_phi_fu_168_p4 = ap_phi_reg_pp0_iter0_storemerge220_i_reg_165;
        end
    end else begin
        ap_phi_mux_storemerge220_i_phi_fu_168_p4 = ap_phi_reg_pp0_iter0_storemerge220_i_reg_165;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_187)) begin
        if ((icmp_ln879_11_fu_274_p2 == 1'd0)) begin
            ap_phi_mux_storemerge_i_phi_fu_157_p4 = 3'd1;
        end else if ((icmp_ln879_11_fu_274_p2 == 1'd1)) begin
            ap_phi_mux_storemerge_i_phi_fu_157_p4 = 3'd4;
        end else begin
            ap_phi_mux_storemerge_i_phi_fu_157_p4 = ap_phi_reg_pp0_iter0_storemerge_i_reg_154;
        end
    end else begin
        ap_phi_mux_storemerge_i_phi_fu_157_p4 = ap_phi_reg_pp0_iter0_storemerge_i_reg_154;
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
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tmp_identifier_V = add_ln700_fu_383_p2;
    end else begin
        ap_sig_allocacmp_tmp_identifier_V = randomValue_V;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op38_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op21_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        dhcp_replyMetaFifo_V_blk_n = dhcp_replyMetaFifo_V_empty_n;
    end else begin
        dhcp_replyMetaFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op38_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op21_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op11_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dhcp_replyMetaFifo_V_read = 1'b1;
    end else begin
        dhcp_replyMetaFifo_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op91_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op96_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        dhcp_requestMetaFifo_1_blk_n = dhcp_requestMetaFifo_1_full_n;
    end else begin
        dhcp_requestMetaFifo_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_322)) begin
        if ((ap_predicate_op96_write_state2 == 1'b1)) begin
            dhcp_requestMetaFifo_1_din = tmp22_fu_375_p3;
        end else if ((ap_predicate_op91_write_state2 == 1'b1)) begin
            dhcp_requestMetaFifo_1_din = tmp_2_fu_366_p4;
        end else begin
            dhcp_requestMetaFifo_1_din = 'bx;
        end
    end else begin
        dhcp_requestMetaFifo_1_din = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op91_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op96_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        dhcp_requestMetaFifo_1_write = 1'b1;
    end else begin
        dhcp_requestMetaFifo_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ipAddressOut_V_ap_vld = 1'b1;
    end else begin
        ipAddressOut_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op66_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        portOpen_V_V_blk_n = portOpen_V_V_empty_n;
    end else begin
        portOpen_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op66_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        portOpen_V_V_read = 1'b1;
    end else begin
        portOpen_V_V_read = 1'b0;
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

assign add_ln700_fu_383_p2 = (ap_phi_reg_pp0_iter1_t_V_1_reg_176 + 32'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((portOpen_V_V_empty_n == 1'b0) & (ap_predicate_op66_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op91_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((portOpen_V_V_empty_n == 1'b0) & (ap_predicate_op66_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op91_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((portOpen_V_V_empty_n == 1'b0) & (ap_predicate_op66_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op91_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((portOpen_V_V_empty_n == 1'b0) & (ap_predicate_op66_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op21_read_state1 == 1'b1)) | ((dhcp_replyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op11_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op91_write_state2 == 1'b1)) | ((dhcp_requestMetaFifo_1_full_n == 1'b0) & (ap_predicate_op96_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_187 = ((icmp_ln879_8_fu_268_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd3));
end

always @ (*) begin
    ap_condition_200 = ((icmp_ln879_6_fu_300_p2 == 1'd1) & (grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2));
end

always @ (*) begin
    ap_condition_322 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_storemerge220_i_reg_165 = 'bx;

assign ap_phi_reg_pp0_iter0_storemerge_i_reg_154 = 'bx;

assign ap_phi_reg_pp0_iter0_t_V_1_reg_176 = 'bx;

always @ (*) begin
    ap_predicate_op11_read_state1 = ((grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd4));
end

always @ (*) begin
    ap_predicate_op21_read_state1 = ((grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd3));
end

always @ (*) begin
    ap_predicate_op38_read_state1 = ((grp_nbreadreq_fu_112_p3 == 1'd1) & (state == 3'd2));
end

always @ (*) begin
    ap_predicate_op66_read_state1 = ((tmp_nbreadreq_fu_126_p3 == 1'd1) & (state == 3'd0));
end

always @ (*) begin
    ap_predicate_op91_write_state2 = ((state_load_reg_395 == 3'd2) & (icmp_ln879_10_reg_463 == 1'd1) & (icmp_ln879_6_reg_459 == 1'd1) & (tmp_4_reg_445 == 1'd1));
end

always @ (*) begin
    ap_predicate_op96_write_state2 = ((state_load_reg_395 == 3'd1) & (icmp_ln879_reg_467 == 1'd1) & (dhcpEnable_V == 1'd1));
end

assign dhcpEnable_V_read_read_fu_106_p2 = dhcpEnable_V;

assign grp_fu_208_p2 = ((time_V == 32'd0) ? 1'b1 : 1'b0);

assign grp_fu_213_p2 = ($signed(time_V) + $signed(32'd4294967295));

assign grp_fu_224_p4 = {{dhcp_replyMetaFifo_V_dout[103:96]}};

assign grp_nbreadreq_fu_112_p3 = dhcp_replyMetaFifo_V_empty_n;

assign icmp_ln879_10_fu_306_p2 = ((grp_fu_224_p4 == 8'd2) ? 1'b1 : 1'b0);

assign icmp_ln879_11_fu_274_p2 = ((grp_fu_224_p4 == 8'd5) ? 1'b1 : 1'b0);

assign icmp_ln879_6_fu_300_p2 = ((tmp_identifier_V_1_fu_286_p1 == myIdentity_V) ? 1'b1 : 1'b0);

assign icmp_ln879_8_fu_268_p2 = ((trunc_ln321_1_fu_264_p1 == myIdentity_V) ? 1'b1 : 1'b0);

assign icmp_ln879_9_fu_203_p2 = ((time_V == 32'd0) ? 1'b1 : 1'b0);

assign ipAddressOut_V = myIpAddress_V;

assign shl_ln214_fu_328_p2 = ap_sig_allocacmp_tmp_identifier_V << 32'd3;

assign state_load_load_fu_245_p1 = state;

assign tmp22_fu_375_p3 = {{40'd1}, {tmp_identifier_V_reg_408}};

assign tmp_2_fu_366_p4 = {{{tmp_requestedIpAddre_reg_453}, {8'd3}}, {myIdentity_V_load_reg_420}};

assign tmp_identifier_V_1_fu_286_p1 = dhcp_replyMetaFifo_V_dout[31:0];

assign tmp_nbreadreq_fu_126_p3 = portOpen_V_V_empty_n;

assign trunc_ln321_1_fu_264_p1 = dhcp_replyMetaFifo_V_dout[31:0];

assign xor_ln214_fu_334_p2 = (shl_ln214_fu_328_p2 ^ ap_sig_allocacmp_tmp_identifier_V);

assign zext_ln290_fu_312_p1 = ap_phi_mux_storemerge220_i_phi_fu_168_p4;

endmodule //dhcp_fsm

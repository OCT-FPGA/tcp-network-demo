// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module server_512_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        runExperiment_V_dout,
        runExperiment_V_empty_n,
        runExperiment_V_read,
        usePort_V_dout,
        usePort_V_empty_n,
        usePort_V_read,
        regBasePort_V_dout,
        regBasePort_V_empty_n,
        regBasePort_V_read,
        listenPortStatus_V_TVALID,
        notifications_V_TVALID,
        rxMetaData_V_V_TVALID,
        s_axis_rx_data_TVALID,
        listenPort_V_V_TREADY,
        readRequest_V_TREADY,
        listenPort_V_V_TDATA,
        listenPort_V_V_TVALID,
        listenPortStatus_V_TDATA,
        listenPortStatus_V_TREADY,
        notifications_V_TDATA,
        notifications_V_TREADY,
        readRequest_V_TDATA,
        readRequest_V_TVALID,
        rxMetaData_V_V_TDATA,
        rxMetaData_V_V_TREADY,
        s_axis_rx_data_TDATA,
        s_axis_rx_data_TREADY,
        s_axis_rx_data_TKEEP,
        s_axis_rx_data_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [0:0] runExperiment_V_dout;
input   runExperiment_V_empty_n;
output   runExperiment_V_read;
input  [15:0] usePort_V_dout;
input   usePort_V_empty_n;
output   usePort_V_read;
input  [15:0] regBasePort_V_dout;
input   regBasePort_V_empty_n;
output   regBasePort_V_read;
input   listenPortStatus_V_TVALID;
input   notifications_V_TVALID;
input   rxMetaData_V_V_TVALID;
input   s_axis_rx_data_TVALID;
input   listenPort_V_V_TREADY;
input   readRequest_V_TREADY;
output  [15:0] listenPort_V_V_TDATA;
output   listenPort_V_V_TVALID;
input  [7:0] listenPortStatus_V_TDATA;
output   listenPortStatus_V_TREADY;
input  [87:0] notifications_V_TDATA;
output   notifications_V_TREADY;
output  [31:0] readRequest_V_TDATA;
output   readRequest_V_TVALID;
input  [15:0] rxMetaData_V_V_TDATA;
output   rxMetaData_V_V_TREADY;
input  [511:0] s_axis_rx_data_TDATA;
output   s_axis_rx_data_TREADY;
input  [63:0] s_axis_rx_data_TKEEP;
input  [0:0] s_axis_rx_data_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg runExperiment_V_read;
reg usePort_V_read;
reg regBasePort_V_read;
reg listenPortStatus_V_TREADY;
reg notifications_V_TREADY;
reg rxMetaData_V_V_TREADY;
reg s_axis_rx_data_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [1:0] listenState_load_load_fu_282_p1;
wire   [0:0] tmp_nbreadreq_fu_128_p3;
reg    ap_predicate_op12_read_state1;
wire   [0:0] tmp_2_nbreadreq_fu_142_p3;
wire   [0:0] tmp_4_nbreadreq_fu_156_p3;
wire   [0:0] grp_nbreadreq_fu_164_p5;
reg    ap_predicate_op37_read_state1;
reg    ap_predicate_op38_read_state1;
reg    ap_predicate_op43_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [1:0] listenState_load_reg_421;
reg   [0:0] tmp_2_reg_445;
reg   [0:0] icmp_ln883_reg_449;
reg    ap_predicate_op57_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_listenPort_V_V_U_apdone_blk;
wire    regslice_both_readRequest_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [1:0] listenState_load_reg_421_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_445_pp0_iter1_reg;
reg   [0:0] icmp_ln883_reg_449_pp0_iter1_reg;
reg    ap_predicate_op83_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [1:0] listenState;
reg   [15:0] currentPort_V_1;
reg   [15:0] openedPort_V;
reg   [0:0] serverFsmState;
reg    listenPort_V_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    listenPortStatus_V_TDATA_blk_n;
reg    notifications_V_TDATA_blk_n;
reg    readRequest_V_TDATA_blk_n;
reg    rxMetaData_V_V_TDATA_blk_n;
reg    s_axis_rx_data_TDATA_blk_n;
reg    runExperiment_V_blk_n;
reg    usePort_V_blk_n;
reg    regBasePort_V_blk_n;
reg   [0:0] currentPort_V_1_flag_reg_206;
reg   [0:0] tmp_reg_425;
wire   [0:0] tmp_6_fu_290_p1;
reg   [0:0] tmp_6_reg_429;
wire   [15:0] add_ln700_1_fu_294_p2;
reg   [15:0] add_ln700_1_reg_434;
wire   [0:0] icmp_ln879_fu_300_p2;
reg   [0:0] icmp_ln879_reg_439;
wire   [0:0] icmp_ln883_fu_350_p2;
wire   [31:0] tmp_11_fu_356_p1;
reg   [31:0] tmp_11_reg_453;
wire   [0:0] grp_fu_278_p1;
wire   [15:0] select_ln400_fu_387_p3;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_currentPort_V_1_flag_phi_fu_211_p12;
wire   [0:0] ap_phi_reg_pp0_iter0_currentPort_V_1_flag_reg_206;
reg   [0:0] ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206;
wire   [0:0] runExperiment_V_read_read_fu_110_p2;
reg   [15:0] ap_phi_mux_openedPort_V_new_3_i_phi_fu_236_p12;
wire   [15:0] ap_phi_reg_pp0_iter0_openedPort_V_new_3_i_reg_231;
reg   [15:0] ap_phi_reg_pp0_iter1_openedPort_V_new_3_i_reg_231;
wire   [15:0] select_ln400_1_fu_394_p3;
wire   [15:0] ap_phi_reg_pp0_iter0_currentPort_V_1_new_s_reg_255;
reg   [15:0] ap_phi_reg_pp0_iter1_currentPort_V_1_new_s_reg_255;
reg   [15:0] ap_phi_reg_pp0_iter2_currentPort_V_1_new_s_reg_255;
wire   [1:0] zext_ln392_fu_318_p1;
reg   [15:0] ap_sig_allocacmp_tmp_V;
reg   [15:0] ap_sig_allocacmp_t_V_1;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] and_ln163_fu_306_p2;
wire   [0:0] xor_ln163_fu_312_p2;
wire   [15:0] tmp_length_V_fu_340_p4;
wire   [15:0] add_ln700_fu_381_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    listenPort_V_V_TVALID_int;
wire    listenPort_V_V_TREADY_int;
wire    regslice_both_listenPort_V_V_U_vld_out;
reg    readRequest_V_TVALID_int;
wire    readRequest_V_TREADY_int;
wire    regslice_both_readRequest_V_U_vld_out;
reg    ap_condition_156;
reg    ap_condition_284;
reg    ap_condition_462;
reg    ap_condition_461;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 listenState = 2'd0;
#0 currentPort_V_1 = 16'd0;
#0 openedPort_V = 16'd0;
#0 serverFsmState = 1'd0;
end

regslice_both #(
    .DataWidth( 16 ))
regslice_both_listenPort_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(ap_sig_allocacmp_tmp_V),
    .vld_in(listenPort_V_V_TVALID_int),
    .ack_in(listenPort_V_V_TREADY_int),
    .data_out(listenPort_V_V_TDATA),
    .vld_out(regslice_both_listenPort_V_V_U_vld_out),
    .ack_out(listenPort_V_V_TREADY),
    .apdone_blk(regslice_both_listenPort_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_readRequest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(tmp_11_reg_453),
    .vld_in(readRequest_V_TVALID_int),
    .ack_in(readRequest_V_TREADY_int),
    .data_out(readRequest_V_TDATA),
    .vld_out(regslice_both_readRequest_V_U_vld_out),
    .ack_out(readRequest_V_TREADY),
    .apdone_blk(regslice_both_readRequest_V_U_apdone_blk)
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
    if (ap_rst == 1'b1) begin
        listenState <= 2'd0;
    end else begin
        if ((1'b1 == ap_condition_156)) begin
            if (((runExperiment_V_read_read_fu_110_p2 == 1'd1) & (listenState_load_load_fu_282_p1 == 2'd0))) begin
                listenState <= 2'd1;
            end else if ((listenState_load_load_fu_282_p1 == 2'd1)) begin
                listenState <= 2'd2;
            end else if (((tmp_nbreadreq_fu_128_p3 == 1'd1) & (listenState == 2'd2))) begin
                listenState <= zext_ln392_fu_318_p1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((runExperiment_V_read_read_fu_110_p2 == 1'd0) & (listenState_load_load_fu_282_p1 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((runExperiment_V_read_read_fu_110_p2 == 1'd1) & (listenState_load_load_fu_282_p1 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206 <= 1'd1;
    end else if ((((tmp_nbreadreq_fu_128_p3 == 1'd0) & (listenState == 2'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((listenState_load_load_fu_282_p1 == 2'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((listenState_load_load_fu_282_p1 == 2'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206 <= ap_phi_reg_pp0_iter0_currentPort_V_1_flag_reg_206;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_156)) begin
        if (((runExperiment_V_read_read_fu_110_p2 == 1'd0) & (listenState_load_load_fu_282_p1 == 2'd0))) begin
            ap_phi_reg_pp0_iter1_currentPort_V_1_new_s_reg_255 <= 16'd0;
        end else if (((runExperiment_V_read_read_fu_110_p2 == 1'd1) & (listenState_load_load_fu_282_p1 == 2'd0))) begin
            ap_phi_reg_pp0_iter1_currentPort_V_1_new_s_reg_255 <= regBasePort_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_currentPort_V_1_new_s_reg_255 <= ap_phi_reg_pp0_iter0_currentPort_V_1_new_s_reg_255;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((runExperiment_V_read_read_fu_110_p2 == 1'd0) & (listenState_load_load_fu_282_p1 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((runExperiment_V_read_read_fu_110_p2 == 1'd1) & (listenState_load_load_fu_282_p1 == 2'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_openedPort_V_new_3_i_reg_231 <= 16'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_openedPort_V_new_3_i_reg_231 <= ap_phi_reg_pp0_iter0_openedPort_V_new_3_i_reg_231;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_284)) begin
        if (((tmp_reg_425 == 1'd1) & (listenState_load_reg_421 == 2'd2))) begin
            ap_phi_reg_pp0_iter2_currentPort_V_1_new_s_reg_255 <= select_ln400_fu_387_p3;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_currentPort_V_1_new_s_reg_255 <= ap_phi_reg_pp0_iter1_currentPort_V_1_new_s_reg_255;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_284)) begin
        if (((tmp_reg_425 == 1'd1) & (listenState_load_reg_421 == 2'd2))) begin
            currentPort_V_1_flag_reg_206 <= tmp_6_reg_429;
        end else if ((1'b1 == 1'b1)) begin
            currentPort_V_1_flag_reg_206 <= ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_461)) begin
        if (((serverFsmState == 1'd1) & (grp_fu_278_p1 == 1'd1))) begin
            serverFsmState <= 1'd0;
        end else if ((1'b1 == ap_condition_462)) begin
            serverFsmState <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_128_p3 == 1'd1) & (listenState == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln700_1_reg_434 <= add_ln700_1_fu_294_p2;
        icmp_ln879_reg_439 <= icmp_ln879_fu_300_p2;
        tmp_6_reg_429 <= tmp_6_fu_290_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((currentPort_V_1_flag_reg_206 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currentPort_V_1 <= ap_phi_reg_pp0_iter2_currentPort_V_1_new_s_reg_255;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln883_reg_449 <= icmp_ln883_fu_350_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln883_reg_449_pp0_iter1_reg <= icmp_ln883_reg_449;
        listenState_load_reg_421 <= listenState;
        listenState_load_reg_421_pp0_iter1_reg <= listenState_load_reg_421;
        tmp_2_reg_445 <= tmp_2_nbreadreq_fu_142_p3;
        tmp_2_reg_445_pp0_iter1_reg <= tmp_2_reg_445;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_currentPort_V_1_flag_phi_fu_211_p12 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        openedPort_V <= ap_phi_mux_openedPort_V_new_3_i_phi_fu_236_p12;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln883_fu_350_p2 == 1'd0) & (tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_11_reg_453 <= tmp_11_fu_356_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((listenState == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_425 <= tmp_nbreadreq_fu_128_p3;
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
    if (((tmp_reg_425 == 1'd1) & (listenState_load_reg_421 == 2'd2))) begin
        ap_phi_mux_currentPort_V_1_flag_phi_fu_211_p12 = tmp_6_reg_429;
    end else begin
        ap_phi_mux_currentPort_V_1_flag_phi_fu_211_p12 = ap_phi_reg_pp0_iter1_currentPort_V_1_flag_reg_206;
    end
end

always @ (*) begin
    if (((tmp_reg_425 == 1'd1) & (listenState_load_reg_421 == 2'd2))) begin
        ap_phi_mux_openedPort_V_new_3_i_phi_fu_236_p12 = select_ln400_1_fu_394_p3;
    end else begin
        ap_phi_mux_openedPort_V_new_3_i_phi_fu_236_p12 = ap_phi_reg_pp0_iter1_openedPort_V_new_3_i_reg_231;
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
    if (((ap_phi_mux_currentPort_V_1_flag_phi_fu_211_p12 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_t_V_1 = ap_phi_mux_openedPort_V_new_3_i_phi_fu_236_p12;
    end else begin
        ap_sig_allocacmp_t_V_1 = openedPort_V;
    end
end

always @ (*) begin
    if (((currentPort_V_1_flag_reg_206 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tmp_V = ap_phi_reg_pp0_iter2_currentPort_V_1_new_s_reg_255;
    end else begin
        ap_sig_allocacmp_tmp_V = currentPort_V_1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        listenPortStatus_V_TDATA_blk_n = listenPortStatus_V_TVALID;
    end else begin
        listenPortStatus_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        listenPortStatus_V_TREADY = 1'b1;
    end else begin
        listenPortStatus_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (listenState_load_reg_421 == 2'd1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (listenState_load_reg_421_pp0_iter1_reg == 2'd1)))) begin
        listenPort_V_V_TDATA_blk_n = listenPort_V_V_TREADY_int;
    end else begin
        listenPort_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (listenState_load_reg_421 == 2'd1))) begin
        listenPort_V_V_TVALID_int = 1'b1;
    end else begin
        listenPort_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        notifications_V_TDATA_blk_n = notifications_V_TVALID;
    end else begin
        notifications_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        notifications_V_TREADY = 1'b1;
    end else begin
        notifications_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op57_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op83_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        readRequest_V_TDATA_blk_n = readRequest_V_TREADY_int;
    end else begin
        readRequest_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op57_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        readRequest_V_TVALID_int = 1'b1;
    end else begin
        readRequest_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        regBasePort_V_blk_n = regBasePort_V_empty_n;
    end else begin
        regBasePort_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        regBasePort_V_read = 1'b1;
    end else begin
        regBasePort_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        runExperiment_V_blk_n = runExperiment_V_empty_n;
    end else begin
        runExperiment_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        runExperiment_V_read = 1'b1;
    end else begin
        runExperiment_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op37_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rxMetaData_V_V_TDATA_blk_n = rxMetaData_V_V_TVALID;
    end else begin
        rxMetaData_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op37_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rxMetaData_V_V_TREADY = 1'b1;
    end else begin
        rxMetaData_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op43_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op38_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        s_axis_rx_data_TDATA_blk_n = s_axis_rx_data_TVALID;
    end else begin
        s_axis_rx_data_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op43_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op38_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        s_axis_rx_data_TREADY = 1'b1;
    end else begin
        s_axis_rx_data_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        usePort_V_blk_n = usePort_V_empty_n;
    end else begin
        usePort_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        usePort_V_read = 1'b1;
    end else begin
        usePort_V_read = 1'b0;
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

assign add_ln700_1_fu_294_p2 = (16'd1 + ap_sig_allocacmp_t_V_1);

assign add_ln700_fu_381_p2 = (16'd1 + ap_sig_allocacmp_tmp_V);

assign and_ln163_fu_306_p2 = (tmp_6_fu_290_p1 & icmp_ln879_fu_300_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (regBasePort_V_empty_n == 1'b0) | (usePort_V_empty_n == 1'b0) | (runExperiment_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op43_read_state1 == 1'b1)) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((rxMetaData_V_V_TVALID == 1'b0) & (ap_predicate_op37_read_state1 == 1'b1)) | ((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (notifications_V_TVALID == 1'b0)) | ((listenPortStatus_V_TVALID == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_readRequest_V_U_apdone_blk == 1'b1) | (regslice_both_listenPort_V_V_U_apdone_blk == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (regBasePort_V_empty_n == 1'b0) | (usePort_V_empty_n == 1'b0) | (runExperiment_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op43_read_state1 == 1'b1)) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((rxMetaData_V_V_TVALID == 1'b0) & (ap_predicate_op37_read_state1 == 1'b1)) | ((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (notifications_V_TVALID == 1'b0)) | ((listenPortStatus_V_TVALID == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_readRequest_V_U_apdone_blk == 1'b1) | (regslice_both_listenPort_V_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (regBasePort_V_empty_n == 1'b0) | (usePort_V_empty_n == 1'b0) | (runExperiment_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op43_read_state1 == 1'b1)) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((rxMetaData_V_V_TVALID == 1'b0) & (ap_predicate_op37_read_state1 == 1'b1)) | ((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (notifications_V_TVALID == 1'b0)) | ((listenPortStatus_V_TVALID == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_readRequest_V_U_apdone_blk == 1'b1) | (regslice_both_listenPort_V_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (regBasePort_V_empty_n == 1'b0) | (usePort_V_empty_n == 1'b0) | (runExperiment_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op43_read_state1 == 1'b1)) | ((s_axis_rx_data_TVALID == 1'b0) & (ap_predicate_op38_read_state1 == 1'b1)) | ((rxMetaData_V_V_TVALID == 1'b0) & (ap_predicate_op37_read_state1 == 1'b1)) | ((tmp_2_nbreadreq_fu_142_p3 == 1'd1) & (notifications_V_TVALID == 1'b0)) | ((listenPortStatus_V_TVALID == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = (((readRequest_V_TREADY_int == 1'b0) & (ap_predicate_op57_write_state2 == 1'b1)) | ((listenPort_V_V_TREADY_int == 1'b0) & (listenState_load_reg_421 == 2'd1)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = (((readRequest_V_TREADY_int == 1'b0) & (ap_predicate_op83_write_state3 == 1'b1)) | ((listenPort_V_V_TREADY_int == 1'b0) & (listenState_load_reg_421_pp0_iter1_reg == 2'd1)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_readRequest_V_U_apdone_blk == 1'b1) | (regslice_both_listenPort_V_V_U_apdone_blk == 1'b1));
end

always @ (*) begin
    ap_condition_156 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_284 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_461 = ((grp_nbreadreq_fu_164_p5 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_462 = ((grp_fu_278_p1 == 1'd0) & (serverFsmState == 1'd0) & (tmp_4_nbreadreq_fu_156_p3 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_currentPort_V_1_flag_reg_206 = 'bx;

assign ap_phi_reg_pp0_iter0_currentPort_V_1_new_s_reg_255 = 'bx;

assign ap_phi_reg_pp0_iter0_openedPort_V_new_3_i_reg_231 = 'bx;

always @ (*) begin
    ap_predicate_op12_read_state1 = ((tmp_nbreadreq_fu_128_p3 == 1'd1) & (listenState == 2'd2));
end

always @ (*) begin
    ap_predicate_op37_read_state1 = ((serverFsmState == 1'd0) & (grp_nbreadreq_fu_164_p5 == 1'd1) & (tmp_4_nbreadreq_fu_156_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op38_read_state1 = ((serverFsmState == 1'd0) & (grp_nbreadreq_fu_164_p5 == 1'd1) & (tmp_4_nbreadreq_fu_156_p3 == 1'd1));
end

always @ (*) begin
    ap_predicate_op43_read_state1 = ((grp_nbreadreq_fu_164_p5 == 1'd1) & (serverFsmState == 1'd1));
end

always @ (*) begin
    ap_predicate_op57_write_state2 = ((icmp_ln883_reg_449 == 1'd0) & (tmp_2_reg_445 == 1'd1));
end

always @ (*) begin
    ap_predicate_op83_write_state3 = ((icmp_ln883_reg_449_pp0_iter1_reg == 1'd0) & (tmp_2_reg_445_pp0_iter1_reg == 1'd1));
end

assign grp_fu_278_p1 = s_axis_rx_data_TLAST;

assign grp_nbreadreq_fu_164_p5 = s_axis_rx_data_TVALID;

assign icmp_ln879_fu_300_p2 = ((add_ln700_1_fu_294_p2 == usePort_V_dout) ? 1'b1 : 1'b0);

assign icmp_ln883_fu_350_p2 = ((tmp_length_V_fu_340_p4 == 16'd0) ? 1'b1 : 1'b0);

assign listenPort_V_V_TVALID = regslice_both_listenPort_V_V_U_vld_out;

assign listenState_load_load_fu_282_p1 = listenState;

assign readRequest_V_TVALID = regslice_both_readRequest_V_U_vld_out;

assign runExperiment_V_read_read_fu_110_p2 = runExperiment_V_dout;

assign select_ln400_1_fu_394_p3 = ((icmp_ln879_reg_439[0:0] === 1'b1) ? 16'd0 : add_ln700_1_reg_434);

assign select_ln400_fu_387_p3 = ((icmp_ln879_reg_439[0:0] === 1'b1) ? 16'd0 : add_ln700_fu_381_p2);

assign tmp_11_fu_356_p1 = notifications_V_TDATA[31:0];

assign tmp_2_nbreadreq_fu_142_p3 = notifications_V_TVALID;

assign tmp_4_nbreadreq_fu_156_p3 = rxMetaData_V_V_TVALID;

assign tmp_6_fu_290_p1 = listenPortStatus_V_TDATA[0:0];

assign tmp_length_V_fu_340_p4 = {{notifications_V_TDATA[31:16]}};

assign tmp_nbreadreq_fu_128_p3 = listenPortStatus_V_TVALID;

assign xor_ln163_fu_312_p2 = (1'd1 ^ and_ln163_fu_306_p2);

assign zext_ln392_fu_318_p1 = xor_ln163_fu_312_p2;

endmodule //server_512_s

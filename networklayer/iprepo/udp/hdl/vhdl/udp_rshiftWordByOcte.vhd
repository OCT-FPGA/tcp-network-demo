-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity udp_rshiftWordByOcte is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rx_udp2shiftFifo_V_d_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    rx_udp2shiftFifo_V_d_empty_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_d_read : OUT STD_LOGIC;
    rx_udp2shiftFifo_V_k_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    rx_udp2shiftFifo_V_k_empty_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_k_read : OUT STD_LOGIC;
    rx_udp2shiftFifo_V_l_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    rx_udp2shiftFifo_V_l_empty_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_l_read : OUT STD_LOGIC;
    m_axis_rx_data_TREADY : IN STD_LOGIC;
    m_axis_rx_data_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axis_rx_data_TVALID : OUT STD_LOGIC;
    m_axis_rx_data_TKEEP : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axis_rx_data_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of udp_rshiftWordByOcte is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv56_0 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal io_acc_block_signal_op8 : STD_LOGIC;
    signal fsmState_load_load_fu_150_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_72_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op8_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal fsmState_load_reg_267 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_271 : STD_LOGIC_VECTOR (0 downto 0);
    signal rs_firstWord_load_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op31_write_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal regslice_both_output_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal fsmState_load_reg_267_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_271_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal rs_firstWord_load_reg_291_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op46_write_state3 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal fsmState : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal rs_firstWord : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal m_axis_rx_data_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rx_udp2shiftFifo_V_d_blk_n : STD_LOGIC;
    signal rx_udp2shiftFifo_V_k_blk_n : STD_LOGIC;
    signal rx_udp2shiftFifo_V_l_blk_n : STD_LOGIC;
    signal tmp_data_V_3_reg_275 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_keep_V_3_reg_281 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_last_V_fu_162_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal rs_firstWord_load_load_fu_166_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_1_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_1_reg_295 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_212_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_1_fu_224_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_2_fu_249_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_3_fu_258_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rs_firstWord_new_0_i_reg_119 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_rs_firstWord_load : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_9_i_fu_170_p4 : STD_LOGIC_VECTOR (55 downto 0);
    signal trunc_ln647_fu_209_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_132_p4 : STD_LOGIC_VECTOR (447 downto 0);
    signal trunc_ln647_1_fu_221_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_141_p4 : STD_LOGIC_VECTOR (55 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal m_axis_rx_data_TDATA_int : STD_LOGIC_VECTOR (511 downto 0);
    signal m_axis_rx_data_TVALID_int : STD_LOGIC;
    signal m_axis_rx_data_TREADY_int : STD_LOGIC;
    signal regslice_both_output_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_output_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal m_axis_rx_data_TKEEP_int : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_output_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_output_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_output_V_last_V_U_apdone_blk : STD_LOGIC;
    signal m_axis_rx_data_TLAST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_output_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_output_V_last_V_U_vld_out : STD_LOGIC;
    signal ap_condition_199 : BOOLEAN;
    signal ap_condition_203 : BOOLEAN;
    signal ap_condition_116 : BOOLEAN;
    signal ap_condition_206 : BOOLEAN;
    signal ap_condition_230 : BOOLEAN;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_output_V_data_V_U : component regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => m_axis_rx_data_TDATA_int,
        vld_in => m_axis_rx_data_TVALID_int,
        ack_in => m_axis_rx_data_TREADY_int,
        data_out => m_axis_rx_data_TDATA,
        vld_out => regslice_both_output_V_data_V_U_vld_out,
        ack_out => m_axis_rx_data_TREADY,
        apdone_blk => regslice_both_output_V_data_V_U_apdone_blk);

    regslice_both_output_V_keep_V_U : component regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => m_axis_rx_data_TKEEP_int,
        vld_in => m_axis_rx_data_TVALID_int,
        ack_in => regslice_both_output_V_keep_V_U_ack_in_dummy,
        data_out => m_axis_rx_data_TKEEP,
        vld_out => regslice_both_output_V_keep_V_U_vld_out,
        ack_out => m_axis_rx_data_TREADY,
        apdone_blk => regslice_both_output_V_keep_V_U_apdone_blk);

    regslice_both_output_V_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => m_axis_rx_data_TLAST_int,
        vld_in => m_axis_rx_data_TVALID_int,
        ack_in => regslice_both_output_V_last_V_U_ack_in_dummy,
        data_out => m_axis_rx_data_TLAST,
        vld_out => regslice_both_output_V_last_V_U_vld_out,
        ack_out => m_axis_rx_data_TREADY,
        apdone_blk => regslice_both_output_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_116)) then
                if ((ap_const_boolean_1 = ap_condition_203)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_199)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119 <= ap_phi_reg_pp0_iter0_rs_firstWord_new_0_i_reg_119;
                end if;
            end if; 
        end if;
    end process;

    fsmState_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_116)) then
                if ((fsmState_load_load_fu_150_p1 = ap_const_lv1_1)) then 
                    fsmState <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_206)) then 
                    fsmState <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                fsmState_load_reg_267 <= fsmState;
                fsmState_load_reg_267_pp0_iter1_reg <= fsmState_load_reg_267;
                rs_firstWord_load_reg_291_pp0_iter1_reg <= rs_firstWord_load_reg_291;
                tmp_reg_271_pp0_iter1_reg <= tmp_reg_271;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_reg_271 = ap_const_lv1_1) and (fsmState_load_reg_267 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                prevWord_data_V_1 <= tmp_data_V_3_reg_275;
                prevWord_keep_V <= tmp_keep_V_3_reg_281;
                rs_firstWord <= ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (fsmState = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                rs_firstWord_load_reg_291 <= ap_sig_allocacmp_rs_firstWord_load;
                tmp_data_V_3_reg_275 <= rx_udp2shiftFifo_V_d_dout;
                tmp_keep_V_3_reg_281 <= rx_udp2shiftFifo_V_k_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (rs_firstWord_load_load_fu_166_p1 = ap_const_lv1_0) and (fsmState = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_last_V_1_reg_295 <= tmp_last_V_1_fu_180_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((fsmState = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_271 <= tmp_nbreadreq_fu_72_p5;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter2, io_acc_block_signal_op8, ap_predicate_op8_read_state1, regslice_both_output_V_data_V_U_apdone_blk)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((regslice_both_output_V_data_V_U_apdone_blk = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op8 = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, io_acc_block_signal_op8, ap_predicate_op8_read_state1, ap_block_state2_io, regslice_both_output_V_data_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op8 = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_output_V_data_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, io_acc_block_signal_op8, ap_predicate_op8_read_state1, ap_block_state2_io, regslice_both_output_V_data_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op8 = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_output_V_data_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, io_acc_block_signal_op8, ap_predicate_op8_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op8 = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_io_assign_proc : process(fsmState_load_reg_267, ap_predicate_op31_write_state2, m_axis_rx_data_TREADY_int)
    begin
                ap_block_state2_io <= (((fsmState_load_reg_267 = ap_const_lv1_1) and (m_axis_rx_data_TREADY_int = ap_const_logic_0)) or ((m_axis_rx_data_TREADY_int = ap_const_logic_0) and (ap_predicate_op31_write_state2 = ap_const_boolean_1)));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_io_assign_proc : process(fsmState_load_reg_267_pp0_iter1_reg, ap_predicate_op46_write_state3, m_axis_rx_data_TREADY_int)
    begin
                ap_block_state3_io <= (((fsmState_load_reg_267_pp0_iter1_reg = ap_const_lv1_1) and (m_axis_rx_data_TREADY_int = ap_const_logic_0)) or ((m_axis_rx_data_TREADY_int = ap_const_logic_0) and (ap_predicate_op46_write_state3 = ap_const_boolean_1)));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(regslice_both_output_V_data_V_U_apdone_blk)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (regslice_both_output_V_data_V_U_apdone_blk = ap_const_logic_1);
    end process;


    ap_condition_116_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_116 <= ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_condition_199_assign_proc : process(tmp_nbreadreq_fu_72_p5, fsmState, tmp_last_V_fu_162_p1)
    begin
                ap_condition_199 <= ((tmp_last_V_fu_162_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (fsmState = ap_const_lv1_0));
    end process;


    ap_condition_203_assign_proc : process(tmp_nbreadreq_fu_72_p5, fsmState, tmp_last_V_fu_162_p1)
    begin
                ap_condition_203 <= ((tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (tmp_last_V_fu_162_p1 = ap_const_lv1_0) and (fsmState = ap_const_lv1_0));
    end process;


    ap_condition_206_assign_proc : process(tmp_nbreadreq_fu_72_p5, fsmState, tmp_last_V_fu_162_p1, ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4)
    begin
                ap_condition_206 <= ((tmp_last_V_fu_162_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 = ap_const_lv1_0) and (fsmState = ap_const_lv1_0));
    end process;


    ap_condition_230_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_230 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4_assign_proc : process(tmp_nbreadreq_fu_72_p5, fsmState, rs_firstWord_load_load_fu_166_p1, tmp_last_V_1_fu_180_p2, ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_108)
    begin
        if (((tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (fsmState = ap_const_lv1_0))) then
            if ((rs_firstWord_load_load_fu_166_p1 = ap_const_lv1_1)) then 
                ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 <= ap_const_lv1_0;
            elsif ((rs_firstWord_load_load_fu_166_p1 = ap_const_lv1_0)) then 
                ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 <= tmp_last_V_1_fu_180_p2;
            else 
                ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 <= ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_108;
            end if;
        else 
            ap_phi_mux_p_0256_2_0_i_phi_fu_111_p4 <= ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_108;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_108 <= "X";
    ap_phi_reg_pp0_iter0_rs_firstWord_new_0_i_reg_119 <= "X";

    ap_predicate_op31_write_state2_assign_proc : process(fsmState_load_reg_267, tmp_reg_271, rs_firstWord_load_reg_291)
    begin
                ap_predicate_op31_write_state2 <= ((tmp_reg_271 = ap_const_lv1_1) and (rs_firstWord_load_reg_291 = ap_const_lv1_0) and (fsmState_load_reg_267 = ap_const_lv1_0));
    end process;


    ap_predicate_op46_write_state3_assign_proc : process(fsmState_load_reg_267_pp0_iter1_reg, tmp_reg_271_pp0_iter1_reg, rs_firstWord_load_reg_291_pp0_iter1_reg)
    begin
                ap_predicate_op46_write_state3 <= ((tmp_reg_271_pp0_iter1_reg = ap_const_lv1_1) and (rs_firstWord_load_reg_291_pp0_iter1_reg = ap_const_lv1_0) and (fsmState_load_reg_267_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op8_read_state1_assign_proc : process(tmp_nbreadreq_fu_72_p5, fsmState)
    begin
                ap_predicate_op8_read_state1 <= ((tmp_nbreadreq_fu_72_p5 = ap_const_lv1_1) and (fsmState = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_rs_firstWord_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fsmState_load_reg_267, tmp_reg_271, rs_firstWord, ap_block_pp0_stage0, ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119)
    begin
        if (((tmp_reg_271 = ap_const_lv1_1) and (fsmState_load_reg_267 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_rs_firstWord_load <= ap_phi_reg_pp0_iter1_rs_firstWord_new_0_i_reg_119;
        else 
            ap_sig_allocacmp_rs_firstWord_load <= rs_firstWord;
        end if; 
    end process;

    fsmState_load_load_fu_150_p1 <= fsmState;
    grp_fu_132_p4 <= prevWord_data_V_1(511 downto 64);
    grp_fu_141_p4 <= prevWord_keep_V(63 downto 8);
    io_acc_block_signal_op8 <= (rx_udp2shiftFifo_V_l_empty_n and rx_udp2shiftFifo_V_k_empty_n and rx_udp2shiftFifo_V_d_empty_n);

    m_axis_rx_data_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, fsmState_load_reg_267, ap_predicate_op31_write_state2, fsmState_load_reg_267_pp0_iter1_reg, ap_predicate_op46_write_state3, ap_block_pp0_stage0, m_axis_rx_data_TREADY_int)
    begin
        if ((((fsmState_load_reg_267 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op31_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((fsmState_load_reg_267_pp0_iter1_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op46_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            m_axis_rx_data_TDATA_blk_n <= m_axis_rx_data_TREADY_int;
        else 
            m_axis_rx_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    m_axis_rx_data_TDATA_int_assign_proc : process(fsmState_load_reg_267, ap_predicate_op31_write_state2, p_Result_s_fu_212_p3, p_Result_2_fu_249_p3, ap_condition_230)
    begin
        if ((ap_const_boolean_1 = ap_condition_230)) then
            if ((fsmState_load_reg_267 = ap_const_lv1_1)) then 
                m_axis_rx_data_TDATA_int <= p_Result_2_fu_249_p3;
            elsif ((ap_predicate_op31_write_state2 = ap_const_boolean_1)) then 
                m_axis_rx_data_TDATA_int <= p_Result_s_fu_212_p3;
            else 
                m_axis_rx_data_TDATA_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            m_axis_rx_data_TDATA_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axis_rx_data_TKEEP_int_assign_proc : process(fsmState_load_reg_267, ap_predicate_op31_write_state2, p_Result_1_fu_224_p3, p_Result_3_fu_258_p3, ap_condition_230)
    begin
        if ((ap_const_boolean_1 = ap_condition_230)) then
            if ((fsmState_load_reg_267 = ap_const_lv1_1)) then 
                m_axis_rx_data_TKEEP_int <= p_Result_3_fu_258_p3;
            elsif ((ap_predicate_op31_write_state2 = ap_const_boolean_1)) then 
                m_axis_rx_data_TKEEP_int <= p_Result_1_fu_224_p3;
            else 
                m_axis_rx_data_TKEEP_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            m_axis_rx_data_TKEEP_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axis_rx_data_TLAST_int_assign_proc : process(fsmState_load_reg_267, ap_predicate_op31_write_state2, tmp_last_V_1_reg_295, ap_condition_230)
    begin
        if ((ap_const_boolean_1 = ap_condition_230)) then
            if ((fsmState_load_reg_267 = ap_const_lv1_1)) then 
                m_axis_rx_data_TLAST_int <= ap_const_lv1_1;
            elsif ((ap_predicate_op31_write_state2 = ap_const_boolean_1)) then 
                m_axis_rx_data_TLAST_int <= tmp_last_V_1_reg_295;
            else 
                m_axis_rx_data_TLAST_int <= "X";
            end if;
        else 
            m_axis_rx_data_TLAST_int <= "X";
        end if; 
    end process;

    m_axis_rx_data_TVALID <= regslice_both_output_V_data_V_U_vld_out;

    m_axis_rx_data_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fsmState_load_reg_267, ap_predicate_op31_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((fsmState_load_reg_267 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op31_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            m_axis_rx_data_TVALID_int <= ap_const_logic_1;
        else 
            m_axis_rx_data_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_1_fu_224_p3 <= (trunc_ln647_1_fu_221_p1 & grp_fu_141_p4);
    p_Result_2_fu_249_p3 <= (ap_const_lv64_0 & grp_fu_132_p4);
    p_Result_3_fu_258_p3 <= (ap_const_lv8_0 & grp_fu_141_p4);
    p_Result_9_i_fu_170_p4 <= rx_udp2shiftFifo_V_k_dout(63 downto 8);
    p_Result_s_fu_212_p3 <= (trunc_ln647_fu_209_p1 & grp_fu_132_p4);
    rs_firstWord_load_load_fu_166_p1 <= ap_sig_allocacmp_rs_firstWord_load;

    rx_udp2shiftFifo_V_d_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rx_udp2shiftFifo_V_d_empty_n, ap_predicate_op8_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_d_blk_n <= rx_udp2shiftFifo_V_d_empty_n;
        else 
            rx_udp2shiftFifo_V_d_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rx_udp2shiftFifo_V_d_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rx_udp2shiftFifo_V_d_read <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_d_read <= ap_const_logic_0;
        end if; 
    end process;


    rx_udp2shiftFifo_V_k_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rx_udp2shiftFifo_V_k_empty_n, ap_predicate_op8_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_k_blk_n <= rx_udp2shiftFifo_V_k_empty_n;
        else 
            rx_udp2shiftFifo_V_k_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rx_udp2shiftFifo_V_k_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rx_udp2shiftFifo_V_k_read <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_k_read <= ap_const_logic_0;
        end if; 
    end process;


    rx_udp2shiftFifo_V_l_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rx_udp2shiftFifo_V_l_empty_n, ap_predicate_op8_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_l_blk_n <= rx_udp2shiftFifo_V_l_empty_n;
        else 
            rx_udp2shiftFifo_V_l_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rx_udp2shiftFifo_V_l_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rx_udp2shiftFifo_V_l_read <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_l_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_last_V_1_fu_180_p2 <= "1" when (p_Result_9_i_fu_170_p4 = ap_const_lv56_0) else "0";
    tmp_last_V_fu_162_p1 <= rx_udp2shiftFifo_V_l_dout;
    tmp_nbreadreq_fu_72_p5 <= (0=>(rx_udp2shiftFifo_V_l_empty_n and rx_udp2shiftFifo_V_k_empty_n and rx_udp2shiftFifo_V_d_empty_n), others=>'-');
    trunc_ln647_1_fu_221_p1 <= tmp_keep_V_3_reg_281(8 - 1 downto 0);
    trunc_ln647_fu_209_p1 <= tmp_data_V_3_reg_275(64 - 1 downto 0);
end behav;
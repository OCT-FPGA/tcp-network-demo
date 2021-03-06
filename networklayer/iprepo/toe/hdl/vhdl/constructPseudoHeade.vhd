-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity constructPseudoHeade is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxEng_ipMetaFifo_V_t_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rxEng_ipMetaFifo_V_t_empty_n : IN STD_LOGIC;
    rxEng_ipMetaFifo_V_t_read : OUT STD_LOGIC;
    rxEng_ipMetaFifo_V_o_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    rxEng_ipMetaFifo_V_o_empty_n : IN STD_LOGIC;
    rxEng_ipMetaFifo_V_o_read : OUT STD_LOGIC;
    rxEng_ipMetaFifo_V_l_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    rxEng_ipMetaFifo_V_l_empty_n : IN STD_LOGIC;
    rxEng_ipMetaFifo_V_l_read : OUT STD_LOGIC;
    rxEng_pseudoHeaderFi_3_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    rxEng_pseudoHeaderFi_3_full_n : IN STD_LOGIC;
    rxEng_pseudoHeaderFi_3_write : OUT STD_LOGIC;
    rxEng_pseudoHeaderFi_5_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    rxEng_pseudoHeaderFi_5_full_n : IN STD_LOGIC;
    rxEng_pseudoHeaderFi_5_write : OUT STD_LOGIC;
    rxEng_pseudoHeaderFi_6_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    rxEng_pseudoHeaderFi_6_full_n : IN STD_LOGIC;
    rxEng_pseudoHeaderFi_6_write : OUT STD_LOGIC );
end;


architecture behav of constructPseudoHeade is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv25_60 : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000001100000";
    constant ap_const_lv25_5F : STD_LOGIC_VECTOR (24 downto 0) := "0000000000000000001011111";
    constant ap_const_lv96_3FFFFFFFF : STD_LOGIC_VECTOR (95 downto 0) := "000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111";
    constant ap_const_lv96_FFFFFFFFFFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (95 downto 0) := "111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal io_acc_block_signal_op7 : STD_LOGIC;
    signal state_3_load_load_fu_129_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_92_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op7_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op47 : STD_LOGIC;
    signal state_3_load_reg_338 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal state_3 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal header_idx : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal header_header_V : STD_LOGIC_VECTOR (95 downto 0) := "000000000000000000000110000000000000000000000000000000000000000000000000000000000000000000000000";
    signal rxEng_ipMetaFifo_V_t_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxEng_ipMetaFifo_V_o_blk_n : STD_LOGIC;
    signal rxEng_ipMetaFifo_V_l_blk_n : STD_LOGIC;
    signal rxEng_pseudoHeaderFi_3_blk_n : STD_LOGIC;
    signal rxEng_pseudoHeaderFi_5_blk_n : STD_LOGIC;
    signal rxEng_pseudoHeaderFi_6_blk_n : STD_LOGIC;
    signal tmp_reg_342 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal select_ln82_fu_324_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_s_fu_195_p5 : STD_LOGIC_VECTOR (95 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_143_fu_149_p5 : STD_LOGIC_VECTOR (95 downto 0);
    signal trunc_ln647_16_fu_183_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_138_i_i_i_fu_173_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_144_fu_161_p5 : STD_LOGIC_VECTOR (95 downto 0);
    signal agg_result_V_0_1_i_i_fu_187_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal Lo_assign_fu_239_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal icmp_ln647_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln647_fu_259_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_510_fu_263_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln647_fu_271_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln647_fu_279_p1 : STD_LOGIC_VECTOR (95 downto 0);
    signal select_ln647_13_fu_283_p3 : STD_LOGIC_VECTOR (95 downto 0);
    signal select_ln647_14_fu_291_p3 : STD_LOGIC_VECTOR (95 downto 0);
    signal p_Result_145_fu_299_p2 : STD_LOGIC_VECTOR (95 downto 0);
    signal icmp_ln82_fu_247_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln85_fu_318_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_123 : BOOLEAN;
    signal ap_condition_90 : BOOLEAN;


begin




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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    header_idx_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_123)) then
                if ((state_3_load_reg_338 = ap_const_lv1_1)) then 
                    header_idx <= select_ln82_fu_324_p3;
                elsif (((tmp_reg_342 = ap_const_lv1_1) and (state_3_load_reg_338 = ap_const_lv1_0))) then 
                    header_idx <= ap_const_lv16_0;
                end if;
            end if; 
        end if;
    end process;

    state_3_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_90)) then
                if ((state_3_load_load_fu_129_p1 = ap_const_lv1_1)) then 
                    state_3 <= ap_const_lv1_0;
                elsif (((tmp_nbreadreq_fu_92_p5 = ap_const_lv1_1) and (state_3 = ap_const_lv1_0))) then 
                    state_3 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_92_p5 = ap_const_lv1_1) and (state_3 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                header_header_V <= p_Result_s_fu_195_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                state_3_load_reg_338 <= state_3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_342 <= tmp_nbreadreq_fu_92_p5;
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
    Lo_assign_fu_239_p3 <= (header_idx & ap_const_lv9_0);
    add_ln85_fu_318_p2 <= std_logic_vector(unsigned(header_idx) + unsigned(ap_const_lv16_1));
    agg_result_V_0_1_i_i_fu_187_p3 <= (trunc_ln647_16_fu_183_p1 & p_Result_138_i_i_i_fu_173_p4);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op7, ap_predicate_op7_read_state1, io_acc_block_signal_op47, state_3_load_reg_338)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((state_3_load_reg_338 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op7 = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op7, ap_predicate_op7_read_state1, io_acc_block_signal_op47, state_3_load_reg_338)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((state_3_load_reg_338 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op7 = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op7, ap_predicate_op7_read_state1, io_acc_block_signal_op47, state_3_load_reg_338)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((state_3_load_reg_338 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op7 = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, io_acc_block_signal_op7, ap_predicate_op7_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op7 = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(io_acc_block_signal_op47, state_3_load_reg_338)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((state_3_load_reg_338 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0));
    end process;


    ap_condition_123_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_123 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_90_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_90 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op7_read_state1_assign_proc : process(tmp_nbreadreq_fu_92_p5, state_3)
    begin
                ap_predicate_op7_read_state1 <= ((tmp_nbreadreq_fu_92_p5 = ap_const_lv1_1) and (state_3 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln647_fu_253_p2 <= "1" when (unsigned(Lo_assign_fu_239_p3) > unsigned(ap_const_lv25_5F)) else "0";
    icmp_ln82_fu_247_p2 <= "1" when (unsigned(Lo_assign_fu_239_p3) < unsigned(ap_const_lv25_60)) else "0";
    io_acc_block_signal_op47 <= (rxEng_pseudoHeaderFi_6_full_n and rxEng_pseudoHeaderFi_5_full_n and rxEng_pseudoHeaderFi_3_full_n);
    io_acc_block_signal_op7 <= (rxEng_ipMetaFifo_V_t_empty_n and rxEng_ipMetaFifo_V_o_empty_n and rxEng_ipMetaFifo_V_l_empty_n);
    p_Result_138_i_i_i_fu_173_p4 <= rxEng_ipMetaFifo_V_l_dout(15 downto 8);
    p_Result_143_fu_149_p5 <= (header_header_V(95 downto 32) & rxEng_ipMetaFifo_V_t_dout);
    p_Result_144_fu_161_p5 <= (p_Result_143_fu_149_p5(95 downto 64) & rxEng_ipMetaFifo_V_o_dout & p_Result_143_fu_149_p5(31 downto 0));
    p_Result_145_fu_299_p2 <= (select_ln647_14_fu_291_p3 and select_ln647_13_fu_283_p3);
    p_Result_s_fu_195_p5 <= (agg_result_V_0_1_i_i_fu_187_p3 & p_Result_144_fu_161_p5(79 downto 0));

    rxEng_ipMetaFifo_V_l_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_ipMetaFifo_V_l_empty_n, ap_predicate_op7_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_l_blk_n <= rxEng_ipMetaFifo_V_l_empty_n;
        else 
            rxEng_ipMetaFifo_V_l_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_ipMetaFifo_V_l_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_l_read <= ap_const_logic_1;
        else 
            rxEng_ipMetaFifo_V_l_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_ipMetaFifo_V_o_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_ipMetaFifo_V_o_empty_n, ap_predicate_op7_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_o_blk_n <= rxEng_ipMetaFifo_V_o_empty_n;
        else 
            rxEng_ipMetaFifo_V_o_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_ipMetaFifo_V_o_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_o_read <= ap_const_logic_1;
        else 
            rxEng_ipMetaFifo_V_o_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_ipMetaFifo_V_t_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_ipMetaFifo_V_t_empty_n, ap_predicate_op7_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_t_blk_n <= rxEng_ipMetaFifo_V_t_empty_n;
        else 
            rxEng_ipMetaFifo_V_t_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_ipMetaFifo_V_t_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_ipMetaFifo_V_t_read <= ap_const_logic_1;
        else 
            rxEng_ipMetaFifo_V_t_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_pseudoHeaderFi_3_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFi_3_full_n, state_3_load_reg_338, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_3_blk_n <= rxEng_pseudoHeaderFi_3_full_n;
        else 
            rxEng_pseudoHeaderFi_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rxEng_pseudoHeaderFi_3_din <= (ap_const_lv512_lc_1(511 downto 96) & p_Result_145_fu_299_p2);

    rxEng_pseudoHeaderFi_3_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_3_load_reg_338, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_3_write <= ap_const_logic_1;
        else 
            rxEng_pseudoHeaderFi_3_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_pseudoHeaderFi_5_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFi_5_full_n, state_3_load_reg_338, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_5_blk_n <= rxEng_pseudoHeaderFi_5_full_n;
        else 
            rxEng_pseudoHeaderFi_5_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rxEng_pseudoHeaderFi_5_din <= ap_const_lv64_FFFFFFFFFFFFFFFF;

    rxEng_pseudoHeaderFi_5_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_3_load_reg_338, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_5_write <= ap_const_logic_1;
        else 
            rxEng_pseudoHeaderFi_5_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_pseudoHeaderFi_6_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_pseudoHeaderFi_6_full_n, state_3_load_reg_338, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_6_blk_n <= rxEng_pseudoHeaderFi_6_full_n;
        else 
            rxEng_pseudoHeaderFi_6_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rxEng_pseudoHeaderFi_6_din <= ap_const_lv1_1;

    rxEng_pseudoHeaderFi_6_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, state_3_load_reg_338, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (state_3_load_reg_338 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            rxEng_pseudoHeaderFi_6_write <= ap_const_logic_1;
        else 
            rxEng_pseudoHeaderFi_6_write <= ap_const_logic_0;
        end if; 
    end process;

    select_ln647_13_fu_283_p3 <= 
        zext_ln647_fu_279_p1 when (icmp_ln647_fu_253_p2(0) = '1') else 
        header_header_V;
    select_ln647_14_fu_291_p3 <= 
        ap_const_lv96_3FFFFFFFF when (icmp_ln647_fu_253_p2(0) = '1') else 
        ap_const_lv96_FFFFFFFFFFFFFFFFFFFFFFFF;
    select_ln647_fu_271_p3 <= 
        trunc_ln647_fu_259_p1 when (icmp_ln647_fu_253_p2(0) = '1') else 
        tmp_510_fu_263_p3;
    select_ln82_fu_324_p3 <= 
        add_ln85_fu_318_p2 when (icmp_ln82_fu_247_p2(0) = '1') else 
        header_idx;
    state_3_load_load_fu_129_p1 <= state_3;
    tmp_510_fu_263_p3 <= header_header_V(95 downto 95);
    tmp_nbreadreq_fu_92_p5 <= (0=>(rxEng_ipMetaFifo_V_t_empty_n and rxEng_ipMetaFifo_V_o_empty_n and rxEng_ipMetaFifo_V_l_empty_n), others=>'-');
    trunc_ln647_16_fu_183_p1 <= rxEng_ipMetaFifo_V_l_dout(8 - 1 downto 0);
    trunc_ln647_fu_259_p1 <= header_header_V(1 - 1 downto 0);
    zext_ln647_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln647_fu_271_p3),96));
end behav;

-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lshiftWordByOctet_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxEng_dataBuffer4_V_1_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    rxEng_dataBuffer4_V_1_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer4_V_1_read : OUT STD_LOGIC;
    rxEng_dataBuffer4_V_2_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    rxEng_dataBuffer4_V_2_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer4_V_2_read : OUT STD_LOGIC;
    rxEng_dataBuffer4_V_s_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    rxEng_dataBuffer4_V_s_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer4_V_s_read : OUT STD_LOGIC;
    rxEng_dataBuffer5_V_1_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    rxEng_dataBuffer5_V_1_full_n : IN STD_LOGIC;
    rxEng_dataBuffer5_V_1_write : OUT STD_LOGIC;
    rxEng_dataBuffer5_V_2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    rxEng_dataBuffer5_V_2_full_n : IN STD_LOGIC;
    rxEng_dataBuffer5_V_2_write : OUT STD_LOGIC;
    rxEng_dataBuffer5_V_s_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    rxEng_dataBuffer5_V_s_full_n : IN STD_LOGIC;
    rxEng_dataBuffer5_V_s_write : OUT STD_LOGIC );
end;


architecture behav of lshiftWordByOctet_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv512_lc_6 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000";
    constant ap_const_lv12_FFF : STD_LOGIC_VECTOR (11 downto 0) := "111111111111";
    constant ap_const_lv32_1A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv416_lc_1 : STD_LOGIC_VECTOR (415 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv52_0 : STD_LOGIC_VECTOR (51 downto 0) := "0000000000000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal io_acc_block_signal_op9 : STD_LOGIC;
    signal ls_writeRemainder_2_s_load_fu_132_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_74_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op9_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op42 : STD_LOGIC;
    signal ls_writeRemainder_2_s_reg_303 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_307 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op42_write_state2 : BOOLEAN;
    signal io_acc_block_signal_op49 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ls_writeRemainder_2 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_14 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_9 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord_2 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal rxEng_dataBuffer5_V_1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxEng_dataBuffer5_V_2_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer5_V_s_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer4_V_1_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer4_V_2_blk_n : STD_LOGIC;
    signal rxEng_dataBuffer4_V_s_blk_n : STD_LOGIC;
    signal sendWord_keep_V_fu_219_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_keep_V_reg_314 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_fu_227_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_data_V_reg_319 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_last_V_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_324 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_i_reg_329 : STD_LOGIC_VECTOR (95 downto 0);
    signal grp_fu_123_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_Result_i_467_reg_334 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_reg_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_fu_153_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln761_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_ls_firstWord_2_load : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_s_fu_287_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_80_fu_295_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln647_13_fu_171_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal trunc_ln647_fu_161_p1 : STD_LOGIC_VECTOR (415 downto 0);
    signal p_Result_58_i_fu_193_p4 : STD_LOGIC_VECTOR (95 downto 0);
    signal p_Result_82_fu_175_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_84_fu_211_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_81_fu_165_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_83_fu_203_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_57_i_fu_183_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_152 : BOOLEAN;
    signal ap_condition_156 : BOOLEAN;
    signal ap_condition_100 : BOOLEAN;
    signal ap_condition_180 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_100)) then
                if ((ap_const_boolean_1 = ap_condition_156)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_152)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110 <= ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_reg_110;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_2_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_100)) then
                if ((ls_writeRemainder_2_s_load_fu_132_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder_2 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_152)) then 
                    ls_writeRemainder_2 <= xor_ln761_fu_253_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_307 = ap_const_lv1_1) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_firstWord_2 <= ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_2_s_reg_303 <= ls_writeRemainder_2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2_s_load_fu_132_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_i_467_reg_334 <= prevWord_keep_V_9(63 downto 52);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2_s_load_fu_132_p1 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_i_reg_329 <= prevWord_data_V_14(511 downto 416);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_74_p5 = ap_const_lv1_1) and (ls_writeRemainder_2 = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_14 <= rxEng_dataBuffer4_V_1_dout;
                prevWord_keep_V_9 <= rxEng_dataBuffer4_V_2_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_74_p5 = ap_const_lv1_1) and (ls_writeRemainder_2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                sendWord_data_V_reg_319 <= sendWord_data_V_fu_227_p3;
                sendWord_keep_V_reg_314 <= sendWord_keep_V_fu_219_p3;
                sendWord_last_V_reg_324 <= sendWord_last_V_fu_235_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_307 <= tmp_nbreadreq_fu_74_p5;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op9, ap_predicate_op9_read_state1, io_acc_block_signal_op42, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, io_acc_block_signal_op49)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (io_acc_block_signal_op49 = ap_const_logic_0)) or ((io_acc_block_signal_op42 = ap_const_logic_0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op9 = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op9, ap_predicate_op9_read_state1, io_acc_block_signal_op42, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, io_acc_block_signal_op49)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (io_acc_block_signal_op49 = ap_const_logic_0)) or ((io_acc_block_signal_op42 = ap_const_logic_0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op9 = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, io_acc_block_signal_op9, ap_predicate_op9_read_state1, io_acc_block_signal_op42, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, io_acc_block_signal_op49)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (io_acc_block_signal_op49 = ap_const_logic_0)) or ((io_acc_block_signal_op42 = ap_const_logic_0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op9 = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, io_acc_block_signal_op9, ap_predicate_op9_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((io_acc_block_signal_op9 = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(io_acc_block_signal_op42, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, io_acc_block_signal_op49)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (io_acc_block_signal_op49 = ap_const_logic_0)) or ((io_acc_block_signal_op42 = ap_const_logic_0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_100_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_100 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_152_assign_proc : process(tmp_nbreadreq_fu_74_p5, ls_writeRemainder_2, tmp_last_V_fu_153_p1)
    begin
                ap_condition_152 <= ((tmp_last_V_fu_153_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_74_p5 = ap_const_lv1_1) and (ls_writeRemainder_2 = ap_const_lv1_0));
    end process;


    ap_condition_156_assign_proc : process(tmp_nbreadreq_fu_74_p5, ls_writeRemainder_2, tmp_last_V_fu_153_p1)
    begin
                ap_condition_156 <= ((tmp_nbreadreq_fu_74_p5 = ap_const_lv1_1) and (tmp_last_V_fu_153_p1 = ap_const_lv1_0) and (ls_writeRemainder_2 = ap_const_lv1_0));
    end process;


    ap_condition_180_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_180 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
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

    ap_phi_reg_pp0_iter0_ls_firstWord_2_new_0_reg_110 <= "X";

    ap_predicate_op42_write_state2_assign_proc : process(ls_writeRemainder_2_s_reg_303, tmp_reg_307)
    begin
                ap_predicate_op42_write_state2 <= ((tmp_reg_307 = ap_const_lv1_1) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_0));
    end process;


    ap_predicate_op9_read_state1_assign_proc : process(tmp_nbreadreq_fu_74_p5, ls_writeRemainder_2)
    begin
                ap_predicate_op9_read_state1 <= ((tmp_nbreadreq_fu_74_p5 = ap_const_lv1_1) and (ls_writeRemainder_2 = ap_const_lv1_0));
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


    ap_sig_allocacmp_ls_firstWord_2_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_2_s_reg_303, tmp_reg_307, ls_firstWord_2, ap_block_pp0_stage0, ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110)
    begin
        if (((tmp_reg_307 = ap_const_lv1_1) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_ls_firstWord_2_load <= ap_phi_reg_pp0_iter1_ls_firstWord_2_new_0_reg_110;
        else 
            ap_sig_allocacmp_ls_firstWord_2_load <= ls_firstWord_2;
        end if; 
    end process;

    grp_fu_123_p4 <= prevWord_keep_V_9(63 downto 52);
    io_acc_block_signal_op42 <= (rxEng_dataBuffer5_V_s_full_n and rxEng_dataBuffer5_V_2_full_n and rxEng_dataBuffer5_V_1_full_n);
    io_acc_block_signal_op49 <= (rxEng_dataBuffer5_V_s_full_n and rxEng_dataBuffer5_V_2_full_n and rxEng_dataBuffer5_V_1_full_n);
    io_acc_block_signal_op9 <= (rxEng_dataBuffer4_V_s_empty_n and rxEng_dataBuffer4_V_2_empty_n and rxEng_dataBuffer4_V_1_empty_n);
    ls_writeRemainder_2_s_load_fu_132_p1 <= ls_writeRemainder_2;
    p_Result_57_i_fu_183_p4 <= rxEng_dataBuffer4_V_2_dout(63 downto 52);
    p_Result_58_i_fu_193_p4 <= prevWord_data_V_14(511 downto 416);
    p_Result_80_fu_295_p3 <= (ap_const_lv52_0 & p_Result_i_467_reg_334);
    p_Result_81_fu_165_p2 <= std_logic_vector(shift_left(unsigned(rxEng_dataBuffer4_V_1_dout),to_integer(unsigned('0' & ap_const_lv512_lc_6(31-1 downto 0)))));
    p_Result_82_fu_175_p3 <= (trunc_ln647_13_fu_171_p1 & ap_const_lv12_FFF);
    p_Result_83_fu_203_p3 <= (trunc_ln647_fu_161_p1 & p_Result_58_i_fu_193_p4);
    p_Result_84_fu_211_p3 <= (trunc_ln647_13_fu_171_p1 & grp_fu_123_p4);
    p_Result_s_fu_287_p3 <= (ap_const_lv416_lc_1 & p_Result_i_reg_329);

    rxEng_dataBuffer4_V_1_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer4_V_1_empty_n, ap_predicate_op9_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxEng_dataBuffer4_V_1_blk_n <= rxEng_dataBuffer4_V_1_empty_n;
        else 
            rxEng_dataBuffer4_V_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer4_V_1_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op9_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            rxEng_dataBuffer4_V_1_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer4_V_1_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer4_V_2_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer4_V_2_empty_n, ap_predicate_op9_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxEng_dataBuffer4_V_2_blk_n <= rxEng_dataBuffer4_V_2_empty_n;
        else 
            rxEng_dataBuffer4_V_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer4_V_2_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op9_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            rxEng_dataBuffer4_V_2_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer4_V_2_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer4_V_s_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer4_V_s_empty_n, ap_predicate_op9_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rxEng_dataBuffer4_V_s_blk_n <= rxEng_dataBuffer4_V_s_empty_n;
        else 
            rxEng_dataBuffer4_V_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer4_V_s_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op9_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            rxEng_dataBuffer4_V_s_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer4_V_s_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer5_V_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_dataBuffer5_V_1_full_n, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxEng_dataBuffer5_V_1_blk_n <= rxEng_dataBuffer5_V_1_full_n;
        else 
            rxEng_dataBuffer5_V_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer5_V_1_din_assign_proc : process(ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, sendWord_data_V_reg_319, p_Result_s_fu_287_p3, ap_condition_180)
    begin
        if ((ap_const_boolean_1 = ap_condition_180)) then
            if ((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1)) then 
                rxEng_dataBuffer5_V_1_din <= p_Result_s_fu_287_p3;
            elsif ((ap_predicate_op42_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer5_V_1_din <= sendWord_data_V_reg_319;
            else 
                rxEng_dataBuffer5_V_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            rxEng_dataBuffer5_V_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    rxEng_dataBuffer5_V_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) then 
            rxEng_dataBuffer5_V_1_write <= ap_const_logic_1;
        else 
            rxEng_dataBuffer5_V_1_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer5_V_2_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_dataBuffer5_V_2_full_n, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxEng_dataBuffer5_V_2_blk_n <= rxEng_dataBuffer5_V_2_full_n;
        else 
            rxEng_dataBuffer5_V_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer5_V_2_din_assign_proc : process(ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, sendWord_keep_V_reg_314, p_Result_80_fu_295_p3, ap_condition_180)
    begin
        if ((ap_const_boolean_1 = ap_condition_180)) then
            if ((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1)) then 
                rxEng_dataBuffer5_V_2_din <= p_Result_80_fu_295_p3;
            elsif ((ap_predicate_op42_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer5_V_2_din <= sendWord_keep_V_reg_314;
            else 
                rxEng_dataBuffer5_V_2_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            rxEng_dataBuffer5_V_2_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    rxEng_dataBuffer5_V_2_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) then 
            rxEng_dataBuffer5_V_2_write <= ap_const_logic_1;
        else 
            rxEng_dataBuffer5_V_2_write <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer5_V_s_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_dataBuffer5_V_s_full_n, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxEng_dataBuffer5_V_s_blk_n <= rxEng_dataBuffer5_V_s_full_n;
        else 
            rxEng_dataBuffer5_V_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer5_V_s_din_assign_proc : process(ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, sendWord_last_V_reg_324, ap_condition_180)
    begin
        if ((ap_const_boolean_1 = ap_condition_180)) then
            if ((ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1)) then 
                rxEng_dataBuffer5_V_s_din <= ap_const_lv1_1;
            elsif ((ap_predicate_op42_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer5_V_s_din <= sendWord_last_V_reg_324;
            else 
                rxEng_dataBuffer5_V_s_din <= "X";
            end if;
        else 
            rxEng_dataBuffer5_V_s_din <= "X";
        end if; 
    end process;


    rxEng_dataBuffer5_V_s_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_2_s_reg_303, ap_predicate_op42_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_2_s_reg_303 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op42_write_state2 = ap_const_boolean_1)))) then 
            rxEng_dataBuffer5_V_s_write <= ap_const_logic_1;
        else 
            rxEng_dataBuffer5_V_s_write <= ap_const_logic_0;
        end if; 
    end process;

    sendWord_data_V_fu_227_p3 <= 
        p_Result_81_fu_165_p2 when (ap_sig_allocacmp_ls_firstWord_2_load(0) = '1') else 
        p_Result_83_fu_203_p3;
    sendWord_keep_V_fu_219_p3 <= 
        p_Result_82_fu_175_p3 when (ap_sig_allocacmp_ls_firstWord_2_load(0) = '1') else 
        p_Result_84_fu_211_p3;
    sendWord_last_V_fu_235_p2 <= "1" when (p_Result_57_i_fu_183_p4 = ap_const_lv12_0) else "0";
    tmp_last_V_fu_153_p1 <= rxEng_dataBuffer4_V_s_dout;
    tmp_nbreadreq_fu_74_p5 <= (0=>(rxEng_dataBuffer4_V_s_empty_n and rxEng_dataBuffer4_V_2_empty_n and rxEng_dataBuffer4_V_1_empty_n), others=>'-');
    trunc_ln647_13_fu_171_p1 <= rxEng_dataBuffer4_V_2_dout(52 - 1 downto 0);
    trunc_ln647_fu_161_p1 <= rxEng_dataBuffer4_V_1_dout(416 - 1 downto 0);
    xor_ln761_fu_253_p2 <= (sendWord_last_V_fu_235_p2 xor ap_const_lv1_1);
end behav;

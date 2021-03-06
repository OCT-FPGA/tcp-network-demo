-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lshiftWordByOctet_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    txEng_tcpPkgBuffer0_s_9_dout : IN STD_LOGIC_VECTOR (576 downto 0);
    txEng_tcpPkgBuffer0_s_9_empty_n : IN STD_LOGIC;
    txEng_tcpPkgBuffer0_s_9_read : OUT STD_LOGIC;
    txEng_shift2pseudoFi_1_din : OUT STD_LOGIC_VECTOR (576 downto 0);
    txEng_shift2pseudoFi_1_full_n : IN STD_LOGIC;
    txEng_shift2pseudoFi_1_write : OUT STD_LOGIC );
end;


architecture behav of lshiftWordByOctet_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";
    constant ap_const_lv32_23F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000111111";
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";
    constant ap_const_lv32_21F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000011111";
    constant ap_const_lv32_220 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000100000";
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv33_100000000 : STD_LOGIC_VECTOR (32 downto 0) := "100000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ls_writeRemainder_1_s_load_fu_134_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_82_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op7_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ls_writeRemainder_1_s_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_309 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op35_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ls_writeRemainder_1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_13 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_8 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal txEng_shift2pseudoFi_1_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal txEng_tcpPkgBuffer0_s_9_blk_n : STD_LOGIC;
    signal p_Val2_52_fu_138_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Val2_52_reg_313 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Val2_5_reg_318 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln647_fu_160_p1 : STD_LOGIC_VECTOR (255 downto 0);
    signal trunc_ln647_reg_326 : STD_LOGIC_VECTOR (255 downto 0);
    signal p_Result_42_i_reg_332 : STD_LOGIC_VECTOR (31 downto 0);
    signal sendWord_last_V_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_338 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_ls_firstWord_3_new_0_reg_103 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_422_fu_152_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln761_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_266_p4 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp39_fu_292_p5 : STD_LOGIC_VECTOR (576 downto 0);
    signal p_Result_44_i_fu_174_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_116_p4 : STD_LOGIC_VECTOR (255 downto 0);
    signal grp_fu_125_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_85_fu_229_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_87_fu_243_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_s_fu_222_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_86_fu_236_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_keep_V_fu_250_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_fu_258_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_123 : BOOLEAN;
    signal ap_condition_127 : BOOLEAN;
    signal ap_condition_78 : BOOLEAN;
    signal ap_condition_148 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_78)) then
                if ((ap_const_boolean_1 = ap_condition_127)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_123)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103 <= ap_phi_reg_pp0_iter0_ls_firstWord_3_new_0_reg_103;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_78)) then
                if ((ls_writeRemainder_1_s_load_fu_134_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder_1 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_123)) then 
                    ls_writeRemainder_1 <= xor_ln761_fu_190_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_309 = ap_const_lv1_1) and (ls_writeRemainder_1_s_reg_305 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_firstWord_1 <= ap_phi_reg_pp0_iter1_ls_firstWord_3_new_0_reg_103;
                prevWord_data_V_13 <= p_Val2_52_reg_313;
                prevWord_keep_V_8 <= p_Val2_5_reg_318;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_1_s_reg_305 <= ls_writeRemainder_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_82_p3 = ap_const_lv1_1) and (ls_writeRemainder_1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_42_i_reg_332 <= txEng_tcpPkgBuffer0_s_9_dout(543 downto 512);
                p_Val2_52_reg_313 <= p_Val2_52_fu_138_p1;
                p_Val2_5_reg_318 <= txEng_tcpPkgBuffer0_s_9_dout(575 downto 512);
                sendWord_last_V_reg_338 <= sendWord_last_V_fu_184_p2;
                trunc_ln647_reg_326 <= trunc_ln647_fu_160_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_309 <= tmp_nbreadreq_fu_82_p3;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer0_s_9_empty_n, ap_predicate_op7_read_state1, txEng_shift2pseudoFi_1_full_n, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (txEng_shift2pseudoFi_1_full_n = ap_const_logic_0)) or ((txEng_shift2pseudoFi_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer0_s_9_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer0_s_9_empty_n, ap_predicate_op7_read_state1, txEng_shift2pseudoFi_1_full_n, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (txEng_shift2pseudoFi_1_full_n = ap_const_logic_0)) or ((txEng_shift2pseudoFi_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer0_s_9_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer0_s_9_empty_n, ap_predicate_op7_read_state1, txEng_shift2pseudoFi_1_full_n, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (txEng_shift2pseudoFi_1_full_n = ap_const_logic_0)) or ((txEng_shift2pseudoFi_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer0_s_9_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, txEng_tcpPkgBuffer0_s_9_empty_n, ap_predicate_op7_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer0_s_9_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(txEng_shift2pseudoFi_1_full_n, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (txEng_shift2pseudoFi_1_full_n = ap_const_logic_0)) or ((txEng_shift2pseudoFi_1_full_n = ap_const_logic_0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_123_assign_proc : process(tmp_nbreadreq_fu_82_p3, ls_writeRemainder_1, tmp_422_fu_152_p3)
    begin
                ap_condition_123 <= ((tmp_422_fu_152_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_82_p3 = ap_const_lv1_1) and (ls_writeRemainder_1 = ap_const_lv1_0));
    end process;


    ap_condition_127_assign_proc : process(tmp_nbreadreq_fu_82_p3, ls_writeRemainder_1, tmp_422_fu_152_p3)
    begin
                ap_condition_127 <= ((tmp_nbreadreq_fu_82_p3 = ap_const_lv1_1) and (tmp_422_fu_152_p3 = ap_const_lv1_0) and (ls_writeRemainder_1 = ap_const_lv1_0));
    end process;


    ap_condition_148_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_148 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
    end process;


    ap_condition_78_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_78 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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

    ap_phi_reg_pp0_iter0_ls_firstWord_3_new_0_reg_103 <= "X";

    ap_predicate_op35_write_state2_assign_proc : process(ls_writeRemainder_1_s_reg_305, tmp_reg_309)
    begin
                ap_predicate_op35_write_state2 <= ((tmp_reg_309 = ap_const_lv1_1) and (ls_writeRemainder_1_s_reg_305 = ap_const_lv1_0));
    end process;


    ap_predicate_op7_read_state1_assign_proc : process(tmp_nbreadreq_fu_82_p3, ls_writeRemainder_1)
    begin
                ap_predicate_op7_read_state1 <= ((tmp_nbreadreq_fu_82_p3 = ap_const_lv1_1) and (ls_writeRemainder_1 = ap_const_lv1_0));
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

    grp_fu_116_p4 <= prevWord_data_V_13(511 downto 256);
    grp_fu_125_p4 <= prevWord_keep_V_8(63 downto 32);
    ls_writeRemainder_1_s_load_fu_134_p1 <= ls_writeRemainder_1;
    p_Result_44_i_fu_174_p4 <= txEng_tcpPkgBuffer0_s_9_dout(575 downto 544);
    p_Result_85_fu_229_p3 <= (p_Result_42_i_reg_332 & ap_const_lv32_FFFFFFFF);
    p_Result_86_fu_236_p3 <= (trunc_ln647_reg_326 & grp_fu_116_p4);
    p_Result_87_fu_243_p3 <= (p_Result_42_i_reg_332 & grp_fu_125_p4);
    p_Result_s_fu_222_p3 <= (trunc_ln647_reg_326 & ap_const_lv256_lc_1);
    p_Val2_52_fu_138_p1 <= txEng_tcpPkgBuffer0_s_9_dout(512 - 1 downto 0);
    sendWord_data_V_fu_258_p3 <= 
        p_Result_s_fu_222_p3 when (ls_firstWord_1(0) = '1') else 
        p_Result_86_fu_236_p3;
    sendWord_keep_V_fu_250_p3 <= 
        p_Result_85_fu_229_p3 when (ls_firstWord_1(0) = '1') else 
        p_Result_87_fu_243_p3;
    sendWord_last_V_fu_184_p2 <= "1" when (p_Result_44_i_fu_174_p4 = ap_const_lv32_0) else "0";
    tmp39_fu_292_p5 <= (((ap_const_lv33_100000000 & grp_fu_125_p4) & ap_const_lv256_lc_1) & grp_fu_116_p4);
    tmp_2_fu_266_p4 <= ((sendWord_last_V_reg_338 & sendWord_keep_V_fu_250_p3) & sendWord_data_V_fu_258_p3);
    tmp_422_fu_152_p3 <= txEng_tcpPkgBuffer0_s_9_dout(576 downto 576);
    tmp_nbreadreq_fu_82_p3 <= (0=>(txEng_tcpPkgBuffer0_s_9_empty_n), others=>'-');
    trunc_ln647_fu_160_p1 <= txEng_tcpPkgBuffer0_s_9_dout(256 - 1 downto 0);

    txEng_shift2pseudoFi_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, txEng_shift2pseudoFi_1_full_n, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) then 
            txEng_shift2pseudoFi_1_blk_n <= txEng_shift2pseudoFi_1_full_n;
        else 
            txEng_shift2pseudoFi_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txEng_shift2pseudoFi_1_din_assign_proc : process(ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2, tmp_2_fu_266_p4, tmp39_fu_292_p5, ap_condition_148)
    begin
        if ((ap_const_boolean_1 = ap_condition_148)) then
            if ((ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1)) then 
                txEng_shift2pseudoFi_1_din <= tmp39_fu_292_p5;
            elsif ((ap_predicate_op35_write_state2 = ap_const_boolean_1)) then 
                txEng_shift2pseudoFi_1_din <= tmp_2_fu_266_p4;
            else 
                txEng_shift2pseudoFi_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            txEng_shift2pseudoFi_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    txEng_shift2pseudoFi_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_1_s_reg_305, ap_predicate_op35_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_1_s_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op35_write_state2 = ap_const_boolean_1)))) then 
            txEng_shift2pseudoFi_1_write <= ap_const_logic_1;
        else 
            txEng_shift2pseudoFi_1_write <= ap_const_logic_0;
        end if; 
    end process;


    txEng_tcpPkgBuffer0_s_9_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, txEng_tcpPkgBuffer0_s_9_empty_n, ap_predicate_op7_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            txEng_tcpPkgBuffer0_s_9_blk_n <= txEng_tcpPkgBuffer0_s_9_empty_n;
        else 
            txEng_tcpPkgBuffer0_s_9_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txEng_tcpPkgBuffer0_s_9_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            txEng_tcpPkgBuffer0_s_9_read <= ap_const_logic_1;
        else 
            txEng_tcpPkgBuffer0_s_9_read <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln761_fu_190_p2 <= (sendWord_last_V_fu_184_p2 xor ap_const_lv1_1);
end behav;

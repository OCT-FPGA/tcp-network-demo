-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lshiftWordByOctet is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    txEng_tcpPkgBuffer5_s_4_dout : IN STD_LOGIC_VECTOR (576 downto 0);
    txEng_tcpPkgBuffer5_s_4_empty_n : IN STD_LOGIC;
    txEng_tcpPkgBuffer5_s_4_read : OUT STD_LOGIC;
    txEng_tcpPkgBuffer6_s_3_din : OUT STD_LOGIC_VECTOR (576 downto 0);
    txEng_tcpPkgBuffer6_s_3_full_n : IN STD_LOGIC;
    txEng_tcpPkgBuffer6_s_3_write : OUT STD_LOGIC );
end;


architecture behav of lshiftWordByOctet is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_200 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000000000";
    constant ap_const_lv32_23F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000111111";
    constant ap_const_lv32_240 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001001000000";
    constant ap_const_lv32_22B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101011";
    constant ap_const_lv32_22C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001000101100";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv160_lc_1 : STD_LOGIC_VECTOR (159 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv20_FFFFF : STD_LOGIC_VECTOR (19 downto 0) := "11111111111111111111";
    constant ap_const_lv45_100000000000 : STD_LOGIC_VECTOR (44 downto 0) := "100000000000000000000000000000000000000000000";
    constant ap_const_lv352_lc_1 : STD_LOGIC_VECTOR (351 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ls_writeRemainder_lo_load_fu_148_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_88_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op9_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ls_writeRemainder_lo_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_325 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op39_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ls_writeRemainder : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_12 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_15 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal txEng_tcpPkgBuffer6_s_3_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal txEng_tcpPkgBuffer5_s_4_blk_n : STD_LOGIC;
    signal reg_140 : STD_LOGIC_VECTOR (159 downto 0);
    signal reg_144 : STD_LOGIC_VECTOR (19 downto 0);
    signal trunc_ln647_fu_184_p1 : STD_LOGIC_VECTOR (351 downto 0);
    signal trunc_ln647_reg_332 : STD_LOGIC_VECTOR (351 downto 0);
    signal p_Result_30_i_reg_338 : STD_LOGIC_VECTOR (43 downto 0);
    signal sendWord_last_V_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_344 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_423_fu_176_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln761_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_54_fu_162_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_2_fu_292_p4 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp39_fu_308_p5 : STD_LOGIC_VECTOR (576 downto 0);
    signal p_Result_32_i_fu_198_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_88_fu_255_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_90_fu_269_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_s_fu_248_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_89_fu_262_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_keep_V_fu_276_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_fu_284_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_127 : BOOLEAN;
    signal ap_condition_131 : BOOLEAN;
    signal ap_condition_78 : BOOLEAN;
    signal ap_condition_152 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_78)) then
                if ((ap_const_boolean_1 = ap_condition_131)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_127)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_78)) then
                if ((ls_writeRemainder_lo_load_fu_148_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_127)) then 
                    ls_writeRemainder <= xor_ln761_fu_226_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_325 = ap_const_lv1_1) and (ls_writeRemainder_lo_reg_321 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_109;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_lo_reg_321 <= ls_writeRemainder;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_30_i_reg_338 <= txEng_tcpPkgBuffer5_s_4_dout(555 downto 512);
                sendWord_last_V_reg_344 <= sendWord_last_V_fu_208_p2;
                trunc_ln647_reg_332 <= trunc_ln647_fu_184_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_12 <= p_Val2_54_fu_162_p1;
                prevWord_keep_V_15 <= txEng_tcpPkgBuffer5_s_4_dout(575 downto 512);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_load_fu_148_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then
                reg_140 <= prevWord_data_V_12(511 downto 352);
                reg_144 <= prevWord_keep_V_15(63 downto 44);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_325 <= tmp_nbreadreq_fu_88_p3;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer5_s_4_empty_n, ap_predicate_op9_read_state1, txEng_tcpPkgBuffer6_s_3_full_n, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0)) or ((txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer5_s_4_empty_n = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer5_s_4_empty_n, ap_predicate_op9_read_state1, txEng_tcpPkgBuffer6_s_3_full_n, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0)) or ((txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer5_s_4_empty_n = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer5_s_4_empty_n, ap_predicate_op9_read_state1, txEng_tcpPkgBuffer6_s_3_full_n, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0)) or ((txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer5_s_4_empty_n = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, txEng_tcpPkgBuffer5_s_4_empty_n, ap_predicate_op9_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txEng_tcpPkgBuffer5_s_4_empty_n = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(txEng_tcpPkgBuffer6_s_3_full_n, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0)) or ((txEng_tcpPkgBuffer6_s_3_full_n = ap_const_logic_0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_127_assign_proc : process(tmp_nbreadreq_fu_88_p3, ls_writeRemainder, tmp_423_fu_176_p3)
    begin
                ap_condition_127 <= ((tmp_423_fu_176_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0));
    end process;


    ap_condition_131_assign_proc : process(tmp_nbreadreq_fu_88_p3, ls_writeRemainder, tmp_423_fu_176_p3)
    begin
                ap_condition_131 <= ((tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (tmp_423_fu_176_p3 = ap_const_lv1_0) and (ls_writeRemainder = ap_const_lv1_0));
    end process;


    ap_condition_152_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_152 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
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

    ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_109 <= "X";

    ap_predicate_op39_write_state2_assign_proc : process(ls_writeRemainder_lo_reg_321, tmp_reg_325)
    begin
                ap_predicate_op39_write_state2 <= ((tmp_reg_325 = ap_const_lv1_1) and (ls_writeRemainder_lo_reg_321 = ap_const_lv1_0));
    end process;


    ap_predicate_op9_read_state1_assign_proc : process(tmp_nbreadreq_fu_88_p3, ls_writeRemainder)
    begin
                ap_predicate_op9_read_state1 <= ((tmp_nbreadreq_fu_88_p3 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0));
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

    ls_writeRemainder_lo_load_fu_148_p1 <= ls_writeRemainder;
    p_Result_32_i_fu_198_p4 <= txEng_tcpPkgBuffer5_s_4_dout(575 downto 556);
    p_Result_88_fu_255_p3 <= (p_Result_30_i_reg_338 & ap_const_lv20_FFFFF);
    p_Result_89_fu_262_p3 <= (trunc_ln647_reg_332 & reg_140);
    p_Result_90_fu_269_p3 <= (p_Result_30_i_reg_338 & reg_144);
    p_Result_s_fu_248_p3 <= (trunc_ln647_reg_332 & ap_const_lv160_lc_1);
    p_Val2_54_fu_162_p1 <= txEng_tcpPkgBuffer5_s_4_dout(512 - 1 downto 0);
    sendWord_data_V_fu_284_p3 <= 
        p_Result_s_fu_248_p3 when (ls_firstWord(0) = '1') else 
        p_Result_89_fu_262_p3;
    sendWord_keep_V_fu_276_p3 <= 
        p_Result_88_fu_255_p3 when (ls_firstWord(0) = '1') else 
        p_Result_90_fu_269_p3;
    sendWord_last_V_fu_208_p2 <= "1" when (p_Result_32_i_fu_198_p4 = ap_const_lv20_0) else "0";
    tmp39_fu_308_p5 <= (((ap_const_lv45_100000000000 & reg_144) & ap_const_lv352_lc_1) & reg_140);
    tmp_2_fu_292_p4 <= ((sendWord_last_V_reg_344 & sendWord_keep_V_fu_276_p3) & sendWord_data_V_fu_284_p3);
    tmp_423_fu_176_p3 <= txEng_tcpPkgBuffer5_s_4_dout(576 downto 576);
    tmp_nbreadreq_fu_88_p3 <= (0=>(txEng_tcpPkgBuffer5_s_4_empty_n), others=>'-');
    trunc_ln647_fu_184_p1 <= txEng_tcpPkgBuffer5_s_4_dout(352 - 1 downto 0);

    txEng_tcpPkgBuffer5_s_4_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, txEng_tcpPkgBuffer5_s_4_empty_n, ap_predicate_op9_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            txEng_tcpPkgBuffer5_s_4_blk_n <= txEng_tcpPkgBuffer5_s_4_empty_n;
        else 
            txEng_tcpPkgBuffer5_s_4_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txEng_tcpPkgBuffer5_s_4_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op9_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            txEng_tcpPkgBuffer5_s_4_read <= ap_const_logic_1;
        else 
            txEng_tcpPkgBuffer5_s_4_read <= ap_const_logic_0;
        end if; 
    end process;


    txEng_tcpPkgBuffer6_s_3_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, txEng_tcpPkgBuffer6_s_3_full_n, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)))) then 
            txEng_tcpPkgBuffer6_s_3_blk_n <= txEng_tcpPkgBuffer6_s_3_full_n;
        else 
            txEng_tcpPkgBuffer6_s_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txEng_tcpPkgBuffer6_s_3_din_assign_proc : process(ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2, tmp_2_fu_292_p4, tmp39_fu_308_p5, ap_condition_152)
    begin
        if ((ap_const_boolean_1 = ap_condition_152)) then
            if ((ls_writeRemainder_lo_reg_321 = ap_const_lv1_1)) then 
                txEng_tcpPkgBuffer6_s_3_din <= tmp39_fu_308_p5;
            elsif ((ap_predicate_op39_write_state2 = ap_const_boolean_1)) then 
                txEng_tcpPkgBuffer6_s_3_din <= tmp_2_fu_292_p4;
            else 
                txEng_tcpPkgBuffer6_s_3_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            txEng_tcpPkgBuffer6_s_3_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    txEng_tcpPkgBuffer6_s_3_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_lo_reg_321, ap_predicate_op39_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_reg_321 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op39_write_state2 = ap_const_boolean_1)))) then 
            txEng_tcpPkgBuffer6_s_3_write <= ap_const_logic_1;
        else 
            txEng_tcpPkgBuffer6_s_3_write <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln761_fu_226_p2 <= (sendWord_last_V_fu_208_p2 xor ap_const_lv1_1);
end behav;

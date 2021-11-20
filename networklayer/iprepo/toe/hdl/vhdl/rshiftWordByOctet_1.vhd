-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rshiftWordByOctet_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxEng_dataBuffer3a_V_dout : IN STD_LOGIC_VECTOR (576 downto 0);
    rxEng_dataBuffer3a_V_empty_n : IN STD_LOGIC;
    rxEng_dataBuffer3a_V_read : OUT STD_LOGIC;
    rxEng_dataBuffer3b_V_din : OUT STD_LOGIC_VECTOR (576 downto 0);
    rxEng_dataBuffer3b_V_full_n : IN STD_LOGIC;
    rxEng_dataBuffer3b_V_write : OUT STD_LOGIC );
end;


architecture behav of rshiftWordByOctet_1 is 
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
    constant ap_const_lv33_100000000 : STD_LOGIC_VECTOR (32 downto 0) := "100000000000000000000000000000000";
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal fsmState_1_load_load_fu_139_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_76_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op7_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal fsmState_1_load_reg_263 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_267 : STD_LOGIC_VECTOR (0 downto 0);
    signal rs_firstWord_1_load_reg_285 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op32_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal fsmState_1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_9 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_13 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal rs_firstWord_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal rxEng_dataBuffer3a_V_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rxEng_dataBuffer3b_V_blk_n : STD_LOGIC;
    signal p_Val2_19_fu_143_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Val2_19_reg_271 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Val2_3_reg_276 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_343_fu_157_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal rs_firstWord_1_load_load_fu_165_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln647_fu_169_p1 : STD_LOGIC_VECTOR (255 downto 0);
    signal trunc_ln647_reg_289 : STD_LOGIC_VECTOR (255 downto 0);
    signal p_Result_26_i_reg_294 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_last_V_fu_193_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_299 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_97 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rs_firstWord_1_new_0_reg_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_rs_firstWord_1_load : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_222_p6 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_2_fu_250_p5 : STD_LOGIC_VECTOR (576 downto 0);
    signal p_Result_27_i_fu_183_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_130_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_121_p4 : STD_LOGIC_VECTOR (255 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_139 : BOOLEAN;
    signal ap_condition_143 : BOOLEAN;
    signal ap_condition_81 : BOOLEAN;
    signal ap_condition_146 : BOOLEAN;
    signal ap_condition_166 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_81)) then
                if ((ap_const_boolean_1 = ap_condition_143)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_139)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108 <= ap_phi_reg_pp0_iter0_rs_firstWord_1_new_0_reg_108;
                end if;
            end if; 
        end if;
    end process;

    fsmState_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_81)) then
                if ((fsmState_1_load_load_fu_139_p1 = ap_const_lv1_1)) then 
                    fsmState_1 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_146)) then 
                    fsmState_1 <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                fsmState_1_load_reg_263 <= fsmState_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (rs_firstWord_1_load_load_fu_165_p1 = ap_const_lv1_0) and (fsmState_1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_26_i_reg_294 <= rxEng_dataBuffer3a_V_dout(543 downto 512);
                tmp_last_V_reg_299 <= tmp_last_V_fu_193_p2;
                trunc_ln647_reg_289 <= trunc_ln647_fu_169_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (fsmState_1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Val2_19_reg_271 <= p_Val2_19_fu_143_p1;
                p_Val2_3_reg_276 <= rxEng_dataBuffer3a_V_dout(575 downto 512);
                rs_firstWord_1_load_reg_285 <= ap_sig_allocacmp_rs_firstWord_1_load;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_267 = ap_const_lv1_1) and (fsmState_1_load_reg_263 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_9 <= p_Val2_19_reg_271;
                prevWord_keep_V_13 <= p_Val2_3_reg_276;
                rs_firstWord_1 <= ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (fsmState_1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_267 <= tmp_nbreadreq_fu_76_p3;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3a_V_empty_n, ap_predicate_op7_read_state1, rxEng_dataBuffer3b_V_full_n, fsmState_1_load_reg_263, ap_predicate_op32_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((fsmState_1_load_reg_263 = ap_const_lv1_1) and (rxEng_dataBuffer3b_V_full_n = ap_const_logic_0)) or ((rxEng_dataBuffer3b_V_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxEng_dataBuffer3a_V_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3a_V_empty_n, ap_predicate_op7_read_state1, rxEng_dataBuffer3b_V_full_n, fsmState_1_load_reg_263, ap_predicate_op32_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((fsmState_1_load_reg_263 = ap_const_lv1_1) and (rxEng_dataBuffer3b_V_full_n = ap_const_logic_0)) or ((rxEng_dataBuffer3b_V_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxEng_dataBuffer3a_V_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3a_V_empty_n, ap_predicate_op7_read_state1, rxEng_dataBuffer3b_V_full_n, fsmState_1_load_reg_263, ap_predicate_op32_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((fsmState_1_load_reg_263 = ap_const_lv1_1) and (rxEng_dataBuffer3b_V_full_n = ap_const_logic_0)) or ((rxEng_dataBuffer3b_V_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxEng_dataBuffer3a_V_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, rxEng_dataBuffer3a_V_empty_n, ap_predicate_op7_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxEng_dataBuffer3a_V_empty_n = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(rxEng_dataBuffer3b_V_full_n, fsmState_1_load_reg_263, ap_predicate_op32_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((fsmState_1_load_reg_263 = ap_const_lv1_1) and (rxEng_dataBuffer3b_V_full_n = ap_const_logic_0)) or ((rxEng_dataBuffer3b_V_full_n = ap_const_logic_0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_139_assign_proc : process(tmp_nbreadreq_fu_76_p3, fsmState_1, tmp_343_fu_157_p3)
    begin
                ap_condition_139 <= ((tmp_343_fu_157_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (fsmState_1 = ap_const_lv1_0));
    end process;


    ap_condition_143_assign_proc : process(tmp_nbreadreq_fu_76_p3, fsmState_1, tmp_343_fu_157_p3)
    begin
                ap_condition_143 <= ((tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (tmp_343_fu_157_p3 = ap_const_lv1_0) and (fsmState_1 = ap_const_lv1_0));
    end process;


    ap_condition_146_assign_proc : process(tmp_nbreadreq_fu_76_p3, fsmState_1, tmp_343_fu_157_p3, ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4)
    begin
                ap_condition_146 <= ((tmp_343_fu_157_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 = ap_const_lv1_0) and (fsmState_1 = ap_const_lv1_0));
    end process;


    ap_condition_166_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_166 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
    end process;


    ap_condition_81_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_81 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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


    ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4_assign_proc : process(tmp_nbreadreq_fu_76_p3, fsmState_1, rs_firstWord_1_load_load_fu_165_p1, tmp_last_V_fu_193_p2, ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_97)
    begin
        if (((tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (fsmState_1 = ap_const_lv1_0))) then
            if ((rs_firstWord_1_load_load_fu_165_p1 = ap_const_lv1_1)) then 
                ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 <= ap_const_lv1_0;
            elsif ((rs_firstWord_1_load_load_fu_165_p1 = ap_const_lv1_0)) then 
                ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 <= tmp_last_V_fu_193_p2;
            else 
                ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 <= ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_97;
            end if;
        else 
            ap_phi_mux_p_0256_2_0_i_phi_fu_100_p4 <= ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_97;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_p_0256_2_0_i_reg_97 <= "X";
    ap_phi_reg_pp0_iter0_rs_firstWord_1_new_0_reg_108 <= "X";

    ap_predicate_op32_write_state2_assign_proc : process(fsmState_1_load_reg_263, tmp_reg_267, rs_firstWord_1_load_reg_285)
    begin
                ap_predicate_op32_write_state2 <= ((tmp_reg_267 = ap_const_lv1_1) and (rs_firstWord_1_load_reg_285 = ap_const_lv1_0) and (fsmState_1_load_reg_263 = ap_const_lv1_0));
    end process;


    ap_predicate_op7_read_state1_assign_proc : process(tmp_nbreadreq_fu_76_p3, fsmState_1)
    begin
                ap_predicate_op7_read_state1 <= ((tmp_nbreadreq_fu_76_p3 = ap_const_lv1_1) and (fsmState_1 = ap_const_lv1_0));
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


    ap_sig_allocacmp_rs_firstWord_1_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fsmState_1_load_reg_263, tmp_reg_267, rs_firstWord_1, ap_block_pp0_stage0, ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (tmp_reg_267 = ap_const_lv1_1) and (fsmState_1_load_reg_263 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_rs_firstWord_1_load <= ap_phi_reg_pp0_iter1_rs_firstWord_1_new_0_reg_108;
        else 
            ap_sig_allocacmp_rs_firstWord_1_load <= rs_firstWord_1;
        end if; 
    end process;

    fsmState_1_load_load_fu_139_p1 <= fsmState_1;
    grp_fu_121_p4 <= prevWord_data_V_9(511 downto 256);
    grp_fu_130_p4 <= prevWord_keep_V_13(63 downto 32);
    p_Result_27_i_fu_183_p4 <= rxEng_dataBuffer3a_V_dout(575 downto 544);
    p_Val2_19_fu_143_p1 <= rxEng_dataBuffer3a_V_dout(512 - 1 downto 0);
    rs_firstWord_1_load_load_fu_165_p1 <= ap_sig_allocacmp_rs_firstWord_1_load;

    rxEng_dataBuffer3a_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxEng_dataBuffer3a_V_empty_n, ap_predicate_op7_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_dataBuffer3a_V_blk_n <= rxEng_dataBuffer3a_V_empty_n;
        else 
            rxEng_dataBuffer3a_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer3a_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1))) then 
            rxEng_dataBuffer3a_V_read <= ap_const_logic_1;
        else 
            rxEng_dataBuffer3a_V_read <= ap_const_logic_0;
        end if; 
    end process;


    rxEng_dataBuffer3b_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, rxEng_dataBuffer3b_V_full_n, fsmState_1_load_reg_263, ap_predicate_op32_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0) and (fsmState_1_load_reg_263 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) then 
            rxEng_dataBuffer3b_V_blk_n <= rxEng_dataBuffer3b_V_full_n;
        else 
            rxEng_dataBuffer3b_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxEng_dataBuffer3b_V_din_assign_proc : process(fsmState_1_load_reg_263, ap_predicate_op32_write_state2, tmp_1_fu_222_p6, tmp_2_fu_250_p5, ap_condition_166)
    begin
        if ((ap_const_boolean_1 = ap_condition_166)) then
            if ((fsmState_1_load_reg_263 = ap_const_lv1_1)) then 
                rxEng_dataBuffer3b_V_din <= tmp_2_fu_250_p5;
            elsif ((ap_predicate_op32_write_state2 = ap_const_boolean_1)) then 
                rxEng_dataBuffer3b_V_din <= tmp_1_fu_222_p6;
            else 
                rxEng_dataBuffer3b_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            rxEng_dataBuffer3b_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    rxEng_dataBuffer3b_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fsmState_1_load_reg_263, ap_predicate_op32_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (fsmState_1_load_reg_263 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op32_write_state2 = ap_const_boolean_1)))) then 
            rxEng_dataBuffer3b_V_write <= ap_const_logic_1;
        else 
            rxEng_dataBuffer3b_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_222_p6 <= ((((tmp_last_V_reg_299 & p_Result_26_i_reg_294) & grp_fu_130_p4) & trunc_ln647_reg_289) & grp_fu_121_p4);
    tmp_2_fu_250_p5 <= (((ap_const_lv33_100000000 & grp_fu_130_p4) & ap_const_lv256_lc_1) & grp_fu_121_p4);
    tmp_343_fu_157_p3 <= rxEng_dataBuffer3a_V_dout(576 downto 576);
    tmp_last_V_fu_193_p2 <= "1" when (p_Result_27_i_fu_183_p4 = ap_const_lv32_0) else "0";
    tmp_nbreadreq_fu_76_p3 <= (0=>(rxEng_dataBuffer3a_V_empty_n), others=>'-');
    trunc_ln647_fu_169_p1 <= rxEng_dataBuffer3a_V_dout(256 - 1 downto 0);
end behav;

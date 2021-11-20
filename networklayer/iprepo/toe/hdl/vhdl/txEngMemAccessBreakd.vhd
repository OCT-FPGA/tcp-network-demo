-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity txEngMemAccessBreakd is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    txMetaloader2memAcce_1_dout : IN STD_LOGIC_VECTOR (71 downto 0);
    txMetaloader2memAcce_1_empty_n : IN STD_LOGIC;
    txMetaloader2memAcce_1_read : OUT STD_LOGIC;
    memAccessBreakdown2t_1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    memAccessBreakdown2t_1_full_n : IN STD_LOGIC;
    memAccessBreakdown2t_1_write : OUT STD_LOGIC;
    outputMemAccess_V_TREADY : IN STD_LOGIC;
    outputMemAccess_V_TDATA : OUT STD_LOGIC_VECTOR (71 downto 0);
    outputMemAccess_V_TVALID : OUT STD_LOGIC );
end;


architecture behav of txEngMemAccessBreakd is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv18_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_31 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110001";
    constant ap_const_lv24_40000 : STD_LOGIC_VECTOR (23 downto 0) := "000001000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv9_181 : STD_LOGIC_VECTOR (8 downto 0) := "110000001";
    constant ap_const_lv49_181 : STD_LOGIC_VECTOR (48 downto 0) := "0000000000000000000000000000000000000000110000001";

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
    signal txEngBreakdownState_1_load_fu_102_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_72_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op8_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal txEngBreakdownState_1_reg_234 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_238 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln895_reg_252 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op23_write_state2 : BOOLEAN;
    signal ap_predicate_op25_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_predicate_op24_write_state2 : BOOLEAN;
    signal ap_predicate_op28_write_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal regslice_both_outputMemAccess_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal txEngBreakdownState_1_reg_234_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_238_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln895_reg_252_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op41_write_state3 : BOOLEAN;
    signal ap_predicate_op43_write_state3 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal txEngBreakdownState_s : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal cmd_bbt_V : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    signal lengthFirstAccess_V : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    signal outputMemAccess_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal txMetaloader2memAcce_1_blk_n : STD_LOGIC;
    signal memAccessBreakdown2t_1_blk_n : STD_LOGIC;
    signal tmp23_reg_242 : STD_LOGIC_VECTOR (71 downto 0);
    signal p_Val2_s_reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln895_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln209_fu_168_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln209_reg_256 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_1_fu_187_p5 : STD_LOGIC_VECTOR (71 downto 0);
    signal tmp_3_fu_225_p3 : STD_LOGIC_VECTOR (71 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal tmp_bbt_V_2_fu_106_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal sub_ln214_1_fu_156_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_i_fu_126_p4 : STD_LOGIC_VECTOR (17 downto 0);
    signal zext_ln215_fu_136_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal zext_ln215_1_fu_140_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal ret_V_fu_144_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal tmp_bbt_V_1_fu_184_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal trunc_ln214_fu_203_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln214_1_fu_211_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sub_ln214_fu_215_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_bbt_V_fu_221_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal outputMemAccess_V_TDATA_int : STD_LOGIC_VECTOR (71 downto 0);
    signal outputMemAccess_V_TVALID_int : STD_LOGIC;
    signal outputMemAccess_V_TREADY_int : STD_LOGIC;
    signal regslice_both_outputMemAccess_V_U_vld_out : STD_LOGIC;
    signal ap_condition_216 : BOOLEAN;
    signal ap_condition_183 : BOOLEAN;
    signal ap_condition_131 : BOOLEAN;

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
    regslice_both_outputMemAccess_V_U : component regslice_both
    generic map (
        DataWidth => 72)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => outputMemAccess_V_TDATA_int,
        vld_in => outputMemAccess_V_TVALID_int,
        ack_in => outputMemAccess_V_TREADY_int,
        data_out => outputMemAccess_V_TDATA,
        vld_out => regslice_both_outputMemAccess_V_U_vld_out,
        ack_out => outputMemAccess_V_TREADY,
        apdone_blk => regslice_both_outputMemAccess_V_U_apdone_blk);





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


    txEngBreakdownState_s_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_131)) then
                if ((txEngBreakdownState_1_load_fu_102_p1 = ap_const_lv1_1)) then 
                    txEngBreakdownState_s <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_183)) then 
                    txEngBreakdownState_s <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                cmd_bbt_V <= tmp_bbt_V_2_fu_106_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln895_reg_252 <= icmp_ln895_fu_150_p2;
                p_Val2_s_reg_247 <= txMetaloader2memAcce_1_dout(63 downto 32);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln895_reg_252_pp0_iter1_reg <= icmp_ln895_reg_252;
                tmp_reg_238_pp0_iter1_reg <= tmp_reg_238;
                txEngBreakdownState_1_reg_234 <= txEngBreakdownState_s;
                txEngBreakdownState_1_reg_234_pp0_iter1_reg <= txEngBreakdownState_1_reg_234;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln895_fu_150_p2 = ap_const_lv1_1) and (tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                lengthFirstAccess_V <= sub_ln214_1_fu_156_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp23_reg_242 <= txMetaloader2memAcce_1_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((txEngBreakdownState_s = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_238 <= tmp_nbreadreq_fu_72_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln895_fu_150_p2 = ap_const_lv1_1) and (tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                trunc_ln209_reg_256 <= trunc_ln209_fu_168_p1;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, txMetaloader2memAcce_1_empty_n, ap_predicate_op8_read_state1, memAccessBreakdown2t_1_full_n, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, regslice_both_outputMemAccess_V_U_apdone_blk)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((regslice_both_outputMemAccess_V_U_apdone_blk = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1)) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txMetaloader2memAcce_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, txMetaloader2memAcce_1_empty_n, ap_predicate_op8_read_state1, memAccessBreakdown2t_1_full_n, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, ap_block_state2_io, regslice_both_outputMemAccess_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1)) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txMetaloader2memAcce_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_outputMemAccess_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, txMetaloader2memAcce_1_empty_n, ap_predicate_op8_read_state1, memAccessBreakdown2t_1_full_n, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, ap_block_state2_io, regslice_both_outputMemAccess_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state2_io) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1)) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txMetaloader2memAcce_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_outputMemAccess_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, txMetaloader2memAcce_1_empty_n, ap_predicate_op8_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txMetaloader2memAcce_1_empty_n = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_io_assign_proc : process(txEngBreakdownState_1_reg_234, ap_predicate_op24_write_state2, ap_predicate_op28_write_state2, outputMemAccess_V_TREADY_int)
    begin
                ap_block_state2_io <= (((txEngBreakdownState_1_reg_234 = ap_const_lv1_1) and (outputMemAccess_V_TREADY_int = ap_const_logic_0)) or ((outputMemAccess_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op28_write_state2 = ap_const_boolean_1)) or ((outputMemAccess_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op24_write_state2 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(memAccessBreakdown2t_1_full_n, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1)) or ((memAccessBreakdown2t_1_full_n = ap_const_logic_0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1)));
    end process;


    ap_block_state3_io_assign_proc : process(txEngBreakdownState_1_reg_234_pp0_iter1_reg, ap_predicate_op41_write_state3, ap_predicate_op43_write_state3, outputMemAccess_V_TREADY_int)
    begin
                ap_block_state3_io <= (((txEngBreakdownState_1_reg_234_pp0_iter1_reg = ap_const_lv1_1) and (outputMemAccess_V_TREADY_int = ap_const_logic_0)) or ((outputMemAccess_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op43_write_state3 = ap_const_boolean_1)) or ((outputMemAccess_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op41_write_state3 = ap_const_boolean_1)));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(regslice_both_outputMemAccess_V_U_apdone_blk)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (regslice_both_outputMemAccess_V_U_apdone_blk = ap_const_logic_1);
    end process;


    ap_condition_131_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_131 <= ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_condition_183_assign_proc : process(tmp_nbreadreq_fu_72_p3, txEngBreakdownState_s, icmp_ln895_fu_150_p2)
    begin
                ap_condition_183 <= ((icmp_ln895_fu_150_p2 = ap_const_lv1_1) and (tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0));
    end process;


    ap_condition_216_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_216 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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


    ap_predicate_op23_write_state2_assign_proc : process(txEngBreakdownState_1_reg_234, tmp_reg_238, icmp_ln895_reg_252)
    begin
                ap_predicate_op23_write_state2 <= ((tmp_reg_238 = ap_const_lv1_1) and (icmp_ln895_reg_252 = ap_const_lv1_0) and (txEngBreakdownState_1_reg_234 = ap_const_lv1_0));
    end process;


    ap_predicate_op24_write_state2_assign_proc : process(txEngBreakdownState_1_reg_234, tmp_reg_238, icmp_ln895_reg_252)
    begin
                ap_predicate_op24_write_state2 <= ((tmp_reg_238 = ap_const_lv1_1) and (icmp_ln895_reg_252 = ap_const_lv1_0) and (txEngBreakdownState_1_reg_234 = ap_const_lv1_0));
    end process;


    ap_predicate_op25_write_state2_assign_proc : process(txEngBreakdownState_1_reg_234, tmp_reg_238, icmp_ln895_reg_252)
    begin
                ap_predicate_op25_write_state2 <= ((icmp_ln895_reg_252 = ap_const_lv1_1) and (tmp_reg_238 = ap_const_lv1_1) and (txEngBreakdownState_1_reg_234 = ap_const_lv1_0));
    end process;


    ap_predicate_op28_write_state2_assign_proc : process(txEngBreakdownState_1_reg_234, tmp_reg_238, icmp_ln895_reg_252)
    begin
                ap_predicate_op28_write_state2 <= ((icmp_ln895_reg_252 = ap_const_lv1_1) and (tmp_reg_238 = ap_const_lv1_1) and (txEngBreakdownState_1_reg_234 = ap_const_lv1_0));
    end process;


    ap_predicate_op41_write_state3_assign_proc : process(txEngBreakdownState_1_reg_234_pp0_iter1_reg, tmp_reg_238_pp0_iter1_reg, icmp_ln895_reg_252_pp0_iter1_reg)
    begin
                ap_predicate_op41_write_state3 <= ((tmp_reg_238_pp0_iter1_reg = ap_const_lv1_1) and (icmp_ln895_reg_252_pp0_iter1_reg = ap_const_lv1_0) and (txEngBreakdownState_1_reg_234_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op43_write_state3_assign_proc : process(txEngBreakdownState_1_reg_234_pp0_iter1_reg, tmp_reg_238_pp0_iter1_reg, icmp_ln895_reg_252_pp0_iter1_reg)
    begin
                ap_predicate_op43_write_state3 <= ((icmp_ln895_reg_252_pp0_iter1_reg = ap_const_lv1_1) and (tmp_reg_238_pp0_iter1_reg = ap_const_lv1_1) and (txEngBreakdownState_1_reg_234_pp0_iter1_reg = ap_const_lv1_0));
    end process;


    ap_predicate_op8_read_state1_assign_proc : process(tmp_nbreadreq_fu_72_p3, txEngBreakdownState_s)
    begin
                ap_predicate_op8_read_state1 <= ((tmp_nbreadreq_fu_72_p3 = ap_const_lv1_1) and (txEngBreakdownState_s = ap_const_lv1_0));
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

    icmp_ln895_fu_150_p2 <= "1" when (unsigned(ret_V_fu_144_p2) > unsigned(ap_const_lv24_40000)) else "0";

    memAccessBreakdown2t_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, memAccessBreakdown2t_1_full_n, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            memAccessBreakdown2t_1_blk_n <= memAccessBreakdown2t_1_full_n;
        else 
            memAccessBreakdown2t_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    memAccessBreakdown2t_1_din_assign_proc : process(ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, ap_condition_216)
    begin
        if ((ap_const_boolean_1 = ap_condition_216)) then
            if ((ap_predicate_op25_write_state2 = ap_const_boolean_1)) then 
                memAccessBreakdown2t_1_din <= ap_const_lv1_1;
            elsif ((ap_predicate_op23_write_state2 = ap_const_boolean_1)) then 
                memAccessBreakdown2t_1_din <= ap_const_lv1_0;
            else 
                memAccessBreakdown2t_1_din <= "X";
            end if;
        else 
            memAccessBreakdown2t_1_din <= "X";
        end if; 
    end process;


    memAccessBreakdown2t_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op23_write_state2, ap_predicate_op25_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op25_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op23_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            memAccessBreakdown2t_1_write <= ap_const_logic_1;
        else 
            memAccessBreakdown2t_1_write <= ap_const_logic_0;
        end if; 
    end process;


    outputMemAccess_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, txEngBreakdownState_1_reg_234, ap_predicate_op24_write_state2, ap_predicate_op28_write_state2, txEngBreakdownState_1_reg_234_pp0_iter1_reg, ap_predicate_op41_write_state3, ap_predicate_op43_write_state3, ap_block_pp0_stage0, outputMemAccess_V_TREADY_int)
    begin
        if ((((txEngBreakdownState_1_reg_234 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op28_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op24_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((txEngBreakdownState_1_reg_234_pp0_iter1_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op43_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op41_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            outputMemAccess_V_TDATA_blk_n <= outputMemAccess_V_TREADY_int;
        else 
            outputMemAccess_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    outputMemAccess_V_TDATA_int_assign_proc : process(txEngBreakdownState_1_reg_234, ap_predicate_op24_write_state2, ap_predicate_op28_write_state2, tmp23_reg_242, tmp_1_fu_187_p5, tmp_3_fu_225_p3, ap_condition_216)
    begin
        if ((ap_const_boolean_1 = ap_condition_216)) then
            if ((txEngBreakdownState_1_reg_234 = ap_const_lv1_1)) then 
                outputMemAccess_V_TDATA_int <= tmp_3_fu_225_p3;
            elsif ((ap_predicate_op28_write_state2 = ap_const_boolean_1)) then 
                outputMemAccess_V_TDATA_int <= tmp_1_fu_187_p5;
            elsif ((ap_predicate_op24_write_state2 = ap_const_boolean_1)) then 
                outputMemAccess_V_TDATA_int <= tmp23_reg_242;
            else 
                outputMemAccess_V_TDATA_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            outputMemAccess_V_TDATA_int <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    outputMemAccess_V_TVALID <= regslice_both_outputMemAccess_V_U_vld_out;

    outputMemAccess_V_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, txEngBreakdownState_1_reg_234, ap_predicate_op24_write_state2, ap_predicate_op28_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((txEngBreakdownState_1_reg_234 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op28_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op24_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            outputMemAccess_V_TVALID_int <= ap_const_logic_1;
        else 
            outputMemAccess_V_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_i_fu_126_p4 <= txMetaloader2memAcce_1_dout(49 downto 32);
    ret_V_fu_144_p2 <= std_logic_vector(unsigned(zext_ln215_fu_136_p1) + unsigned(zext_ln215_1_fu_140_p1));
    sub_ln214_1_fu_156_p2 <= std_logic_vector(unsigned(ap_const_lv18_0) - unsigned(p_Result_i_fu_126_p4));
    sub_ln214_fu_215_p2 <= std_logic_vector(unsigned(trunc_ln214_fu_203_p1) - unsigned(trunc_ln214_1_fu_211_p1));
    tmp_1_fu_187_p5 <= (((ap_const_lv8_0 & p_Val2_s_reg_247) & ap_const_lv9_181) & tmp_bbt_V_1_fu_184_p1);
    tmp_3_fu_225_p3 <= (ap_const_lv49_181 & tmp_bbt_V_fu_221_p1);
    tmp_bbt_V_1_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln209_reg_256),23));
    tmp_bbt_V_2_fu_106_p1 <= txMetaloader2memAcce_1_dout(23 - 1 downto 0);
    tmp_bbt_V_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln214_fu_215_p2),23));
    tmp_nbreadreq_fu_72_p3 <= (0=>(txMetaloader2memAcce_1_empty_n), others=>'-');
    trunc_ln209_fu_168_p1 <= sub_ln214_1_fu_156_p2(16 - 1 downto 0);
    trunc_ln214_1_fu_211_p1 <= lengthFirstAccess_V(16 - 1 downto 0);
    trunc_ln214_fu_203_p1 <= cmd_bbt_V(16 - 1 downto 0);
    txEngBreakdownState_1_load_fu_102_p1 <= txEngBreakdownState_s;

    txMetaloader2memAcce_1_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, txMetaloader2memAcce_1_empty_n, ap_predicate_op8_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            txMetaloader2memAcce_1_blk_n <= txMetaloader2memAcce_1_empty_n;
        else 
            txMetaloader2memAcce_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txMetaloader2memAcce_1_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            txMetaloader2memAcce_1_read <= ap_const_logic_1;
        else 
            txMetaloader2memAcce_1_read <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln215_1_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_bbt_V_2_fu_106_p1),24));
    zext_ln215_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_i_fu_126_p4),24));
end behav;

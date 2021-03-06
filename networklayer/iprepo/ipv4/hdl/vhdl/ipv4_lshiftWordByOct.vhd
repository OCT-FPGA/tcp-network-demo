-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ipv4_lshiftWordByOct is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_tx_data_TVALID : IN STD_LOGIC;
    tx_shift2ipv4Fifo_V_1_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    tx_shift2ipv4Fifo_V_1_full_n : IN STD_LOGIC;
    tx_shift2ipv4Fifo_V_1_write : OUT STD_LOGIC;
    tx_shift2ipv4Fifo_V_2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    tx_shift2ipv4Fifo_V_2_full_n : IN STD_LOGIC;
    tx_shift2ipv4Fifo_V_2_write : OUT STD_LOGIC;
    tx_shift2ipv4Fifo_V_s_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    tx_shift2ipv4Fifo_V_s_full_n : IN STD_LOGIC;
    tx_shift2ipv4Fifo_V_s_write : OUT STD_LOGIC;
    s_axis_tx_data_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    s_axis_tx_data_TREADY : OUT STD_LOGIC;
    s_axis_tx_data_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_tx_data_TLAST : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of ipv4_lshiftWordByOct is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv512_lc_6 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100000";
    constant ap_const_lv20_FFFFF : STD_LOGIC_VECTOR (19 downto 0) := "11111111111111111111";
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv352_lc_2 : STD_LOGIC_VECTOR (351 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv44_0 : STD_LOGIC_VECTOR (43 downto 0) := "00000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ls_writeRemainder_lo_load_fu_134_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_nbreadreq_fu_76_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op9_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal io_acc_block_signal_op40 : STD_LOGIC;
    signal ls_writeRemainder_lo_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_309 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op40_write_state2 : BOOLEAN;
    signal io_acc_block_signal_op47 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ls_writeRemainder : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal prevWord_data_V_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ls_firstWord : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal s_axis_tx_data_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tx_shift2ipv4Fifo_V_1_blk_n : STD_LOGIC;
    signal tx_shift2ipv4Fifo_V_2_blk_n : STD_LOGIC;
    signal tx_shift2ipv4Fifo_V_s_blk_n : STD_LOGIC;
    signal sendWord_keep_V_fu_221_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_keep_V_reg_316 : STD_LOGIC_VECTOR (63 downto 0);
    signal sendWord_data_V_fu_229_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_data_V_reg_321 : STD_LOGIC_VECTOR (511 downto 0);
    signal sendWord_last_V_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sendWord_last_V_reg_326 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_i_reg_331 : STD_LOGIC_VECTOR (159 downto 0);
    signal grp_fu_125_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_Result_9_i_reg_336 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_112 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_fu_155_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln761_fu_255_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_ls_firstWord_load : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_s_fu_289_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_1_fu_297_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln647_1_fu_173_p1 : STD_LOGIC_VECTOR (43 downto 0);
    signal trunc_ln647_fu_163_p1 : STD_LOGIC_VECTOR (351 downto 0);
    signal p_Result_5_i_fu_195_p4 : STD_LOGIC_VECTOR (159 downto 0);
    signal p_Result_3_fu_177_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_5_fu_213_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_2_fu_167_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_4_fu_205_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_4_i_fu_185_p4 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_141 : BOOLEAN;
    signal ap_condition_145 : BOOLEAN;
    signal ap_condition_87 : BOOLEAN;
    signal ap_condition_170 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_87)) then
                if ((ap_const_boolean_1 = ap_condition_145)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_141)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112 <= ap_const_lv1_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_112;
                end if;
            end if; 
        end if;
    end process;

    ls_writeRemainder_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_87)) then
                if ((ls_writeRemainder_lo_load_fu_134_p1 = ap_const_lv1_1)) then 
                    ls_writeRemainder <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_141)) then 
                    ls_writeRemainder <= xor_ln761_fu_255_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_309 = ap_const_lv1_1) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ls_writeRemainder_lo_reg_305 <= ls_writeRemainder;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_load_fu_134_p1 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_9_i_reg_336 <= prevWord_keep_V(63 downto 44);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_load_fu_134_p1 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_i_reg_331 <= prevWord_data_V_1(511 downto 352);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_76_p5 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                prevWord_data_V_1 <= s_axis_tx_data_TDATA;
                prevWord_keep_V <= s_axis_tx_data_TKEEP;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_76_p5 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                sendWord_data_V_reg_321 <= sendWord_data_V_fu_229_p3;
                sendWord_keep_V_reg_316 <= sendWord_keep_V_fu_221_p3;
                sendWord_last_V_reg_326 <= sendWord_last_V_fu_237_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_309 <= tmp_nbreadreq_fu_76_p5;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_TVALID, ap_predicate_op9_read_state1, io_acc_block_signal_op40, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, io_acc_block_signal_op47)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0)) or ((io_acc_block_signal_op40 = ap_const_logic_0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((s_axis_tx_data_TVALID = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_TVALID, ap_predicate_op9_read_state1, io_acc_block_signal_op40, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, io_acc_block_signal_op47)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0)) or ((io_acc_block_signal_op40 = ap_const_logic_0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((s_axis_tx_data_TVALID = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_tx_data_TVALID, ap_predicate_op9_read_state1, io_acc_block_signal_op40, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, io_acc_block_signal_op47)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0)) or ((io_acc_block_signal_op40 = ap_const_logic_0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((s_axis_tx_data_TVALID = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, s_axis_tx_data_TVALID, ap_predicate_op9_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((s_axis_tx_data_TVALID = ap_const_logic_0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(io_acc_block_signal_op40, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, io_acc_block_signal_op47)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (io_acc_block_signal_op47 = ap_const_logic_0)) or ((io_acc_block_signal_op40 = ap_const_logic_0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_141_assign_proc : process(tmp_nbreadreq_fu_76_p5, ls_writeRemainder, tmp_last_V_fu_155_p1)
    begin
                ap_condition_141 <= ((tmp_last_V_fu_155_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_76_p5 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0));
    end process;


    ap_condition_145_assign_proc : process(tmp_nbreadreq_fu_76_p5, ls_writeRemainder, tmp_last_V_fu_155_p1)
    begin
                ap_condition_145 <= ((tmp_nbreadreq_fu_76_p5 = ap_const_lv1_1) and (tmp_last_V_fu_155_p1 = ap_const_lv1_0) and (ls_writeRemainder = ap_const_lv1_0));
    end process;


    ap_condition_170_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_170 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_01001));
    end process;


    ap_condition_87_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_87 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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

    ap_phi_reg_pp0_iter0_ls_firstWord_new_0_i_reg_112 <= "X";

    ap_predicate_op40_write_state2_assign_proc : process(ls_writeRemainder_lo_reg_305, tmp_reg_309)
    begin
                ap_predicate_op40_write_state2 <= ((tmp_reg_309 = ap_const_lv1_1) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_0));
    end process;


    ap_predicate_op9_read_state1_assign_proc : process(tmp_nbreadreq_fu_76_p5, ls_writeRemainder)
    begin
                ap_predicate_op9_read_state1 <= ((tmp_nbreadreq_fu_76_p5 = ap_const_lv1_1) and (ls_writeRemainder = ap_const_lv1_0));
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


    ap_sig_allocacmp_ls_firstWord_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_lo_reg_305, tmp_reg_309, ls_firstWord, ap_block_pp0_stage0, ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112)
    begin
        if (((tmp_reg_309 = ap_const_lv1_1) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_ls_firstWord_load <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_i_reg_112;
        else 
            ap_sig_allocacmp_ls_firstWord_load <= ls_firstWord;
        end if; 
    end process;

    grp_fu_125_p4 <= prevWord_keep_V(63 downto 44);
    io_acc_block_signal_op40 <= (tx_shift2ipv4Fifo_V_s_full_n and tx_shift2ipv4Fifo_V_2_full_n and tx_shift2ipv4Fifo_V_1_full_n);
    io_acc_block_signal_op47 <= (tx_shift2ipv4Fifo_V_s_full_n and tx_shift2ipv4Fifo_V_2_full_n and tx_shift2ipv4Fifo_V_1_full_n);
    ls_writeRemainder_lo_load_fu_134_p1 <= ls_writeRemainder;
    p_Result_1_fu_297_p3 <= (ap_const_lv44_0 & p_Result_9_i_reg_336);
    p_Result_2_fu_167_p2 <= std_logic_vector(shift_left(unsigned(s_axis_tx_data_TDATA),to_integer(unsigned('0' & ap_const_lv512_lc_6(31-1 downto 0)))));
    p_Result_3_fu_177_p3 <= (trunc_ln647_1_fu_173_p1 & ap_const_lv20_FFFFF);
    p_Result_4_fu_205_p3 <= (trunc_ln647_fu_163_p1 & p_Result_5_i_fu_195_p4);
    p_Result_4_i_fu_185_p4 <= s_axis_tx_data_TKEEP(63 downto 44);
    p_Result_5_fu_213_p3 <= (trunc_ln647_1_fu_173_p1 & grp_fu_125_p4);
    p_Result_5_i_fu_195_p4 <= prevWord_data_V_1(511 downto 352);
    p_Result_s_fu_289_p3 <= (ap_const_lv352_lc_2 & p_Result_i_reg_331);

    s_axis_tx_data_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, s_axis_tx_data_TVALID, ap_predicate_op9_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            s_axis_tx_data_TDATA_blk_n <= s_axis_tx_data_TVALID;
        else 
            s_axis_tx_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_tx_data_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op9_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op9_read_state1 = ap_const_boolean_1))) then 
            s_axis_tx_data_TREADY <= ap_const_logic_1;
        else 
            s_axis_tx_data_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    sendWord_data_V_fu_229_p3 <= 
        p_Result_2_fu_167_p2 when (ap_sig_allocacmp_ls_firstWord_load(0) = '1') else 
        p_Result_4_fu_205_p3;
    sendWord_keep_V_fu_221_p3 <= 
        p_Result_3_fu_177_p3 when (ap_sig_allocacmp_ls_firstWord_load(0) = '1') else 
        p_Result_5_fu_213_p3;
    sendWord_last_V_fu_237_p2 <= "1" when (p_Result_4_i_fu_185_p4 = ap_const_lv20_0) else "0";
    tmp_last_V_fu_155_p1 <= s_axis_tx_data_TLAST;
    tmp_nbreadreq_fu_76_p5 <= (0=>(s_axis_tx_data_TVALID), others=>'-');
    trunc_ln647_1_fu_173_p1 <= s_axis_tx_data_TKEEP(44 - 1 downto 0);
    trunc_ln647_fu_163_p1 <= s_axis_tx_data_TDATA(352 - 1 downto 0);

    tx_shift2ipv4Fifo_V_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tx_shift2ipv4Fifo_V_1_full_n, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_V_1_blk_n <= tx_shift2ipv4Fifo_V_1_full_n;
        else 
            tx_shift2ipv4Fifo_V_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_1_din_assign_proc : process(ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, sendWord_data_V_reg_321, p_Result_s_fu_289_p3, ap_condition_170)
    begin
        if ((ap_const_boolean_1 = ap_condition_170)) then
            if ((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1)) then 
                tx_shift2ipv4Fifo_V_1_din <= p_Result_s_fu_289_p3;
            elsif ((ap_predicate_op40_write_state2 = ap_const_boolean_1)) then 
                tx_shift2ipv4Fifo_V_1_din <= sendWord_data_V_reg_321;
            else 
                tx_shift2ipv4Fifo_V_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            tx_shift2ipv4Fifo_V_1_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) then 
            tx_shift2ipv4Fifo_V_1_write <= ap_const_logic_1;
        else 
            tx_shift2ipv4Fifo_V_1_write <= ap_const_logic_0;
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_2_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tx_shift2ipv4Fifo_V_2_full_n, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_V_2_blk_n <= tx_shift2ipv4Fifo_V_2_full_n;
        else 
            tx_shift2ipv4Fifo_V_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_2_din_assign_proc : process(ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, sendWord_keep_V_reg_316, p_Result_1_fu_297_p3, ap_condition_170)
    begin
        if ((ap_const_boolean_1 = ap_condition_170)) then
            if ((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1)) then 
                tx_shift2ipv4Fifo_V_2_din <= p_Result_1_fu_297_p3;
            elsif ((ap_predicate_op40_write_state2 = ap_const_boolean_1)) then 
                tx_shift2ipv4Fifo_V_2_din <= sendWord_keep_V_reg_316;
            else 
                tx_shift2ipv4Fifo_V_2_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            tx_shift2ipv4Fifo_V_2_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_2_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) then 
            tx_shift2ipv4Fifo_V_2_write <= ap_const_logic_1;
        else 
            tx_shift2ipv4Fifo_V_2_write <= ap_const_logic_0;
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_s_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tx_shift2ipv4Fifo_V_s_full_n, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            tx_shift2ipv4Fifo_V_s_blk_n <= tx_shift2ipv4Fifo_V_s_full_n;
        else 
            tx_shift2ipv4Fifo_V_s_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_s_din_assign_proc : process(ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, sendWord_last_V_reg_326, ap_condition_170)
    begin
        if ((ap_const_boolean_1 = ap_condition_170)) then
            if ((ls_writeRemainder_lo_reg_305 = ap_const_lv1_1)) then 
                tx_shift2ipv4Fifo_V_s_din <= ap_const_lv1_1;
            elsif ((ap_predicate_op40_write_state2 = ap_const_boolean_1)) then 
                tx_shift2ipv4Fifo_V_s_din <= sendWord_last_V_reg_326;
            else 
                tx_shift2ipv4Fifo_V_s_din <= "X";
            end if;
        else 
            tx_shift2ipv4Fifo_V_s_din <= "X";
        end if; 
    end process;


    tx_shift2ipv4Fifo_V_s_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ls_writeRemainder_lo_reg_305, ap_predicate_op40_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ls_writeRemainder_lo_reg_305 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op40_write_state2 = ap_const_boolean_1)))) then 
            tx_shift2ipv4Fifo_V_s_write <= ap_const_logic_1;
        else 
            tx_shift2ipv4Fifo_V_s_write <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln761_fu_255_p2 <= (sendWord_last_V_fu_237_p2 xor ap_const_lv1_1);
end behav;

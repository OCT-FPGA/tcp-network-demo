-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity receive_message is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_rx_data_TVALID : IN STD_LOGIC;
    dataInMeta_V_sourceS_TVALID : IN STD_LOGIC;
    dataInMeta_V_destina_TVALID : IN STD_LOGIC;
    dhcp_replyMetaFifo_V_din : OUT STD_LOGIC_VECTOR (103 downto 0);
    dhcp_replyMetaFifo_V_full_n : IN STD_LOGIC;
    dhcp_replyMetaFifo_V_write : OUT STD_LOGIC;
    dataInMeta_V_sourceS_TDATA : IN STD_LOGIC_VECTOR (47 downto 0);
    dataInMeta_V_sourceS_TREADY : OUT STD_LOGIC;
    dataInMeta_V_destina_TDATA : IN STD_LOGIC_VECTOR (47 downto 0);
    dataInMeta_V_destina_TREADY : OUT STD_LOGIC;
    s_axis_rx_data_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_rx_data_TREADY : OUT STD_LOGIC;
    s_axis_rx_data_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    s_axis_rx_data_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    myMacAddress_V : IN STD_LOGIC_VECTOR (47 downto 0) );
end;


architecture behav of receive_message is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_1E : STD_LOGIC_VECTOR (5 downto 0) := "011110";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_4 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_const_lv6_1D : STD_LOGIC_VECTOR (5 downto 0) := "011101";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_63538263 : STD_LOGIC_VECTOR (31 downto 0) := "01100011010100111000001001100011";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv16_135 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100110101";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal tmp_nbreadreq_fu_110_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal io_acc_block_signal_op59 : STD_LOGIC;
    signal tmp_1_nbreadreq_fu_132_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_reg_469 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_473 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln121_1_reg_490 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op70_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal rm_wordCount_V : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    signal rm_isReply : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal rm_correctMac : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal rm_isDHCP : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal meta_identifier_V : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal meta_assignedIpAddre : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal meta_serverAddress_V : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal meta_type_V_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal dataInMeta_V_sourceS_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal dataInMeta_V_destina_TDATA_blk_n : STD_LOGIC;
    signal s_axis_rx_data_TDATA_blk_n : STD_LOGIC;
    signal dhcp_replyMetaFifo_V_blk_n : STD_LOGIC;
    signal tmp_last_V_fu_240_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal t_V_load_fu_244_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln879_2_fu_365_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln700_fu_416_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal and_ln121_1_fu_428_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rm_isReply_loc_0_i_i_reg_157 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rm_correctMac_loc_0_s_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln93_1_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln93_fu_332_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rm_isDHCP_loc_0_i_i_reg_196 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln879_3_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_rm_wordCount_V_new_0_reg_215 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_allocacmp_t_V : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_226_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln647_3_fu_345_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal p_Result_10_i_i_fu_289_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln647_5_fu_299_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln879_5_fu_303_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln647_4_fu_322_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln879_4_fu_326_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln647_2_fu_361_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln647_fu_387_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln121_fu_422_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_78 : BOOLEAN;
    signal ap_condition_250 : BOOLEAN;


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


    ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_78)) then
                if (((tmp_last_V_fu_240_p1 = ap_const_lv1_0) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215 <= add_ln700_fu_416_p2;
                elsif (((tmp_last_V_fu_240_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215 <= ap_const_lv6_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215 <= ap_phi_reg_pp0_iter0_rm_wordCount_V_new_0_reg_215;
                end if;
            end if; 
        end if;
    end process;

    rm_correctMac_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_250)) then
                if ((t_V_load_fu_244_p1 = ap_const_lv6_0)) then 
                    rm_correctMac <= ap_const_lv1_1;
                elsif ((t_V_load_fu_244_p1 = ap_const_lv6_3)) then 
                    rm_correctMac <= and_ln93_fu_332_p2;
                elsif ((t_V_load_fu_244_p1 = ap_const_lv6_4)) then 
                    rm_correctMac <= and_ln93_1_fu_309_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_last_V_fu_240_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln121_1_reg_490 <= and_ln121_1_fu_428_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (t_V_load_fu_244_p1 = ap_const_lv6_2))) then
                meta_assignedIpAddre <= trunc_ln647_3_fu_345_p1;
                meta_serverAddress_V <= s_axis_rx_data_TDATA(63 downto 32);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((t_V_load_fu_244_p1 = ap_const_lv6_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                meta_identifier_V <= s_axis_rx_data_TDATA(63 downto 32);
                rm_isReply <= icmp_ln879_fu_391_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln879_2_fu_365_p2 = ap_const_lv1_1) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (t_V_load_fu_244_p1 = ap_const_lv6_1E))) then
                meta_type_V_1 <= s_axis_rx_data_TDATA(23 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (t_V_load_fu_244_p1 = ap_const_lv6_1D))) then
                rm_isDHCP <= icmp_ln879_3_fu_276_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_469 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                rm_wordCount_V <= ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_last_V_reg_473 <= s_axis_rx_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_469 <= tmp_nbreadreq_fu_110_p5;
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
    add_ln700_fu_416_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_t_V) + unsigned(ap_const_lv6_1));
    and_ln121_1_fu_428_p2 <= (ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14 and and_ln121_fu_422_p2);
    and_ln121_fu_422_p2 <= (ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14 and ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14);
    and_ln93_1_fu_309_p2 <= (rm_correctMac and icmp_ln879_5_fu_303_p2);
    and_ln93_fu_332_p2 <= (rm_correctMac and icmp_ln879_4_fu_326_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_110_p5, io_acc_block_signal_op59, tmp_1_nbreadreq_fu_132_p4, dhcp_replyMetaFifo_V_full_n, ap_predicate_op70_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((dhcp_replyMetaFifo_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op70_write_state2 = ap_const_boolean_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (io_acc_block_signal_op59 = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_110_p5, io_acc_block_signal_op59, tmp_1_nbreadreq_fu_132_p4, dhcp_replyMetaFifo_V_full_n, ap_predicate_op70_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((dhcp_replyMetaFifo_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op70_write_state2 = ap_const_boolean_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (io_acc_block_signal_op59 = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_110_p5, io_acc_block_signal_op59, tmp_1_nbreadreq_fu_132_p4, dhcp_replyMetaFifo_V_full_n, ap_predicate_op70_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((dhcp_replyMetaFifo_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op70_write_state2 = ap_const_boolean_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (io_acc_block_signal_op59 = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_110_p5, io_acc_block_signal_op59, tmp_1_nbreadreq_fu_132_p4)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (io_acc_block_signal_op59 = ap_const_logic_0)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(dhcp_replyMetaFifo_V_full_n, ap_predicate_op70_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((dhcp_replyMetaFifo_V_full_n = ap_const_logic_0) and (ap_predicate_op70_write_state2 = ap_const_boolean_1));
    end process;


    ap_condition_250_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_nbreadreq_fu_110_p5, ap_block_pp0_stage0_11001)
    begin
                ap_condition_250 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
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


    ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14_assign_proc : process(tmp_nbreadreq_fu_110_p5, rm_correctMac, t_V_load_fu_244_p1, ap_phi_reg_pp0_iter0_rm_correctMac_loc_0_s_reg_176, and_ln93_1_fu_309_p2, and_ln93_fu_332_p2)
    begin
        if (((t_V_load_fu_244_p1 = ap_const_lv6_0) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1))) then 
            ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 <= ap_const_lv1_1;
        elsif (((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_3))) then 
            ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 <= and_ln93_fu_332_p2;
        elsif (((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_4))) then 
            ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 <= and_ln93_1_fu_309_p2;
        elsif ((((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1D)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_2)) or (not((t_V_load_fu_244_p1 = ap_const_lv6_1D)) and not((t_V_load_fu_244_p1 = ap_const_lv6_4)) and not((t_V_load_fu_244_p1 = ap_const_lv6_3)) and not((t_V_load_fu_244_p1 = ap_const_lv6_2)) and not((t_V_load_fu_244_p1 = ap_const_lv6_0)) and not((t_V_load_fu_244_p1 = ap_const_lv6_1E)) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1E)))) then 
            ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 <= rm_correctMac;
        else 
            ap_phi_mux_rm_correctMac_loc_0_s_phi_fu_179_p14 <= ap_phi_reg_pp0_iter0_rm_correctMac_loc_0_s_reg_176;
        end if; 
    end process;


    ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14_assign_proc : process(tmp_nbreadreq_fu_110_p5, rm_isDHCP, t_V_load_fu_244_p1, ap_phi_reg_pp0_iter0_rm_isDHCP_loc_0_i_i_reg_196, icmp_ln879_3_fu_276_p2)
    begin
        if (((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1D))) then 
            ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14 <= icmp_ln879_3_fu_276_p2;
        elsif ((((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_4)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_3)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_2)) or (not((t_V_load_fu_244_p1 = ap_const_lv6_1D)) and not((t_V_load_fu_244_p1 = ap_const_lv6_4)) and not((t_V_load_fu_244_p1 = ap_const_lv6_3)) and not((t_V_load_fu_244_p1 = ap_const_lv6_2)) and not((t_V_load_fu_244_p1 = ap_const_lv6_0)) and not((t_V_load_fu_244_p1 = ap_const_lv6_1E)) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1)) or ((t_V_load_fu_244_p1 = ap_const_lv6_0) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1E)))) then 
            ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14 <= rm_isDHCP;
        else 
            ap_phi_mux_rm_isDHCP_loc_0_i_i_phi_fu_199_p14 <= ap_phi_reg_pp0_iter0_rm_isDHCP_loc_0_i_i_reg_196;
        end if; 
    end process;


    ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14_assign_proc : process(tmp_nbreadreq_fu_110_p5, rm_isReply, t_V_load_fu_244_p1, ap_phi_reg_pp0_iter0_rm_isReply_loc_0_i_i_reg_157, icmp_ln879_fu_391_p2)
    begin
        if (((t_V_load_fu_244_p1 = ap_const_lv6_0) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1))) then 
            ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14 <= icmp_ln879_fu_391_p2;
        elsif ((((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1D)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_4)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_3)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_2)) or (not((t_V_load_fu_244_p1 = ap_const_lv6_1D)) and not((t_V_load_fu_244_p1 = ap_const_lv6_4)) and not((t_V_load_fu_244_p1 = ap_const_lv6_3)) and not((t_V_load_fu_244_p1 = ap_const_lv6_2)) and not((t_V_load_fu_244_p1 = ap_const_lv6_0)) and not((t_V_load_fu_244_p1 = ap_const_lv6_1E)) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1)) or ((tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (t_V_load_fu_244_p1 = ap_const_lv6_1E)))) then 
            ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14 <= rm_isReply;
        else 
            ap_phi_mux_rm_isReply_loc_0_i_i_phi_fu_160_p14 <= ap_phi_reg_pp0_iter0_rm_isReply_loc_0_i_i_reg_157;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_rm_correctMac_loc_0_s_reg_176 <= "X";
    ap_phi_reg_pp0_iter0_rm_isDHCP_loc_0_i_i_reg_196 <= "X";
    ap_phi_reg_pp0_iter0_rm_isReply_loc_0_i_i_reg_157 <= "X";
    ap_phi_reg_pp0_iter0_rm_wordCount_V_new_0_reg_215 <= "XXXXXX";

    ap_predicate_op70_write_state2_assign_proc : process(tmp_reg_469, tmp_last_V_reg_473, and_ln121_1_reg_490)
    begin
                ap_predicate_op70_write_state2 <= ((ap_const_lv1_1 = and_ln121_1_reg_490) and (tmp_last_V_reg_473 = ap_const_lv1_1) and (tmp_reg_469 = ap_const_lv1_1));
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


    ap_sig_allocacmp_t_V_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_469, rm_wordCount_V, ap_block_pp0_stage0, ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215)
    begin
        if (((tmp_reg_469 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_t_V <= ap_phi_reg_pp0_iter1_rm_wordCount_V_new_0_reg_215;
        else 
            ap_sig_allocacmp_t_V <= rm_wordCount_V;
        end if; 
    end process;


    dataInMeta_V_destina_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, dataInMeta_V_destina_TVALID, tmp_1_nbreadreq_fu_132_p4, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            dataInMeta_V_destina_TDATA_blk_n <= dataInMeta_V_destina_TVALID;
        else 
            dataInMeta_V_destina_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dataInMeta_V_destina_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_1_nbreadreq_fu_132_p4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dataInMeta_V_destina_TREADY <= ap_const_logic_1;
        else 
            dataInMeta_V_destina_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    dataInMeta_V_sourceS_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, dataInMeta_V_sourceS_TVALID, tmp_1_nbreadreq_fu_132_p4, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            dataInMeta_V_sourceS_TDATA_blk_n <= dataInMeta_V_sourceS_TVALID;
        else 
            dataInMeta_V_sourceS_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dataInMeta_V_sourceS_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_1_nbreadreq_fu_132_p4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_1_nbreadreq_fu_132_p4 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dataInMeta_V_sourceS_TREADY <= ap_const_logic_1;
        else 
            dataInMeta_V_sourceS_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    dhcp_replyMetaFifo_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, dhcp_replyMetaFifo_V_full_n, ap_predicate_op70_write_state2, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op70_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            dhcp_replyMetaFifo_V_blk_n <= dhcp_replyMetaFifo_V_full_n;
        else 
            dhcp_replyMetaFifo_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dhcp_replyMetaFifo_V_din <= (((meta_type_V_1 & meta_serverAddress_V) & meta_assignedIpAddre) & meta_identifier_V);

    dhcp_replyMetaFifo_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op70_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op70_write_state2 = ap_const_boolean_1))) then 
            dhcp_replyMetaFifo_V_write <= ap_const_logic_1;
        else 
            dhcp_replyMetaFifo_V_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_226_p4 <= s_axis_rx_data_TDATA(63 downto 32);
    icmp_ln879_2_fu_365_p2 <= "1" when (trunc_ln647_2_fu_361_p1 = ap_const_lv16_135) else "0";
    icmp_ln879_3_fu_276_p2 <= "1" when (grp_fu_226_p4 = ap_const_lv32_63538263) else "0";
    icmp_ln879_4_fu_326_p2 <= "1" when (trunc_ln647_4_fu_322_p1 = grp_fu_226_p4) else "0";
    icmp_ln879_5_fu_303_p2 <= "1" when (p_Result_10_i_i_fu_289_p4 = trunc_ln647_5_fu_299_p1) else "0";
    icmp_ln879_fu_391_p2 <= "1" when (trunc_ln647_fu_387_p1 = ap_const_lv8_2) else "0";
    io_acc_block_signal_op59 <= (dataInMeta_V_sourceS_TVALID and dataInMeta_V_destina_TVALID);
    p_Result_10_i_i_fu_289_p4 <= myMacAddress_V(47 downto 32);

    s_axis_rx_data_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_110_p5, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            s_axis_rx_data_TDATA_blk_n <= s_axis_rx_data_TVALID;
        else 
            s_axis_rx_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_rx_data_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_nbreadreq_fu_110_p5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_110_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_rx_data_TREADY <= ap_const_logic_1;
        else 
            s_axis_rx_data_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    t_V_load_fu_244_p1 <= ap_sig_allocacmp_t_V;
    tmp_1_nbreadreq_fu_132_p4 <= (0=>(dataInMeta_V_sourceS_TVALID and dataInMeta_V_destina_TVALID), others=>'-');
    tmp_last_V_fu_240_p1 <= s_axis_rx_data_TLAST;
    tmp_nbreadreq_fu_110_p5 <= (0=>(s_axis_rx_data_TVALID), others=>'-');
    trunc_ln647_2_fu_361_p1 <= s_axis_rx_data_TDATA(16 - 1 downto 0);
    trunc_ln647_3_fu_345_p1 <= s_axis_rx_data_TDATA(32 - 1 downto 0);
    trunc_ln647_4_fu_322_p1 <= myMacAddress_V(32 - 1 downto 0);
    trunc_ln647_5_fu_299_p1 <= s_axis_rx_data_TDATA(16 - 1 downto 0);
    trunc_ln647_fu_387_p1 <= s_axis_rx_data_TDATA(8 - 1 downto 0);
end behav;

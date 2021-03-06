-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity process_udp_512_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    s_axis_rx_data_TVALID : IN STD_LOGIC;
    rx_udp2shiftFifo_V_d_din : OUT STD_LOGIC_VECTOR (511 downto 0);
    rx_udp2shiftFifo_V_d_full_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_d_write : OUT STD_LOGIC;
    rx_udp2shiftFifo_V_k_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    rx_udp2shiftFifo_V_k_full_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_k_write : OUT STD_LOGIC;
    rx_udp2shiftFifo_V_l_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    rx_udp2shiftFifo_V_l_full_n : IN STD_LOGIC;
    rx_udp2shiftFifo_V_l_write : OUT STD_LOGIC;
    rx_udpMetaFifo_V_din : OUT STD_LOGIC_VECTOR (48 downto 0);
    rx_udpMetaFifo_V_full_n : IN STD_LOGIC;
    rx_udpMetaFifo_V_write : OUT STD_LOGIC;
    s_axis_rx_data_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    s_axis_rx_data_TREADY : OUT STD_LOGIC;
    s_axis_rx_data_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    s_axis_rx_data_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    regListenPort_V : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of process_udp_512_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv26_0 : STD_LOGIC_VECTOR (25 downto 0) := "00000000000000000000000000";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv64_8000000000000000 : STD_LOGIC_VECTOR (63 downto 0) := "1000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";

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
    signal tmp_nbreadreq_fu_112_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal io_acc_block_signal_op62 : STD_LOGIC;
    signal tmp_reg_471 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_471_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln73_1_reg_508 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_valid_reg_526 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op62_write_state3 : BOOLEAN;
    signal metaWritten_load_reg_512 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op65_write_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal pu_header_ready : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal pu_header_idx : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal pu_header_header_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal metaWritten : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal s_axis_rx_data_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal rx_udp2shiftFifo_V_d_blk_n : STD_LOGIC;
    signal rx_udp2shiftFifo_V_k_blk_n : STD_LOGIC;
    signal rx_udp2shiftFifo_V_l_blk_n : STD_LOGIC;
    signal rx_udpMetaFifo_V_blk_n : STD_LOGIC;
    signal tmp_data_V_reg_475 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_data_V_reg_475_pp0_iter1_reg : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_keep_V_reg_480 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_keep_V_reg_480_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_last_V_reg_485 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_485_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal pu_header_ready_load_load_fu_204_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal pu_header_ready_load_reg_493 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln67_fu_328_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal or_ln73_1_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal metaWritten_load_load_fu_339_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_51_i_i32_s_fu_347_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_51_i_i32_s_reg_516 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_51_1_i_i3_fu_357_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_51_1_i_i3_reg_521 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_valid_fu_375_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_51_i_i37_s_reg_531 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln647_fu_390_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln647_reg_536 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_51_i_i42_s_reg_541 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_51_1_i_i4_reg_546 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln73_fu_414_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln73_reg_551 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_phi_ln73_reg_154 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_reg_pp0_iter1_phi_ln73_reg_154 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_fu_419_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_pu_header_ready_load : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln73_fu_425_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_pu_header_idx_load : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_s_fu_316_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln73_fu_456_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_allocacmp_metaWritten_load : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_1_fu_220_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln414_fu_228_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal trunc_ln414_fu_238_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln414_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal st4_fu_242_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_V_fu_212_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln414_fu_250_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_258_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln414_2_fu_276_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln414_3_fu_284_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln414_fu_292_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln414_fu_298_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln414_1_fu_268_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln414_1_fu_304_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal and_ln414_2_fu_310_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal dstPort_V_fu_367_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_97 : BOOLEAN;


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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
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


    ap_phi_reg_pp0_iter1_phi_ln73_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_97)) then
                if (((pu_header_ready_load_load_fu_204_p1 = ap_const_lv1_0) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= add_ln67_fu_328_p2;
                elsif (((pu_header_ready_load_load_fu_204_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= ap_sig_allocacmp_pu_header_idx_load;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_phi_ln73_reg_154 <= ap_phi_reg_pp0_iter0_phi_ln73_reg_154;
                end if;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_97)) then
                if (((pu_header_ready_load_load_fu_204_p1 = ap_const_lv1_0) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= ap_const_lv1_1;
                elsif (((pu_header_ready_load_load_fu_204_p1 = ap_const_lv1_1) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163 <= ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163;
                end if;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (metaWritten_load_load_fu_339_p1 = ap_const_lv1_0) and (tmp_reg_471 = ap_const_lv1_1) and (or_ln73_1_fu_334_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= ap_const_lv1_1;
            elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (or_ln73_1_fu_334_p2 = ap_const_lv1_0) and (tmp_reg_471 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_471 = ap_const_lv1_1) and (metaWritten_load_load_fu_339_p1 = ap_const_lv1_1) and (or_ln73_1_fu_334_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= ap_const_lv1_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176 <= ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_phi_reg_pp0_iter1_metaWritten_flag_1_i_reg_176 <= ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_471_pp0_iter1_reg = ap_const_lv1_1) and (or_ln73_fu_456_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                metaWritten <= xor_ln73_reg_551;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_471 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                metaWritten_load_reg_512 <= ap_sig_allocacmp_metaWritten_load;
                or_ln73_1_reg_508 <= or_ln73_1_fu_334_p2;
                xor_ln73_reg_551 <= xor_ln73_fu_414_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_471 = ap_const_lv1_1) and (or_ln73_1_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_51_1_i_i3_reg_521 <= pu_header_header_V(23 downto 16);
                p_Result_51_i_i32_s_reg_516 <= pu_header_header_V(31 downto 24);
                tmp_valid_reg_526 <= tmp_valid_fu_375_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (metaWritten_load_load_fu_339_p1 = ap_const_lv1_0) and (tmp_reg_471 = ap_const_lv1_1) and (or_ln73_1_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_51_1_i_i4_reg_546 <= pu_header_header_V(39 downto 32);
                p_Result_51_i_i37_s_reg_531 <= pu_header_header_V(15 downto 8);
                p_Result_51_i_i42_s_reg_541 <= pu_header_header_V(47 downto 40);
                trunc_ln647_reg_536 <= trunc_ln647_fu_390_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (pu_header_ready_load_load_fu_204_p1 = ap_const_lv1_0) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                pu_header_header_V <= p_Result_s_fu_316_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_reg_471 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                pu_header_idx <= select_ln73_fu_425_p3;
                pu_header_ready <= and_ln73_fu_419_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                pu_header_ready_load_reg_493 <= ap_sig_allocacmp_pu_header_ready_load;
                tmp_data_V_reg_475 <= s_axis_rx_data_TDATA;
                tmp_keep_V_reg_480 <= s_axis_rx_data_TKEEP;
                tmp_last_V_reg_485 <= s_axis_rx_data_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_data_V_reg_475_pp0_iter1_reg <= tmp_data_V_reg_475;
                tmp_keep_V_reg_480_pp0_iter1_reg <= tmp_keep_V_reg_480;
                tmp_last_V_reg_485_pp0_iter1_reg <= tmp_last_V_reg_485;
                tmp_reg_471 <= tmp_nbreadreq_fu_112_p5;
                tmp_reg_471_pp0_iter1_reg <= tmp_reg_471;
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
    add_ln67_fu_328_p2 <= std_logic_vector(unsigned(ap_const_lv16_1) + unsigned(ap_sig_allocacmp_pu_header_idx_load));
    and_ln414_1_fu_304_p2 <= (xor_ln414_fu_298_p2 and pu_header_header_V);
    and_ln414_2_fu_310_p2 <= (select_ln414_1_fu_268_p3 and and_ln414_fu_292_p2);
    and_ln414_fu_292_p2 <= (select_ln414_3_fu_284_p3 and select_ln414_2_fu_276_p3);
    and_ln73_fu_419_p2 <= (xor_ln73_fu_414_p2 and or_ln73_1_fu_334_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter2, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_112_p5, io_acc_block_signal_op62, ap_predicate_op62_write_state3, rx_udpMetaFifo_V_full_n, ap_predicate_op65_write_state3)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((rx_udpMetaFifo_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state3 = ap_const_boolean_1)) or ((io_acc_block_signal_op62 = ap_const_logic_0) and (ap_predicate_op62_write_state3 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter2, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_112_p5, io_acc_block_signal_op62, ap_predicate_op62_write_state3, rx_udpMetaFifo_V_full_n, ap_predicate_op65_write_state3)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((rx_udpMetaFifo_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state3 = ap_const_boolean_1)) or ((io_acc_block_signal_op62 = ap_const_logic_0) and (ap_predicate_op62_write_state3 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter2, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_112_p5, io_acc_block_signal_op62, ap_predicate_op62_write_state3, rx_udpMetaFifo_V_full_n, ap_predicate_op65_write_state3)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((rx_udpMetaFifo_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state3 = ap_const_boolean_1)) or ((io_acc_block_signal_op62 = ap_const_logic_0) and (ap_predicate_op62_write_state3 = ap_const_boolean_1)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_112_p5)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (s_axis_rx_data_TVALID = ap_const_logic_0)));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(io_acc_block_signal_op62, ap_predicate_op62_write_state3, rx_udpMetaFifo_V_full_n, ap_predicate_op65_write_state3)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (((rx_udpMetaFifo_V_full_n = ap_const_logic_0) and (ap_predicate_op65_write_state3 = ap_const_boolean_1)) or ((io_acc_block_signal_op62 = ap_const_logic_0) and (ap_predicate_op62_write_state3 = ap_const_boolean_1)));
    end process;


    ap_condition_97_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_97 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
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

    ap_phi_reg_pp0_iter0_metaWritten_flag_1_i_reg_176 <= "X";
    ap_phi_reg_pp0_iter0_phi_ln73_reg_154 <= "XXXXXXXXXXXXXXXX";
    ap_phi_reg_pp0_iter0_write_flag_1_i_i_reg_163 <= "X";

    ap_predicate_op62_write_state3_assign_proc : process(tmp_reg_471_pp0_iter1_reg, or_ln73_1_reg_508, tmp_valid_reg_526)
    begin
                ap_predicate_op62_write_state3 <= ((tmp_valid_reg_526 = ap_const_lv1_1) and (or_ln73_1_reg_508 = ap_const_lv1_1) and (tmp_reg_471_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op65_write_state3_assign_proc : process(tmp_reg_471_pp0_iter1_reg, or_ln73_1_reg_508, metaWritten_load_reg_512)
    begin
                ap_predicate_op65_write_state3 <= ((metaWritten_load_reg_512 = ap_const_lv1_0) and (or_ln73_1_reg_508 = ap_const_lv1_1) and (tmp_reg_471_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_sig_allocacmp_metaWritten_load_assign_proc : process(ap_enable_reg_pp0_iter2, tmp_reg_471_pp0_iter1_reg, metaWritten, ap_block_pp0_stage0, xor_ln73_reg_551, or_ln73_fu_456_p2)
    begin
        if (((tmp_reg_471_pp0_iter1_reg = ap_const_lv1_1) and (or_ln73_fu_456_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_metaWritten_load <= xor_ln73_reg_551;
        else 
            ap_sig_allocacmp_metaWritten_load <= metaWritten;
        end if; 
    end process;


    ap_sig_allocacmp_pu_header_idx_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_471, pu_header_idx, ap_block_pp0_stage0, select_ln73_fu_425_p3)
    begin
        if (((tmp_reg_471 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_pu_header_idx_load <= select_ln73_fu_425_p3;
        else 
            ap_sig_allocacmp_pu_header_idx_load <= pu_header_idx;
        end if; 
    end process;


    ap_sig_allocacmp_pu_header_ready_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_reg_471, pu_header_ready, ap_block_pp0_stage0, and_ln73_fu_419_p2)
    begin
        if (((tmp_reg_471 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_pu_header_ready_load <= and_ln73_fu_419_p2;
        else 
            ap_sig_allocacmp_pu_header_ready_load <= pu_header_ready;
        end if; 
    end process;

    dstPort_V_fu_367_p3 <= (p_Result_51_1_i_i3_fu_357_p4 & p_Result_51_i_i32_s_fu_347_p4);
    icmp_ln414_fu_232_p2 <= "0" when (zext_ln414_fu_228_p1 = ap_const_lv26_0) else "1";
    io_acc_block_signal_op62 <= (rx_udp2shiftFifo_V_l_full_n and rx_udp2shiftFifo_V_k_full_n and rx_udp2shiftFifo_V_d_full_n);
    metaWritten_load_load_fu_339_p1 <= ap_sig_allocacmp_metaWritten_load;
    or_ln73_1_fu_334_p2 <= (pu_header_ready_load_reg_493 or ap_phi_reg_pp0_iter1_write_flag_1_i_i_reg_163);
    or_ln73_fu_456_p2 <= (tmp_last_V_reg_485_pp0_iter1_reg or ap_phi_reg_pp0_iter2_metaWritten_flag_1_i_reg_176);
    p_Result_51_1_i_i3_fu_357_p4 <= pu_header_header_V(23 downto 16);
    p_Result_51_i_i32_s_fu_347_p4 <= pu_header_header_V(31 downto 24);
    p_Result_s_fu_316_p2 <= (and_ln414_2_fu_310_p2 or and_ln414_1_fu_304_p2);
    pu_header_ready_load_load_fu_204_p1 <= ap_sig_allocacmp_pu_header_ready_load;

    rx_udp2shiftFifo_V_d_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, rx_udp2shiftFifo_V_d_full_n, ap_predicate_op62_write_state3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_d_blk_n <= rx_udp2shiftFifo_V_d_full_n;
        else 
            rx_udp2shiftFifo_V_d_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rx_udp2shiftFifo_V_d_din <= tmp_data_V_reg_475_pp0_iter1_reg;

    rx_udp2shiftFifo_V_d_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op62_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1))) then 
            rx_udp2shiftFifo_V_d_write <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_d_write <= ap_const_logic_0;
        end if; 
    end process;


    rx_udp2shiftFifo_V_k_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, rx_udp2shiftFifo_V_k_full_n, ap_predicate_op62_write_state3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_k_blk_n <= rx_udp2shiftFifo_V_k_full_n;
        else 
            rx_udp2shiftFifo_V_k_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rx_udp2shiftFifo_V_k_din <= tmp_keep_V_reg_480_pp0_iter1_reg;

    rx_udp2shiftFifo_V_k_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op62_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1))) then 
            rx_udp2shiftFifo_V_k_write <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_k_write <= ap_const_logic_0;
        end if; 
    end process;


    rx_udp2shiftFifo_V_l_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, rx_udp2shiftFifo_V_l_full_n, ap_predicate_op62_write_state3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udp2shiftFifo_V_l_blk_n <= rx_udp2shiftFifo_V_l_full_n;
        else 
            rx_udp2shiftFifo_V_l_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rx_udp2shiftFifo_V_l_din <= tmp_last_V_reg_485_pp0_iter1_reg;

    rx_udp2shiftFifo_V_l_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op62_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op62_write_state3 = ap_const_boolean_1))) then 
            rx_udp2shiftFifo_V_l_write <= ap_const_logic_1;
        else 
            rx_udp2shiftFifo_V_l_write <= ap_const_logic_0;
        end if; 
    end process;


    rx_udpMetaFifo_V_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, rx_udpMetaFifo_V_full_n, ap_predicate_op65_write_state3, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op65_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udpMetaFifo_V_blk_n <= rx_udpMetaFifo_V_full_n;
        else 
            rx_udpMetaFifo_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    rx_udpMetaFifo_V_din <= ((((((tmp_valid_reg_526 & p_Result_51_1_i_i4_reg_546) & p_Result_51_i_i42_s_reg_541) & p_Result_51_1_i_i3_reg_521) & p_Result_51_i_i32_s_reg_516) & trunc_ln647_reg_536) & p_Result_51_i_i37_s_reg_531);

    rx_udpMetaFifo_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op65_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op65_write_state3 = ap_const_boolean_1))) then 
            rx_udpMetaFifo_V_write <= ap_const_logic_1;
        else 
            rx_udpMetaFifo_V_write <= ap_const_logic_0;
        end if; 
    end process;


    s_axis_rx_data_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, s_axis_rx_data_TVALID, tmp_nbreadreq_fu_112_p5, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            s_axis_rx_data_TDATA_blk_n <= s_axis_rx_data_TVALID;
        else 
            s_axis_rx_data_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    s_axis_rx_data_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, tmp_nbreadreq_fu_112_p5, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (tmp_nbreadreq_fu_112_p5 = ap_const_lv1_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            s_axis_rx_data_TREADY <= ap_const_logic_1;
        else 
            s_axis_rx_data_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    select_ln414_1_fu_268_p3 <= 
        tmp_2_fu_258_p4 when (icmp_ln414_fu_232_p2(0) = '1') else 
        tmp_V_fu_212_p1;
    select_ln414_2_fu_276_p3 <= 
        ap_const_lv64_8000000000000000 when (icmp_ln414_fu_232_p2(0) = '1') else 
        ap_const_lv64_FFFFFFFFFFFFFFFF;
    select_ln414_3_fu_284_p3 <= 
        ap_const_lv64_1 when (icmp_ln414_fu_232_p2(0) = '1') else 
        ap_const_lv64_FFFFFFFFFFFFFFFF;
    select_ln414_fu_250_p3 <= 
        st4_fu_242_p3 when (icmp_ln414_fu_232_p2(0) = '1') else 
        tmp_V_fu_212_p1;
    select_ln73_fu_425_p3 <= 
        ap_const_lv16_0 when (tmp_last_V_reg_485(0) = '1') else 
        ap_phi_reg_pp0_iter1_phi_ln73_reg_154;
    st4_fu_242_p3 <= (trunc_ln414_fu_238_p1 & ap_const_lv63_0);
    tmp_1_fu_220_p3 <= (ap_sig_allocacmp_pu_header_idx_load & ap_const_lv3_0);
    
    tmp_2_fu_258_p4_proc : process(select_ln414_fu_250_p3)
    variable vlo_cpy : STD_LOGIC_VECTOR(64+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(64+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(64 - 1 downto 0);
    variable tmp_2_fu_258_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(64 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(64 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(64 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(6 - 1 downto 0) := ap_const_lv32_3F(6 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(6 - 1 downto 0) := ap_const_lv32_0(6 - 1 downto 0);
        v0_cpy := select_ln414_fu_250_p3;
        if (vlo_cpy(6 - 1 downto 0) > vhi_cpy(6 - 1 downto 0)) then
            vhi_cpy(6-1 downto 0) := std_logic_vector(64-1-unsigned(ap_const_lv32_0(6-1 downto 0)));
            vlo_cpy(6-1 downto 0) := std_logic_vector(64-1-unsigned(ap_const_lv32_3F(6-1 downto 0)));
            for tmp_2_fu_258_p4_i in 0 to 64-1 loop
                v0_cpy(tmp_2_fu_258_p4_i) := select_ln414_fu_250_p3(64-1-tmp_2_fu_258_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(6-1 downto 0)))));

        section := (others=>'0');
        section(6-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(6-1 downto 0)) - unsigned(vlo_cpy(6-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(64-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_2_fu_258_p4 <= resvalue(64-1 downto 0);
    end process;

    tmp_V_fu_212_p1 <= s_axis_rx_data_TDATA(64 - 1 downto 0);
    tmp_nbreadreq_fu_112_p5 <= (0=>(s_axis_rx_data_TVALID), others=>'-');
    tmp_valid_fu_375_p2 <= "1" when (dstPort_V_fu_367_p3 = regListenPort_V) else "0";
    trunc_ln414_fu_238_p1 <= s_axis_rx_data_TDATA(1 - 1 downto 0);
    trunc_ln647_fu_390_p1 <= pu_header_header_V(8 - 1 downto 0);
    xor_ln414_fu_298_p2 <= (ap_const_lv64_FFFFFFFFFFFFFFFF xor and_ln414_fu_292_p2);
    xor_ln73_fu_414_p2 <= (tmp_last_V_reg_485 xor ap_const_lv1_1);
    zext_ln414_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_220_p3),26));
end behav;

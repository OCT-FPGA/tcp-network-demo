-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity txAppStatusHandler is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    txBufferWriteStatus_V_TVALID : IN STD_LOGIC;
    txApp_txEventCache_V_dout : IN STD_LOGIC_VECTOR (55 downto 0);
    txApp_txEventCache_V_empty_n : IN STD_LOGIC;
    txApp_txEventCache_V_read : OUT STD_LOGIC;
    txApp2txSar_push_V_din : OUT STD_LOGIC_VECTOR (33 downto 0);
    txApp2txSar_push_V_full_n : IN STD_LOGIC;
    txApp2txSar_push_V_write : OUT STD_LOGIC;
    txBufferWriteStatus_V_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    txBufferWriteStatus_V_TREADY : OUT STD_LOGIC );
end;


architecture behav of txAppStatusHandler is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv19_40000 : STD_LOGIC_VECTOR (18 downto 0) := "1000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal grp_nbreadreq_fu_80_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op8_read_state1 : BOOLEAN;
    signal ap_predicate_op13_read_state1 : BOOLEAN;
    signal tmp_nbreadreq_fu_94_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op26_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tash_state_load_reg_279 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_23_reg_295 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_25_reg_299 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op45_write_state2 : BOOLEAN;
    signal tmp_22_reg_303 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_reg_307 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln895_reg_311 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op53_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tash_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ev_sessionID_V : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal ev_address_V : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    signal ev_length_V : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal txBufferWriteStatus_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal txApp_txEventCache_V_blk_n : STD_LOGIC;
    signal txApp2txSar_push_V_blk_n : STD_LOGIC;
    signal ev_load_reg_283 : STD_LOGIC_VECTOR (17 downto 0);
    signal ev_length_V_load_reg_289 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_126_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln895_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_315 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_sessionID_V_load_reg_319 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln81_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_storemerge_i_phi_fu_118_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_phi_reg_pp0_iter0_storemerge_i_reg_115 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_fu_248_p3 : STD_LOGIC_VECTOR (33 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_2_fu_265_p3 : STD_LOGIC_VECTOR (33 downto 0);
    signal lhs_V_fu_152_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal rhs_V_fu_156_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal ret_V_fu_160_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal trunc_ln368_fu_178_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln209_fu_240_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_app_V_fu_243_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal zext_ln209_1_fu_257_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_app_V_1_fu_260_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_154 : BOOLEAN;
    signal ap_condition_175 : BOOLEAN;
    signal ap_condition_179 : BOOLEAN;
    signal ap_condition_111 : BOOLEAN;
    signal ap_condition_206 : BOOLEAN;


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
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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


    tash_state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_111)) then
                if ((ap_const_boolean_1 = ap_condition_179)) then 
                    tash_state <= ap_const_lv2_1;
                elsif ((ap_const_boolean_1 = ap_condition_154)) then 
                    tash_state <= ap_phi_mux_storemerge_i_phi_fu_118_p4;
                elsif ((ap_const_boolean_1 = ap_condition_175)) then 
                    tash_state <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_94_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ev_address_V <= txApp_txEventCache_V_dout(36 downto 19);
                ev_length_V <= txApp_txEventCache_V_dout(52 downto 37);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ev_length_V_load_reg_289 <= ev_length_V;
                ev_load_reg_283 <= ev_address_V;
                tash_state_load_reg_279 <= tash_state;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tash_state_load_reg_279 = ap_const_lv2_0) and (tmp_reg_315 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ev_sessionID_V <= tmp_sessionID_V_load_reg_319;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_fu_126_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln895_reg_311 <= icmp_ln895_fu_166_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tash_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_22_reg_303 <= grp_nbreadreq_fu_80_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tash_state = ap_const_lv2_2) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_23_reg_295 <= grp_nbreadreq_fu_80_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_24_reg_307 <= txBufferWriteStatus_V_TDATA(7 downto 7);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_2) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_25_reg_299 <= txBufferWriteStatus_V_TDATA(7 downto 7);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tash_state = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_reg_315 <= tmp_nbreadreq_fu_94_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_94_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_sessionID_V_load_reg_319 <= txApp_txEventCache_V_dout(18 downto 3);
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txBufferWriteStatus_V_TVALID, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, txApp_txEventCache_V_empty_n, ap_predicate_op26_read_state1, txApp2txSar_push_V_full_n, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txApp_txEventCache_V_empty_n = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1)) or ((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txBufferWriteStatus_V_TVALID, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, txApp_txEventCache_V_empty_n, ap_predicate_op26_read_state1, txApp2txSar_push_V_full_n, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txApp_txEventCache_V_empty_n = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1)) or ((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, txBufferWriteStatus_V_TVALID, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, txApp_txEventCache_V_empty_n, ap_predicate_op26_read_state1, txApp2txSar_push_V_full_n, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txApp_txEventCache_V_empty_n = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1)) or ((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, txBufferWriteStatus_V_TVALID, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, txApp_txEventCache_V_empty_n, ap_predicate_op26_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((txApp_txEventCache_V_empty_n = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1)) or ((txBufferWriteStatus_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(txApp2txSar_push_V_full_n, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1)) or ((txApp2txSar_push_V_full_n = ap_const_logic_0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1)));
    end process;


    ap_condition_111_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_111 <= ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_condition_154_assign_proc : process(grp_nbreadreq_fu_80_p3, tash_state, grp_fu_126_p3)
    begin
                ap_condition_154 <= ((grp_fu_126_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_1));
    end process;


    ap_condition_175_assign_proc : process(grp_nbreadreq_fu_80_p3, tash_state, grp_fu_126_p3)
    begin
                ap_condition_175 <= ((grp_fu_126_p3 = ap_const_lv1_1) and (grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_2));
    end process;


    ap_condition_179_assign_proc : process(tmp_nbreadreq_fu_94_p3, tash_state, icmp_ln81_fu_224_p2)
    begin
                ap_condition_179 <= ((tmp_nbreadreq_fu_94_p3 = ap_const_lv1_1) and (icmp_ln81_fu_224_p2 = ap_const_lv1_1) and (tash_state = ap_const_lv2_0));
    end process;


    ap_condition_206_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_206 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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


    ap_phi_mux_storemerge_i_phi_fu_118_p4_assign_proc : process(icmp_ln895_fu_166_p2, ap_phi_reg_pp0_iter0_storemerge_i_reg_115, ap_condition_154)
    begin
        if ((ap_const_boolean_1 = ap_condition_154)) then
            if ((icmp_ln895_fu_166_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_storemerge_i_phi_fu_118_p4 <= ap_const_lv2_2;
            elsif ((icmp_ln895_fu_166_p2 = ap_const_lv1_0)) then 
                ap_phi_mux_storemerge_i_phi_fu_118_p4 <= ap_const_lv2_0;
            else 
                ap_phi_mux_storemerge_i_phi_fu_118_p4 <= ap_phi_reg_pp0_iter0_storemerge_i_reg_115;
            end if;
        else 
            ap_phi_mux_storemerge_i_phi_fu_118_p4 <= ap_phi_reg_pp0_iter0_storemerge_i_reg_115;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_storemerge_i_reg_115 <= "XX";

    ap_predicate_op13_read_state1_assign_proc : process(grp_nbreadreq_fu_80_p3, tash_state)
    begin
                ap_predicate_op13_read_state1 <= ((grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_1));
    end process;


    ap_predicate_op26_read_state1_assign_proc : process(tmp_nbreadreq_fu_94_p3, tash_state)
    begin
                ap_predicate_op26_read_state1 <= ((tmp_nbreadreq_fu_94_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_0));
    end process;


    ap_predicate_op45_write_state2_assign_proc : process(tash_state_load_reg_279, tmp_23_reg_295, tmp_25_reg_299)
    begin
                ap_predicate_op45_write_state2 <= ((tmp_25_reg_299 = ap_const_lv1_1) and (tmp_23_reg_295 = ap_const_lv1_1) and (tash_state_load_reg_279 = ap_const_lv2_2));
    end process;


    ap_predicate_op53_write_state2_assign_proc : process(tash_state_load_reg_279, tmp_22_reg_303, tmp_24_reg_307, icmp_ln895_reg_311)
    begin
                ap_predicate_op53_write_state2 <= ((icmp_ln895_reg_311 = ap_const_lv1_0) and (tash_state_load_reg_279 = ap_const_lv2_1) and (tmp_24_reg_307 = ap_const_lv1_1) and (tmp_22_reg_303 = ap_const_lv1_1));
    end process;


    ap_predicate_op8_read_state1_assign_proc : process(grp_nbreadreq_fu_80_p3, tash_state)
    begin
                ap_predicate_op8_read_state1 <= ((grp_nbreadreq_fu_80_p3 = ap_const_lv1_1) and (tash_state = ap_const_lv2_2));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
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

    grp_fu_126_p3 <= txBufferWriteStatus_V_TDATA(7 downto 7);
    grp_nbreadreq_fu_80_p3 <= (0=>(txBufferWriteStatus_V_TVALID), others=>'-');
    icmp_ln81_fu_224_p2 <= "1" when (trunc_ln368_fu_178_p1 = ap_const_lv3_0) else "0";
    icmp_ln895_fu_166_p2 <= "1" when (unsigned(ret_V_fu_160_p2) > unsigned(ap_const_lv19_40000)) else "0";
    lhs_V_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ev_address_V),19));
    ret_V_fu_160_p2 <= std_logic_vector(unsigned(lhs_V_fu_152_p1) + unsigned(rhs_V_fu_156_p1));
    rhs_V_fu_156_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ev_length_V),19));
    tmp_2_fu_265_p3 <= (tmp_app_V_1_fu_260_p2 & ev_sessionID_V);
    tmp_4_fu_248_p3 <= (tmp_app_V_fu_243_p2 & ev_sessionID_V);
    tmp_app_V_1_fu_260_p2 <= std_logic_vector(unsigned(ev_load_reg_283) + unsigned(zext_ln209_1_fu_257_p1));
    tmp_app_V_fu_243_p2 <= std_logic_vector(unsigned(ev_load_reg_283) + unsigned(zext_ln209_fu_240_p1));
    tmp_nbreadreq_fu_94_p3 <= (0=>(txApp_txEventCache_V_empty_n), others=>'-');
    trunc_ln368_fu_178_p1 <= txApp_txEventCache_V_dout(3 - 1 downto 0);

    txApp2txSar_push_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, txApp2txSar_push_V_full_n, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            txApp2txSar_push_V_blk_n <= txApp2txSar_push_V_full_n;
        else 
            txApp2txSar_push_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txApp2txSar_push_V_din_assign_proc : process(ap_predicate_op45_write_state2, ap_predicate_op53_write_state2, tmp_4_fu_248_p3, tmp_2_fu_265_p3, ap_condition_206)
    begin
        if ((ap_const_boolean_1 = ap_condition_206)) then
            if ((ap_predicate_op53_write_state2 = ap_const_boolean_1)) then 
                txApp2txSar_push_V_din <= tmp_2_fu_265_p3;
            elsif ((ap_predicate_op45_write_state2 = ap_const_boolean_1)) then 
                txApp2txSar_push_V_din <= tmp_4_fu_248_p3;
            else 
                txApp2txSar_push_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            txApp2txSar_push_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    txApp2txSar_push_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op45_write_state2, ap_predicate_op53_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op53_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op45_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            txApp2txSar_push_V_write <= ap_const_logic_1;
        else 
            txApp2txSar_push_V_write <= ap_const_logic_0;
        end if; 
    end process;


    txApp_txEventCache_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, txApp_txEventCache_V_empty_n, ap_predicate_op26_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            txApp_txEventCache_V_blk_n <= txApp_txEventCache_V_empty_n;
        else 
            txApp_txEventCache_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txApp_txEventCache_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op26_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            txApp_txEventCache_V_read <= ap_const_logic_1;
        else 
            txApp_txEventCache_V_read <= ap_const_logic_0;
        end if; 
    end process;


    txBufferWriteStatus_V_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, txBufferWriteStatus_V_TVALID, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            txBufferWriteStatus_V_TDATA_blk_n <= txBufferWriteStatus_V_TVALID;
        else 
            txBufferWriteStatus_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    txBufferWriteStatus_V_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_predicate_op13_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op13_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001)))) then 
            txBufferWriteStatus_V_TREADY <= ap_const_logic_1;
        else 
            txBufferWriteStatus_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln209_1_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ev_length_V_load_reg_289),18));
    zext_ln209_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ev_length_V_load_reg_289),18));
end behav;

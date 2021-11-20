-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity merge_rx_meta is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ipMetaIn_V_TVALID : IN STD_LOGIC;
    rx_udpMetaFifo_V_dout : IN STD_LOGIC_VECTOR (48 downto 0);
    rx_udpMetaFifo_V_empty_n : IN STD_LOGIC;
    rx_udpMetaFifo_V_read : OUT STD_LOGIC;
    metaOut_V_TREADY : IN STD_LOGIC;
    ipMetaIn_V_TDATA : IN STD_LOGIC_VECTOR (47 downto 0);
    ipMetaIn_V_TREADY : OUT STD_LOGIC;
    metaOut_V_TDATA : OUT STD_LOGIC_VECTOR (175 downto 0);
    metaOut_V_TVALID : OUT STD_LOGIC );
end;


architecture behav of merge_rx_meta is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";

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
    signal tmp_nbreadreq_fu_42_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_nbreadreq_fu_50_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op8_read_state1 : BOOLEAN;
    signal ap_predicate_op10_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal tmp_reg_104 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_108 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_117 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op16_write_state2 : BOOLEAN;
    signal ap_block_state2_io : BOOLEAN;
    signal regslice_both_metaOut_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal tmp_reg_104_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_108_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_117_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op21_write_state3 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ipMetaIn_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal metaOut_V_TDATA_blk_n : STD_LOGIC;
    signal rx_udpMetaFifo_V_blk_n : STD_LOGIC;
    signal trunc_ln321_fu_77_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln321_reg_112 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_81_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln181_fu_89_p1 : STD_LOGIC_VECTOR (47 downto 0);
    signal trunc_ln181_reg_121 : STD_LOGIC_VECTOR (47 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_their_address_V_fu_93_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal metaOut_V_TDATA_int : STD_LOGIC_VECTOR (175 downto 0);
    signal metaOut_V_TVALID_int : STD_LOGIC;
    signal metaOut_V_TREADY_int : STD_LOGIC;
    signal regslice_both_metaOut_V_U_vld_out : STD_LOGIC;

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
    regslice_both_metaOut_V_U : component regslice_both
    generic map (
        DataWidth => 176)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => metaOut_V_TDATA_int,
        vld_in => metaOut_V_TVALID_int,
        ack_in => metaOut_V_TREADY_int,
        data_out => metaOut_V_TDATA,
        vld_out => regslice_both_metaOut_V_U_vld_out,
        ack_out => metaOut_V_TREADY,
        apdone_blk => regslice_both_metaOut_V_U_apdone_blk);





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

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_nbreadreq_fu_42_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_3_reg_108 <= tmp_3_nbreadreq_fu_50_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_3_reg_108_pp0_iter1_reg <= tmp_3_reg_108;
                tmp_4_reg_117_pp0_iter1_reg <= tmp_4_reg_117;
                tmp_reg_104 <= tmp_nbreadreq_fu_42_p3;
                tmp_reg_104_pp0_iter1_reg <= tmp_reg_104;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_nbreadreq_fu_50_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_42_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_4_reg_117 <= rx_udpMetaFifo_V_dout(48 downto 48);
                trunc_ln321_reg_112 <= trunc_ln321_fu_77_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_3_nbreadreq_fu_50_p3 = ap_const_lv1_1) and (tmp_4_fu_81_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_42_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                trunc_ln181_reg_121 <= trunc_ln181_fu_89_p1;
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

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter2, ipMetaIn_V_TVALID, ap_predicate_op8_read_state1, rx_udpMetaFifo_V_empty_n, ap_predicate_op10_read_state1, regslice_both_metaOut_V_U_apdone_blk)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((regslice_both_metaOut_V_U_apdone_blk = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rx_udpMetaFifo_V_empty_n = ap_const_logic_0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1)) or ((ipMetaIn_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ipMetaIn_V_TVALID, ap_predicate_op8_read_state1, rx_udpMetaFifo_V_empty_n, ap_predicate_op10_read_state1, ap_block_state2_io, regslice_both_metaOut_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_metaOut_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rx_udpMetaFifo_V_empty_n = ap_const_logic_0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1)) or ((ipMetaIn_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ipMetaIn_V_TVALID, ap_predicate_op8_read_state1, rx_udpMetaFifo_V_empty_n, ap_predicate_op10_read_state1, ap_block_state2_io, regslice_both_metaOut_V_U_apdone_blk, ap_block_state3_io)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((regslice_both_metaOut_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state3_io))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_io)) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rx_udpMetaFifo_V_empty_n = ap_const_logic_0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1)) or ((ipMetaIn_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, ipMetaIn_V_TVALID, ap_predicate_op8_read_state1, rx_udpMetaFifo_V_empty_n, ap_predicate_op10_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rx_udpMetaFifo_V_empty_n = ap_const_logic_0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1)) or ((ipMetaIn_V_TVALID = ap_const_logic_0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_io_assign_proc : process(ap_predicate_op16_write_state2, metaOut_V_TREADY_int)
    begin
                ap_block_state2_io <= ((metaOut_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op16_write_state2 = ap_const_boolean_1));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_io_assign_proc : process(ap_predicate_op21_write_state3, metaOut_V_TREADY_int)
    begin
                ap_block_state3_io <= ((metaOut_V_TREADY_int = ap_const_logic_0) and (ap_predicate_op21_write_state3 = ap_const_boolean_1));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(regslice_both_metaOut_V_U_apdone_blk)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (regslice_both_metaOut_V_U_apdone_blk = ap_const_logic_1);
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


    ap_predicate_op10_read_state1_assign_proc : process(tmp_nbreadreq_fu_42_p3, tmp_3_nbreadreq_fu_50_p3)
    begin
                ap_predicate_op10_read_state1 <= ((tmp_3_nbreadreq_fu_50_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_42_p3 = ap_const_lv1_1));
    end process;


    ap_predicate_op16_write_state2_assign_proc : process(tmp_reg_104, tmp_3_reg_108, tmp_4_reg_117)
    begin
                ap_predicate_op16_write_state2 <= ((tmp_4_reg_117 = ap_const_lv1_1) and (tmp_3_reg_108 = ap_const_lv1_1) and (tmp_reg_104 = ap_const_lv1_1));
    end process;


    ap_predicate_op21_write_state3_assign_proc : process(tmp_reg_104_pp0_iter1_reg, tmp_3_reg_108_pp0_iter1_reg, tmp_4_reg_117_pp0_iter1_reg)
    begin
                ap_predicate_op21_write_state3 <= ((tmp_4_reg_117_pp0_iter1_reg = ap_const_lv1_1) and (tmp_3_reg_108_pp0_iter1_reg = ap_const_lv1_1) and (tmp_reg_104_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op8_read_state1_assign_proc : process(tmp_nbreadreq_fu_42_p3, tmp_3_nbreadreq_fu_50_p3)
    begin
                ap_predicate_op8_read_state1 <= ((tmp_3_nbreadreq_fu_50_p3 = ap_const_lv1_1) and (tmp_nbreadreq_fu_42_p3 = ap_const_lv1_1));
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


    ipMetaIn_V_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, ipMetaIn_V_TVALID, ap_predicate_op8_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ipMetaIn_V_TDATA_blk_n <= ipMetaIn_V_TVALID;
        else 
            ipMetaIn_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ipMetaIn_V_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op8_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op8_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            ipMetaIn_V_TREADY <= ap_const_logic_1;
        else 
            ipMetaIn_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    metaOut_V_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_predicate_op16_write_state2, ap_predicate_op21_write_state3, ap_block_pp0_stage0, metaOut_V_TREADY_int)
    begin
        if ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_predicate_op21_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op16_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            metaOut_V_TDATA_blk_n <= metaOut_V_TREADY_int;
        else 
            metaOut_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    metaOut_V_TDATA_int <= (trunc_ln181_reg_121 & tmp_their_address_V_fu_93_p1);
    metaOut_V_TVALID <= regslice_both_metaOut_V_U_vld_out;

    metaOut_V_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op16_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op16_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            metaOut_V_TVALID_int <= ap_const_logic_1;
        else 
            metaOut_V_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;


    rx_udpMetaFifo_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rx_udpMetaFifo_V_empty_n, ap_predicate_op10_read_state1, ap_block_pp0_stage0)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            rx_udpMetaFifo_V_blk_n <= rx_udpMetaFifo_V_empty_n;
        else 
            rx_udpMetaFifo_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rx_udpMetaFifo_V_read_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op10_read_state1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op10_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            rx_udpMetaFifo_V_read <= ap_const_logic_1;
        else 
            rx_udpMetaFifo_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_3_nbreadreq_fu_50_p3 <= (0=>(rx_udpMetaFifo_V_empty_n), others=>'-');
    tmp_4_fu_81_p3 <= rx_udpMetaFifo_V_dout(48 downto 48);
    tmp_nbreadreq_fu_42_p3 <= (0=>(ipMetaIn_V_TVALID), others=>'-');
    tmp_their_address_V_fu_93_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln321_reg_112),128));
    trunc_ln181_fu_89_p1 <= rx_udpMetaFifo_V_dout(48 - 1 downto 0);
    trunc_ln321_fu_77_p1 <= ipMetaIn_V_TDATA(32 - 1 downto 0);
end behav;

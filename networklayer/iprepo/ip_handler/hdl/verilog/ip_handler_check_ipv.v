// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ip_handler_check_ipv (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        iph_subSumsFifoOut_V_dout,
        iph_subSumsFifoOut_V_empty_n,
        iph_subSumsFifoOut_V_read,
        validChecksumFifo_V_din,
        validChecksumFifo_V_full_n,
        validChecksumFifo_V_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [543:0] iph_subSumsFifoOut_V_dout;
input   iph_subSumsFifoOut_V_empty_n;
output   iph_subSumsFifoOut_V_read;
output  [0:0] validChecksumFifo_V_din;
input   validChecksumFifo_V_full_n;
output   validChecksumFifo_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg iph_subSumsFifoOut_V_read;
reg validChecksumFifo_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire   [0:0] tmp_nbreadreq_fu_222_p3;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
reg   [0:0] tmp_reg_1857;
reg   [0:0] tmp_reg_1857_pp0_iter3_reg;
reg    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg    iph_subSumsFifoOut_V_blk_n;
wire    ap_block_pp0_stage0;
reg    validChecksumFifo_V_blk_n;
reg   [0:0] tmp_reg_1857_pp0_iter1_reg;
reg   [0:0] tmp_reg_1857_pp0_iter2_reg;
reg   [15:0] tmp_s_reg_1861;
wire   [15:0] trunc_ln700_30_fu_267_p1;
reg   [15:0] trunc_ln700_30_reg_1866;
reg   [0:0] tmp_46_reg_1871;
reg   [15:0] tmp_2_reg_1876;
reg   [15:0] tmp_3_reg_1881;
reg   [0:0] tmp_47_reg_1886;
reg   [15:0] tmp_4_reg_1891;
reg   [15:0] tmp_5_reg_1896;
reg   [0:0] tmp_48_reg_1901;
reg   [15:0] tmp_6_reg_1906;
reg   [15:0] tmp_7_reg_1911;
reg   [0:0] tmp_49_reg_1916;
reg   [15:0] tmp_8_reg_1921;
reg   [15:0] tmp_9_reg_1926;
reg   [0:0] tmp_50_reg_1931;
reg   [15:0] tmp_1_reg_1936;
reg   [15:0] tmp_10_reg_1941;
reg   [0:0] tmp_51_reg_1946;
reg   [15:0] tmp_11_reg_1951;
reg   [15:0] tmp_12_reg_1956;
reg   [0:0] tmp_52_reg_1961;
reg   [15:0] tmp_13_reg_1966;
reg   [15:0] tmp_14_reg_1971;
reg   [0:0] tmp_53_reg_1976;
reg   [15:0] tmp_15_reg_1981;
reg   [15:0] tmp_16_reg_1986;
reg   [0:0] tmp_54_reg_1991;
reg   [15:0] tmp_17_reg_1996;
reg   [15:0] tmp_18_reg_2001;
reg   [0:0] tmp_55_reg_2006;
reg   [15:0] tmp_19_reg_2011;
reg   [15:0] tmp_20_reg_2016;
reg   [0:0] tmp_56_reg_2021;
reg   [15:0] tmp_21_reg_2026;
reg   [15:0] tmp_22_reg_2031;
reg   [0:0] tmp_57_reg_2036;
reg   [15:0] tmp_23_reg_2041;
reg   [15:0] tmp_24_reg_2046;
reg   [0:0] tmp_58_reg_2051;
reg   [15:0] tmp_25_reg_2056;
reg   [15:0] tmp_26_reg_2061;
reg   [0:0] tmp_59_reg_2066;
reg   [15:0] tmp_27_reg_2071;
reg   [15:0] tmp_28_reg_2076;
reg   [0:0] tmp_60_reg_2081;
reg   [15:0] tmp_29_reg_2086;
reg   [15:0] tmp_30_reg_2091;
reg   [0:0] tmp_61_reg_2096;
wire   [15:0] add_ln214_92_fu_1391_p2;
reg   [15:0] add_ln214_92_reg_2101;
wire   [15:0] add_ln214_94_fu_1421_p2;
reg   [15:0] add_ln214_94_reg_2107;
wire   [15:0] add_ln214_96_fu_1451_p2;
reg   [15:0] add_ln214_96_reg_2113;
wire   [15:0] add_ln214_98_fu_1481_p2;
reg   [15:0] add_ln214_98_reg_2119;
wire   [15:0] add_ln214_100_fu_1511_p2;
reg   [15:0] add_ln214_100_reg_2125;
wire   [15:0] add_ln214_102_fu_1541_p2;
reg   [15:0] add_ln214_102_reg_2131;
wire   [15:0] add_ln214_104_fu_1571_p2;
reg   [15:0] add_ln214_104_reg_2137;
wire   [15:0] add_ln214_106_fu_1601_p2;
reg   [15:0] add_ln214_106_reg_2143;
wire   [15:0] add_ln214_108_fu_1654_p2;
reg   [15:0] add_ln214_108_reg_2149;
wire   [15:0] add_ln214_110_fu_1686_p2;
reg   [15:0] add_ln214_110_reg_2154;
wire   [15:0] add_ln214_112_fu_1718_p2;
reg   [15:0] add_ln214_112_reg_2159;
wire   [15:0] add_ln214_114_fu_1750_p2;
reg   [15:0] add_ln214_114_reg_2164;
reg   [0:0] tmp_74_reg_2169;
reg   [0:0] tmp_75_reg_2174;
wire   [15:0] add_ln769_fu_1845_p2;
reg   [15:0] add_ln769_reg_2179;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [16:0] trunc_ln700_fu_253_p1;
wire   [16:0] tmp_12_i_fu_243_p4;
wire   [16:0] add_ln700_fu_271_p2;
wire   [16:0] tmp_16_i_fu_295_p4;
wire   [16:0] tmp_15_i_fu_285_p4;
wire   [16:0] add_ln700_30_fu_325_p2;
wire   [16:0] tmp_19_i_fu_349_p4;
wire   [16:0] tmp_18_i_fu_339_p4;
wire   [16:0] add_ln700_31_fu_379_p2;
wire   [16:0] tmp_22_i_fu_403_p4;
wire   [16:0] tmp_21_i_fu_393_p4;
wire   [16:0] add_ln700_32_fu_433_p2;
wire   [16:0] tmp_25_i_fu_457_p4;
wire   [16:0] tmp_24_i_fu_447_p4;
wire   [16:0] add_ln700_33_fu_487_p2;
wire   [16:0] tmp_28_i_fu_511_p4;
wire   [16:0] tmp_27_i_fu_501_p4;
wire   [16:0] add_ln700_34_fu_541_p2;
wire   [16:0] tmp_31_i_fu_565_p4;
wire   [16:0] tmp_30_i_fu_555_p4;
wire   [16:0] add_ln700_35_fu_595_p2;
wire   [16:0] tmp_34_i_fu_619_p4;
wire   [16:0] tmp_33_i_fu_609_p4;
wire   [16:0] add_ln700_36_fu_649_p2;
wire   [16:0] tmp_37_i_fu_673_p4;
wire   [16:0] tmp_36_i_fu_663_p4;
wire   [16:0] add_ln700_37_fu_703_p2;
wire   [16:0] tmp_40_i_fu_727_p4;
wire   [16:0] tmp_39_i_fu_717_p4;
wire   [16:0] add_ln700_38_fu_757_p2;
wire   [16:0] tmp_43_i_fu_781_p4;
wire   [16:0] tmp_42_i_fu_771_p4;
wire   [16:0] add_ln700_39_fu_811_p2;
wire   [16:0] tmp_46_i_fu_835_p4;
wire   [16:0] tmp_45_i_fu_825_p4;
wire   [16:0] add_ln700_40_fu_865_p2;
wire   [16:0] tmp_49_i_fu_889_p4;
wire   [16:0] tmp_48_i_fu_879_p4;
wire   [16:0] add_ln700_41_fu_919_p2;
wire   [16:0] tmp_52_i_fu_943_p4;
wire   [16:0] tmp_51_i_fu_933_p4;
wire   [16:0] add_ln700_42_fu_973_p2;
wire   [16:0] tmp_55_i_fu_997_p4;
wire   [16:0] tmp_54_i_fu_987_p4;
wire   [16:0] add_ln700_43_fu_1027_p2;
wire   [16:0] tmp_58_i_fu_1051_p4;
wire   [16:0] tmp_57_i_fu_1041_p4;
wire   [16:0] add_ln700_44_fu_1081_p2;
wire   [15:0] zext_ln214_60_fu_1095_p1;
wire   [15:0] add_ln214_fu_1098_p2;
wire   [15:0] add_ln214_60_fu_1103_p2;
wire   [15:0] zext_ln214_61_fu_1112_p1;
wire   [15:0] add_ln214_61_fu_1115_p2;
wire   [15:0] add_ln214_62_fu_1120_p2;
wire   [15:0] zext_ln214_62_fu_1129_p1;
wire   [15:0] add_ln214_63_fu_1132_p2;
wire   [15:0] add_ln214_64_fu_1137_p2;
wire   [15:0] zext_ln214_63_fu_1146_p1;
wire   [15:0] add_ln214_65_fu_1149_p2;
wire   [15:0] add_ln214_66_fu_1154_p2;
wire   [15:0] zext_ln214_64_fu_1163_p1;
wire   [15:0] add_ln214_67_fu_1166_p2;
wire   [15:0] add_ln214_68_fu_1171_p2;
wire   [15:0] zext_ln214_65_fu_1180_p1;
wire   [15:0] add_ln214_69_fu_1183_p2;
wire   [15:0] add_ln214_70_fu_1188_p2;
wire   [15:0] zext_ln214_66_fu_1197_p1;
wire   [15:0] add_ln214_71_fu_1200_p2;
wire   [15:0] add_ln214_72_fu_1205_p2;
wire   [15:0] zext_ln214_67_fu_1214_p1;
wire   [15:0] add_ln214_73_fu_1217_p2;
wire   [15:0] add_ln214_74_fu_1222_p2;
wire   [15:0] zext_ln214_68_fu_1231_p1;
wire   [15:0] add_ln214_75_fu_1234_p2;
wire   [15:0] add_ln214_76_fu_1239_p2;
wire   [15:0] zext_ln214_69_fu_1248_p1;
wire   [15:0] add_ln214_77_fu_1251_p2;
wire   [15:0] add_ln214_78_fu_1256_p2;
wire   [15:0] zext_ln214_70_fu_1265_p1;
wire   [15:0] add_ln214_79_fu_1268_p2;
wire   [15:0] add_ln214_80_fu_1273_p2;
wire   [15:0] zext_ln214_71_fu_1282_p1;
wire   [15:0] add_ln214_81_fu_1285_p2;
wire   [15:0] add_ln214_82_fu_1290_p2;
wire   [15:0] zext_ln214_72_fu_1299_p1;
wire   [15:0] add_ln214_83_fu_1302_p2;
wire   [15:0] add_ln214_84_fu_1307_p2;
wire   [15:0] zext_ln214_73_fu_1316_p1;
wire   [15:0] add_ln214_85_fu_1319_p2;
wire   [15:0] add_ln214_86_fu_1324_p2;
wire   [15:0] zext_ln214_74_fu_1333_p1;
wire   [15:0] add_ln214_87_fu_1336_p2;
wire   [15:0] add_ln214_88_fu_1341_p2;
wire   [15:0] zext_ln214_75_fu_1350_p1;
wire   [15:0] add_ln214_89_fu_1353_p2;
wire   [15:0] add_ln214_90_fu_1358_p2;
wire   [16:0] zext_ln214_fu_1108_p1;
wire   [16:0] zext_ln214_37_fu_1244_p1;
wire   [16:0] add_ln700_45_fu_1367_p2;
wire   [0:0] tmp_62_fu_1373_p3;
wire   [15:0] zext_ln214_76_fu_1381_p1;
wire   [15:0] add_ln214_91_fu_1385_p2;
wire   [16:0] zext_ln214_30_fu_1125_p1;
wire   [16:0] zext_ln214_38_fu_1261_p1;
wire   [16:0] add_ln700_46_fu_1397_p2;
wire   [0:0] tmp_63_fu_1403_p3;
wire   [15:0] zext_ln214_77_fu_1411_p1;
wire   [15:0] add_ln214_93_fu_1415_p2;
wire   [16:0] zext_ln214_31_fu_1142_p1;
wire   [16:0] zext_ln214_39_fu_1278_p1;
wire   [16:0] add_ln700_47_fu_1427_p2;
wire   [0:0] tmp_64_fu_1433_p3;
wire   [15:0] zext_ln214_78_fu_1441_p1;
wire   [15:0] add_ln214_95_fu_1445_p2;
wire   [16:0] zext_ln214_32_fu_1159_p1;
wire   [16:0] zext_ln214_40_fu_1295_p1;
wire   [16:0] add_ln700_48_fu_1457_p2;
wire   [0:0] tmp_65_fu_1463_p3;
wire   [15:0] zext_ln214_79_fu_1471_p1;
wire   [15:0] add_ln214_97_fu_1475_p2;
wire   [16:0] zext_ln214_33_fu_1176_p1;
wire   [16:0] zext_ln214_41_fu_1312_p1;
wire   [16:0] add_ln700_49_fu_1487_p2;
wire   [0:0] tmp_66_fu_1493_p3;
wire   [15:0] zext_ln214_80_fu_1501_p1;
wire   [15:0] add_ln214_99_fu_1505_p2;
wire   [16:0] zext_ln214_34_fu_1193_p1;
wire   [16:0] zext_ln214_42_fu_1329_p1;
wire   [16:0] add_ln700_50_fu_1517_p2;
wire   [0:0] tmp_67_fu_1523_p3;
wire   [15:0] zext_ln214_81_fu_1531_p1;
wire   [15:0] add_ln214_101_fu_1535_p2;
wire   [16:0] zext_ln214_35_fu_1210_p1;
wire   [16:0] zext_ln214_43_fu_1346_p1;
wire   [16:0] add_ln700_51_fu_1547_p2;
wire   [0:0] tmp_68_fu_1553_p3;
wire   [15:0] zext_ln214_82_fu_1561_p1;
wire   [15:0] add_ln214_103_fu_1565_p2;
wire   [16:0] zext_ln214_36_fu_1227_p1;
wire   [16:0] zext_ln214_44_fu_1363_p1;
wire   [16:0] add_ln700_52_fu_1577_p2;
wire   [0:0] tmp_69_fu_1583_p3;
wire   [15:0] zext_ln214_83_fu_1591_p1;
wire   [15:0] add_ln214_105_fu_1595_p2;
wire   [16:0] zext_ln214_45_fu_1607_p1;
wire   [16:0] zext_ln214_49_fu_1619_p1;
wire   [16:0] add_ln700_53_fu_1631_p2;
wire   [0:0] tmp_70_fu_1637_p3;
wire   [15:0] zext_ln214_84_fu_1645_p1;
wire   [15:0] add_ln214_107_fu_1649_p2;
wire   [16:0] zext_ln214_46_fu_1610_p1;
wire   [16:0] zext_ln214_50_fu_1622_p1;
wire   [16:0] add_ln700_54_fu_1663_p2;
wire   [0:0] tmp_71_fu_1669_p3;
wire   [15:0] zext_ln214_85_fu_1677_p1;
wire   [15:0] add_ln214_109_fu_1681_p2;
wire   [16:0] zext_ln214_47_fu_1613_p1;
wire   [16:0] zext_ln214_51_fu_1625_p1;
wire   [16:0] add_ln700_55_fu_1695_p2;
wire   [0:0] tmp_72_fu_1701_p3;
wire   [15:0] zext_ln214_86_fu_1709_p1;
wire   [15:0] add_ln214_111_fu_1713_p2;
wire   [16:0] zext_ln214_48_fu_1616_p1;
wire   [16:0] zext_ln214_52_fu_1628_p1;
wire   [16:0] add_ln700_56_fu_1727_p2;
wire   [0:0] tmp_73_fu_1733_p3;
wire   [15:0] zext_ln214_87_fu_1741_p1;
wire   [15:0] add_ln214_113_fu_1745_p2;
wire   [16:0] zext_ln214_53_fu_1659_p1;
wire   [16:0] zext_ln214_55_fu_1723_p1;
wire   [16:0] zext_ln214_54_fu_1691_p1;
wire   [16:0] zext_ln214_56_fu_1755_p1;
wire   [16:0] add_ln700_57_fu_1759_p2;
wire   [16:0] add_ln700_58_fu_1765_p2;
wire   [15:0] zext_ln214_88_fu_1787_p1;
wire   [15:0] add_ln214_115_fu_1790_p2;
wire   [15:0] add_ln214_116_fu_1795_p2;
wire   [15:0] zext_ln214_89_fu_1804_p1;
wire   [15:0] add_ln214_117_fu_1807_p2;
wire   [15:0] add_ln214_118_fu_1812_p2;
wire   [16:0] zext_ln214_58_fu_1817_p1;
wire   [16:0] zext_ln214_57_fu_1800_p1;
wire   [16:0] add_ln700_59_fu_1827_p2;
wire   [0:0] tmp_76_fu_1833_p3;
wire   [15:0] zext_ln214_90_fu_1841_p1;
wire   [15:0] add_ln700_60_fu_1821_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to3;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln214_100_reg_2125 <= add_ln214_100_fu_1511_p2;
        add_ln214_102_reg_2131 <= add_ln214_102_fu_1541_p2;
        add_ln214_104_reg_2137 <= add_ln214_104_fu_1571_p2;
        add_ln214_106_reg_2143 <= add_ln214_106_fu_1601_p2;
        add_ln214_92_reg_2101 <= add_ln214_92_fu_1391_p2;
        add_ln214_94_reg_2107 <= add_ln214_94_fu_1421_p2;
        add_ln214_96_reg_2113 <= add_ln214_96_fu_1451_p2;
        add_ln214_98_reg_2119 <= add_ln214_98_fu_1481_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter1_reg == 1'd1))) begin
        add_ln214_108_reg_2149 <= add_ln214_108_fu_1654_p2;
        add_ln214_110_reg_2154 <= add_ln214_110_fu_1686_p2;
        add_ln214_112_reg_2159 <= add_ln214_112_fu_1718_p2;
        add_ln214_114_reg_2164 <= add_ln214_114_fu_1750_p2;
        tmp_74_reg_2169 <= add_ln700_57_fu_1759_p2[32'd16];
        tmp_75_reg_2174 <= add_ln700_58_fu_1765_p2[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter2_reg == 1'd1))) begin
        add_ln769_reg_2179 <= add_ln769_fu_1845_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_222_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_10_reg_1941 <= {{iph_subSumsFifoOut_V_dout[100:85]}};
        tmp_11_reg_1951 <= {{iph_subSumsFifoOut_V_dout[389:374]}};
        tmp_12_reg_1956 <= {{iph_subSumsFifoOut_V_dout[117:102]}};
        tmp_13_reg_1966 <= {{iph_subSumsFifoOut_V_dout[406:391]}};
        tmp_14_reg_1971 <= {{iph_subSumsFifoOut_V_dout[134:119]}};
        tmp_15_reg_1981 <= {{iph_subSumsFifoOut_V_dout[423:408]}};
        tmp_16_reg_1986 <= {{iph_subSumsFifoOut_V_dout[151:136]}};
        tmp_17_reg_1996 <= {{iph_subSumsFifoOut_V_dout[440:425]}};
        tmp_18_reg_2001 <= {{iph_subSumsFifoOut_V_dout[168:153]}};
        tmp_19_reg_2011 <= {{iph_subSumsFifoOut_V_dout[457:442]}};
        tmp_1_reg_1936 <= {{iph_subSumsFifoOut_V_dout[372:357]}};
        tmp_20_reg_2016 <= {{iph_subSumsFifoOut_V_dout[185:170]}};
        tmp_21_reg_2026 <= {{iph_subSumsFifoOut_V_dout[474:459]}};
        tmp_22_reg_2031 <= {{iph_subSumsFifoOut_V_dout[202:187]}};
        tmp_23_reg_2041 <= {{iph_subSumsFifoOut_V_dout[491:476]}};
        tmp_24_reg_2046 <= {{iph_subSumsFifoOut_V_dout[219:204]}};
        tmp_25_reg_2056 <= {{iph_subSumsFifoOut_V_dout[508:493]}};
        tmp_26_reg_2061 <= {{iph_subSumsFifoOut_V_dout[236:221]}};
        tmp_27_reg_2071 <= {{iph_subSumsFifoOut_V_dout[525:510]}};
        tmp_28_reg_2076 <= {{iph_subSumsFifoOut_V_dout[253:238]}};
        tmp_29_reg_2086 <= {{iph_subSumsFifoOut_V_dout[542:527]}};
        tmp_2_reg_1876 <= {{iph_subSumsFifoOut_V_dout[304:289]}};
        tmp_30_reg_2091 <= {{iph_subSumsFifoOut_V_dout[270:255]}};
        tmp_3_reg_1881 <= {{iph_subSumsFifoOut_V_dout[32:17]}};
        tmp_46_reg_1871 <= add_ln700_fu_271_p2[32'd16];
        tmp_47_reg_1886 <= add_ln700_30_fu_325_p2[32'd16];
        tmp_48_reg_1901 <= add_ln700_31_fu_379_p2[32'd16];
        tmp_49_reg_1916 <= add_ln700_32_fu_433_p2[32'd16];
        tmp_4_reg_1891 <= {{iph_subSumsFifoOut_V_dout[321:306]}};
        tmp_50_reg_1931 <= add_ln700_33_fu_487_p2[32'd16];
        tmp_51_reg_1946 <= add_ln700_34_fu_541_p2[32'd16];
        tmp_52_reg_1961 <= add_ln700_35_fu_595_p2[32'd16];
        tmp_53_reg_1976 <= add_ln700_36_fu_649_p2[32'd16];
        tmp_54_reg_1991 <= add_ln700_37_fu_703_p2[32'd16];
        tmp_55_reg_2006 <= add_ln700_38_fu_757_p2[32'd16];
        tmp_56_reg_2021 <= add_ln700_39_fu_811_p2[32'd16];
        tmp_57_reg_2036 <= add_ln700_40_fu_865_p2[32'd16];
        tmp_58_reg_2051 <= add_ln700_41_fu_919_p2[32'd16];
        tmp_59_reg_2066 <= add_ln700_42_fu_973_p2[32'd16];
        tmp_5_reg_1896 <= {{iph_subSumsFifoOut_V_dout[49:34]}};
        tmp_60_reg_2081 <= add_ln700_43_fu_1027_p2[32'd16];
        tmp_61_reg_2096 <= add_ln700_44_fu_1081_p2[32'd16];
        tmp_6_reg_1906 <= {{iph_subSumsFifoOut_V_dout[338:323]}};
        tmp_7_reg_1911 <= {{iph_subSumsFifoOut_V_dout[66:51]}};
        tmp_8_reg_1921 <= {{iph_subSumsFifoOut_V_dout[355:340]}};
        tmp_9_reg_1926 <= {{iph_subSumsFifoOut_V_dout[83:68]}};
        tmp_s_reg_1861 <= {{iph_subSumsFifoOut_V_dout[287:272]}};
        trunc_ln700_30_reg_1866 <= trunc_ln700_30_fu_267_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1857 <= tmp_nbreadreq_fu_222_p3;
        tmp_reg_1857_pp0_iter1_reg <= tmp_reg_1857;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_reg_1857_pp0_iter2_reg <= tmp_reg_1857_pp0_iter1_reg;
        tmp_reg_1857_pp0_iter3_reg <= tmp_reg_1857_pp0_iter2_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_222_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        iph_subSumsFifoOut_V_blk_n = iph_subSumsFifoOut_V_empty_n;
    end else begin
        iph_subSumsFifoOut_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_222_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        iph_subSumsFifoOut_V_read = 1'b1;
    end else begin
        iph_subSumsFifoOut_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1857_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        validChecksumFifo_V_blk_n = validChecksumFifo_V_full_n;
    end else begin
        validChecksumFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        validChecksumFifo_V_write = 1'b1;
    end else begin
        validChecksumFifo_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln214_100_fu_1511_p2 = (add_ln214_68_fu_1171_p2 + add_ln214_99_fu_1505_p2);

assign add_ln214_101_fu_1535_p2 = (zext_ln214_81_fu_1531_p1 + add_ln214_86_fu_1324_p2);

assign add_ln214_102_fu_1541_p2 = (add_ln214_70_fu_1188_p2 + add_ln214_101_fu_1535_p2);

assign add_ln214_103_fu_1565_p2 = (zext_ln214_82_fu_1561_p1 + add_ln214_88_fu_1341_p2);

assign add_ln214_104_fu_1571_p2 = (add_ln214_72_fu_1205_p2 + add_ln214_103_fu_1565_p2);

assign add_ln214_105_fu_1595_p2 = (zext_ln214_83_fu_1591_p1 + add_ln214_90_fu_1358_p2);

assign add_ln214_106_fu_1601_p2 = (add_ln214_74_fu_1222_p2 + add_ln214_105_fu_1595_p2);

assign add_ln214_107_fu_1649_p2 = (zext_ln214_84_fu_1645_p1 + add_ln214_100_reg_2125);

assign add_ln214_108_fu_1654_p2 = (add_ln214_92_reg_2101 + add_ln214_107_fu_1649_p2);

assign add_ln214_109_fu_1681_p2 = (zext_ln214_85_fu_1677_p1 + add_ln214_102_reg_2131);

assign add_ln214_110_fu_1686_p2 = (add_ln214_94_reg_2107 + add_ln214_109_fu_1681_p2);

assign add_ln214_111_fu_1713_p2 = (zext_ln214_86_fu_1709_p1 + add_ln214_104_reg_2137);

assign add_ln214_112_fu_1718_p2 = (add_ln214_96_reg_2113 + add_ln214_111_fu_1713_p2);

assign add_ln214_113_fu_1745_p2 = (zext_ln214_87_fu_1741_p1 + add_ln214_106_reg_2143);

assign add_ln214_114_fu_1750_p2 = (add_ln214_98_reg_2119 + add_ln214_113_fu_1745_p2);

assign add_ln214_115_fu_1790_p2 = (zext_ln214_88_fu_1787_p1 + add_ln214_112_reg_2159);

assign add_ln214_116_fu_1795_p2 = (add_ln214_108_reg_2149 + add_ln214_115_fu_1790_p2);

assign add_ln214_117_fu_1807_p2 = (zext_ln214_89_fu_1804_p1 + add_ln214_114_reg_2164);

assign add_ln214_118_fu_1812_p2 = (add_ln214_110_reg_2154 + add_ln214_117_fu_1807_p2);

assign add_ln214_60_fu_1103_p2 = (trunc_ln700_30_reg_1866 + add_ln214_fu_1098_p2);

assign add_ln214_61_fu_1115_p2 = (zext_ln214_61_fu_1112_p1 + tmp_2_reg_1876);

assign add_ln214_62_fu_1120_p2 = (tmp_3_reg_1881 + add_ln214_61_fu_1115_p2);

assign add_ln214_63_fu_1132_p2 = (zext_ln214_62_fu_1129_p1 + tmp_4_reg_1891);

assign add_ln214_64_fu_1137_p2 = (tmp_5_reg_1896 + add_ln214_63_fu_1132_p2);

assign add_ln214_65_fu_1149_p2 = (zext_ln214_63_fu_1146_p1 + tmp_6_reg_1906);

assign add_ln214_66_fu_1154_p2 = (tmp_7_reg_1911 + add_ln214_65_fu_1149_p2);

assign add_ln214_67_fu_1166_p2 = (zext_ln214_64_fu_1163_p1 + tmp_8_reg_1921);

assign add_ln214_68_fu_1171_p2 = (tmp_9_reg_1926 + add_ln214_67_fu_1166_p2);

assign add_ln214_69_fu_1183_p2 = (zext_ln214_65_fu_1180_p1 + tmp_1_reg_1936);

assign add_ln214_70_fu_1188_p2 = (tmp_10_reg_1941 + add_ln214_69_fu_1183_p2);

assign add_ln214_71_fu_1200_p2 = (zext_ln214_66_fu_1197_p1 + tmp_11_reg_1951);

assign add_ln214_72_fu_1205_p2 = (tmp_12_reg_1956 + add_ln214_71_fu_1200_p2);

assign add_ln214_73_fu_1217_p2 = (zext_ln214_67_fu_1214_p1 + tmp_13_reg_1966);

assign add_ln214_74_fu_1222_p2 = (tmp_14_reg_1971 + add_ln214_73_fu_1217_p2);

assign add_ln214_75_fu_1234_p2 = (zext_ln214_68_fu_1231_p1 + tmp_15_reg_1981);

assign add_ln214_76_fu_1239_p2 = (tmp_16_reg_1986 + add_ln214_75_fu_1234_p2);

assign add_ln214_77_fu_1251_p2 = (zext_ln214_69_fu_1248_p1 + tmp_17_reg_1996);

assign add_ln214_78_fu_1256_p2 = (tmp_18_reg_2001 + add_ln214_77_fu_1251_p2);

assign add_ln214_79_fu_1268_p2 = (zext_ln214_70_fu_1265_p1 + tmp_19_reg_2011);

assign add_ln214_80_fu_1273_p2 = (tmp_20_reg_2016 + add_ln214_79_fu_1268_p2);

assign add_ln214_81_fu_1285_p2 = (zext_ln214_71_fu_1282_p1 + tmp_21_reg_2026);

assign add_ln214_82_fu_1290_p2 = (tmp_22_reg_2031 + add_ln214_81_fu_1285_p2);

assign add_ln214_83_fu_1302_p2 = (zext_ln214_72_fu_1299_p1 + tmp_23_reg_2041);

assign add_ln214_84_fu_1307_p2 = (tmp_24_reg_2046 + add_ln214_83_fu_1302_p2);

assign add_ln214_85_fu_1319_p2 = (zext_ln214_73_fu_1316_p1 + tmp_25_reg_2056);

assign add_ln214_86_fu_1324_p2 = (tmp_26_reg_2061 + add_ln214_85_fu_1319_p2);

assign add_ln214_87_fu_1336_p2 = (zext_ln214_74_fu_1333_p1 + tmp_27_reg_2071);

assign add_ln214_88_fu_1341_p2 = (tmp_28_reg_2076 + add_ln214_87_fu_1336_p2);

assign add_ln214_89_fu_1353_p2 = (zext_ln214_75_fu_1350_p1 + tmp_29_reg_2086);

assign add_ln214_90_fu_1358_p2 = (tmp_30_reg_2091 + add_ln214_89_fu_1353_p2);

assign add_ln214_91_fu_1385_p2 = (zext_ln214_76_fu_1381_p1 + add_ln214_76_fu_1239_p2);

assign add_ln214_92_fu_1391_p2 = (add_ln214_60_fu_1103_p2 + add_ln214_91_fu_1385_p2);

assign add_ln214_93_fu_1415_p2 = (zext_ln214_77_fu_1411_p1 + add_ln214_78_fu_1256_p2);

assign add_ln214_94_fu_1421_p2 = (add_ln214_62_fu_1120_p2 + add_ln214_93_fu_1415_p2);

assign add_ln214_95_fu_1445_p2 = (zext_ln214_78_fu_1441_p1 + add_ln214_80_fu_1273_p2);

assign add_ln214_96_fu_1451_p2 = (add_ln214_64_fu_1137_p2 + add_ln214_95_fu_1445_p2);

assign add_ln214_97_fu_1475_p2 = (zext_ln214_79_fu_1471_p1 + add_ln214_82_fu_1290_p2);

assign add_ln214_98_fu_1481_p2 = (add_ln214_66_fu_1154_p2 + add_ln214_97_fu_1475_p2);

assign add_ln214_99_fu_1505_p2 = (zext_ln214_80_fu_1501_p1 + add_ln214_84_fu_1307_p2);

assign add_ln214_fu_1098_p2 = (zext_ln214_60_fu_1095_p1 + tmp_s_reg_1861);

assign add_ln700_30_fu_325_p2 = (tmp_16_i_fu_295_p4 + tmp_15_i_fu_285_p4);

assign add_ln700_31_fu_379_p2 = (tmp_19_i_fu_349_p4 + tmp_18_i_fu_339_p4);

assign add_ln700_32_fu_433_p2 = (tmp_22_i_fu_403_p4 + tmp_21_i_fu_393_p4);

assign add_ln700_33_fu_487_p2 = (tmp_25_i_fu_457_p4 + tmp_24_i_fu_447_p4);

assign add_ln700_34_fu_541_p2 = (tmp_28_i_fu_511_p4 + tmp_27_i_fu_501_p4);

assign add_ln700_35_fu_595_p2 = (tmp_31_i_fu_565_p4 + tmp_30_i_fu_555_p4);

assign add_ln700_36_fu_649_p2 = (tmp_34_i_fu_619_p4 + tmp_33_i_fu_609_p4);

assign add_ln700_37_fu_703_p2 = (tmp_37_i_fu_673_p4 + tmp_36_i_fu_663_p4);

assign add_ln700_38_fu_757_p2 = (tmp_40_i_fu_727_p4 + tmp_39_i_fu_717_p4);

assign add_ln700_39_fu_811_p2 = (tmp_43_i_fu_781_p4 + tmp_42_i_fu_771_p4);

assign add_ln700_40_fu_865_p2 = (tmp_46_i_fu_835_p4 + tmp_45_i_fu_825_p4);

assign add_ln700_41_fu_919_p2 = (tmp_49_i_fu_889_p4 + tmp_48_i_fu_879_p4);

assign add_ln700_42_fu_973_p2 = (tmp_52_i_fu_943_p4 + tmp_51_i_fu_933_p4);

assign add_ln700_43_fu_1027_p2 = (tmp_55_i_fu_997_p4 + tmp_54_i_fu_987_p4);

assign add_ln700_44_fu_1081_p2 = (tmp_58_i_fu_1051_p4 + tmp_57_i_fu_1041_p4);

assign add_ln700_45_fu_1367_p2 = (zext_ln214_fu_1108_p1 + zext_ln214_37_fu_1244_p1);

assign add_ln700_46_fu_1397_p2 = (zext_ln214_30_fu_1125_p1 + zext_ln214_38_fu_1261_p1);

assign add_ln700_47_fu_1427_p2 = (zext_ln214_31_fu_1142_p1 + zext_ln214_39_fu_1278_p1);

assign add_ln700_48_fu_1457_p2 = (zext_ln214_32_fu_1159_p1 + zext_ln214_40_fu_1295_p1);

assign add_ln700_49_fu_1487_p2 = (zext_ln214_33_fu_1176_p1 + zext_ln214_41_fu_1312_p1);

assign add_ln700_50_fu_1517_p2 = (zext_ln214_34_fu_1193_p1 + zext_ln214_42_fu_1329_p1);

assign add_ln700_51_fu_1547_p2 = (zext_ln214_35_fu_1210_p1 + zext_ln214_43_fu_1346_p1);

assign add_ln700_52_fu_1577_p2 = (zext_ln214_36_fu_1227_p1 + zext_ln214_44_fu_1363_p1);

assign add_ln700_53_fu_1631_p2 = (zext_ln214_45_fu_1607_p1 + zext_ln214_49_fu_1619_p1);

assign add_ln700_54_fu_1663_p2 = (zext_ln214_46_fu_1610_p1 + zext_ln214_50_fu_1622_p1);

assign add_ln700_55_fu_1695_p2 = (zext_ln214_47_fu_1613_p1 + zext_ln214_51_fu_1625_p1);

assign add_ln700_56_fu_1727_p2 = (zext_ln214_48_fu_1616_p1 + zext_ln214_52_fu_1628_p1);

assign add_ln700_57_fu_1759_p2 = (zext_ln214_53_fu_1659_p1 + zext_ln214_55_fu_1723_p1);

assign add_ln700_58_fu_1765_p2 = (zext_ln214_54_fu_1691_p1 + zext_ln214_56_fu_1755_p1);

assign add_ln700_59_fu_1827_p2 = (zext_ln214_58_fu_1817_p1 + zext_ln214_57_fu_1800_p1);

assign add_ln700_60_fu_1821_p2 = (add_ln214_116_fu_1795_p2 + add_ln214_118_fu_1812_p2);

assign add_ln700_fu_271_p2 = (trunc_ln700_fu_253_p1 + tmp_12_i_fu_243_p4);

assign add_ln769_fu_1845_p2 = (zext_ln214_90_fu_1841_p1 + add_ln700_60_fu_1821_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (validChecksumFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (iph_subSumsFifoOut_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (validChecksumFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (iph_subSumsFifoOut_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (validChecksumFifo_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (iph_subSumsFifoOut_V_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (iph_subSumsFifoOut_V_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (validChecksumFifo_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign tmp_12_i_fu_243_p4 = {{iph_subSumsFifoOut_V_dout[288:272]}};

assign tmp_15_i_fu_285_p4 = {{iph_subSumsFifoOut_V_dout[305:289]}};

assign tmp_16_i_fu_295_p4 = {{iph_subSumsFifoOut_V_dout[33:17]}};

assign tmp_18_i_fu_339_p4 = {{iph_subSumsFifoOut_V_dout[322:306]}};

assign tmp_19_i_fu_349_p4 = {{iph_subSumsFifoOut_V_dout[50:34]}};

assign tmp_21_i_fu_393_p4 = {{iph_subSumsFifoOut_V_dout[339:323]}};

assign tmp_22_i_fu_403_p4 = {{iph_subSumsFifoOut_V_dout[67:51]}};

assign tmp_24_i_fu_447_p4 = {{iph_subSumsFifoOut_V_dout[356:340]}};

assign tmp_25_i_fu_457_p4 = {{iph_subSumsFifoOut_V_dout[84:68]}};

assign tmp_27_i_fu_501_p4 = {{iph_subSumsFifoOut_V_dout[373:357]}};

assign tmp_28_i_fu_511_p4 = {{iph_subSumsFifoOut_V_dout[101:85]}};

assign tmp_30_i_fu_555_p4 = {{iph_subSumsFifoOut_V_dout[390:374]}};

assign tmp_31_i_fu_565_p4 = {{iph_subSumsFifoOut_V_dout[118:102]}};

assign tmp_33_i_fu_609_p4 = {{iph_subSumsFifoOut_V_dout[407:391]}};

assign tmp_34_i_fu_619_p4 = {{iph_subSumsFifoOut_V_dout[135:119]}};

assign tmp_36_i_fu_663_p4 = {{iph_subSumsFifoOut_V_dout[424:408]}};

assign tmp_37_i_fu_673_p4 = {{iph_subSumsFifoOut_V_dout[152:136]}};

assign tmp_39_i_fu_717_p4 = {{iph_subSumsFifoOut_V_dout[441:425]}};

assign tmp_40_i_fu_727_p4 = {{iph_subSumsFifoOut_V_dout[169:153]}};

assign tmp_42_i_fu_771_p4 = {{iph_subSumsFifoOut_V_dout[458:442]}};

assign tmp_43_i_fu_781_p4 = {{iph_subSumsFifoOut_V_dout[186:170]}};

assign tmp_45_i_fu_825_p4 = {{iph_subSumsFifoOut_V_dout[475:459]}};

assign tmp_46_i_fu_835_p4 = {{iph_subSumsFifoOut_V_dout[203:187]}};

assign tmp_48_i_fu_879_p4 = {{iph_subSumsFifoOut_V_dout[492:476]}};

assign tmp_49_i_fu_889_p4 = {{iph_subSumsFifoOut_V_dout[220:204]}};

assign tmp_51_i_fu_933_p4 = {{iph_subSumsFifoOut_V_dout[509:493]}};

assign tmp_52_i_fu_943_p4 = {{iph_subSumsFifoOut_V_dout[237:221]}};

assign tmp_54_i_fu_987_p4 = {{iph_subSumsFifoOut_V_dout[526:510]}};

assign tmp_55_i_fu_997_p4 = {{iph_subSumsFifoOut_V_dout[254:238]}};

assign tmp_57_i_fu_1041_p4 = {{iph_subSumsFifoOut_V_dout[543:527]}};

assign tmp_58_i_fu_1051_p4 = {{iph_subSumsFifoOut_V_dout[271:255]}};

assign tmp_62_fu_1373_p3 = add_ln700_45_fu_1367_p2[32'd16];

assign tmp_63_fu_1403_p3 = add_ln700_46_fu_1397_p2[32'd16];

assign tmp_64_fu_1433_p3 = add_ln700_47_fu_1427_p2[32'd16];

assign tmp_65_fu_1463_p3 = add_ln700_48_fu_1457_p2[32'd16];

assign tmp_66_fu_1493_p3 = add_ln700_49_fu_1487_p2[32'd16];

assign tmp_67_fu_1523_p3 = add_ln700_50_fu_1517_p2[32'd16];

assign tmp_68_fu_1553_p3 = add_ln700_51_fu_1547_p2[32'd16];

assign tmp_69_fu_1583_p3 = add_ln700_52_fu_1577_p2[32'd16];

assign tmp_70_fu_1637_p3 = add_ln700_53_fu_1631_p2[32'd16];

assign tmp_71_fu_1669_p3 = add_ln700_54_fu_1663_p2[32'd16];

assign tmp_72_fu_1701_p3 = add_ln700_55_fu_1695_p2[32'd16];

assign tmp_73_fu_1733_p3 = add_ln700_56_fu_1727_p2[32'd16];

assign tmp_76_fu_1833_p3 = add_ln700_59_fu_1827_p2[32'd16];

assign tmp_nbreadreq_fu_222_p3 = iph_subSumsFifoOut_V_empty_n;

assign trunc_ln700_30_fu_267_p1 = iph_subSumsFifoOut_V_dout[15:0];

assign trunc_ln700_fu_253_p1 = iph_subSumsFifoOut_V_dout[16:0];

assign validChecksumFifo_V_din = ((add_ln769_reg_2179 == 16'd65535) ? 1'b1 : 1'b0);

assign zext_ln214_30_fu_1125_p1 = add_ln214_62_fu_1120_p2;

assign zext_ln214_31_fu_1142_p1 = add_ln214_64_fu_1137_p2;

assign zext_ln214_32_fu_1159_p1 = add_ln214_66_fu_1154_p2;

assign zext_ln214_33_fu_1176_p1 = add_ln214_68_fu_1171_p2;

assign zext_ln214_34_fu_1193_p1 = add_ln214_70_fu_1188_p2;

assign zext_ln214_35_fu_1210_p1 = add_ln214_72_fu_1205_p2;

assign zext_ln214_36_fu_1227_p1 = add_ln214_74_fu_1222_p2;

assign zext_ln214_37_fu_1244_p1 = add_ln214_76_fu_1239_p2;

assign zext_ln214_38_fu_1261_p1 = add_ln214_78_fu_1256_p2;

assign zext_ln214_39_fu_1278_p1 = add_ln214_80_fu_1273_p2;

assign zext_ln214_40_fu_1295_p1 = add_ln214_82_fu_1290_p2;

assign zext_ln214_41_fu_1312_p1 = add_ln214_84_fu_1307_p2;

assign zext_ln214_42_fu_1329_p1 = add_ln214_86_fu_1324_p2;

assign zext_ln214_43_fu_1346_p1 = add_ln214_88_fu_1341_p2;

assign zext_ln214_44_fu_1363_p1 = add_ln214_90_fu_1358_p2;

assign zext_ln214_45_fu_1607_p1 = add_ln214_92_reg_2101;

assign zext_ln214_46_fu_1610_p1 = add_ln214_94_reg_2107;

assign zext_ln214_47_fu_1613_p1 = add_ln214_96_reg_2113;

assign zext_ln214_48_fu_1616_p1 = add_ln214_98_reg_2119;

assign zext_ln214_49_fu_1619_p1 = add_ln214_100_reg_2125;

assign zext_ln214_50_fu_1622_p1 = add_ln214_102_reg_2131;

assign zext_ln214_51_fu_1625_p1 = add_ln214_104_reg_2137;

assign zext_ln214_52_fu_1628_p1 = add_ln214_106_reg_2143;

assign zext_ln214_53_fu_1659_p1 = add_ln214_108_fu_1654_p2;

assign zext_ln214_54_fu_1691_p1 = add_ln214_110_fu_1686_p2;

assign zext_ln214_55_fu_1723_p1 = add_ln214_112_fu_1718_p2;

assign zext_ln214_56_fu_1755_p1 = add_ln214_114_fu_1750_p2;

assign zext_ln214_57_fu_1800_p1 = add_ln214_116_fu_1795_p2;

assign zext_ln214_58_fu_1817_p1 = add_ln214_118_fu_1812_p2;

assign zext_ln214_60_fu_1095_p1 = tmp_46_reg_1871;

assign zext_ln214_61_fu_1112_p1 = tmp_47_reg_1886;

assign zext_ln214_62_fu_1129_p1 = tmp_48_reg_1901;

assign zext_ln214_63_fu_1146_p1 = tmp_49_reg_1916;

assign zext_ln214_64_fu_1163_p1 = tmp_50_reg_1931;

assign zext_ln214_65_fu_1180_p1 = tmp_51_reg_1946;

assign zext_ln214_66_fu_1197_p1 = tmp_52_reg_1961;

assign zext_ln214_67_fu_1214_p1 = tmp_53_reg_1976;

assign zext_ln214_68_fu_1231_p1 = tmp_54_reg_1991;

assign zext_ln214_69_fu_1248_p1 = tmp_55_reg_2006;

assign zext_ln214_70_fu_1265_p1 = tmp_56_reg_2021;

assign zext_ln214_71_fu_1282_p1 = tmp_57_reg_2036;

assign zext_ln214_72_fu_1299_p1 = tmp_58_reg_2051;

assign zext_ln214_73_fu_1316_p1 = tmp_59_reg_2066;

assign zext_ln214_74_fu_1333_p1 = tmp_60_reg_2081;

assign zext_ln214_75_fu_1350_p1 = tmp_61_reg_2096;

assign zext_ln214_76_fu_1381_p1 = tmp_62_fu_1373_p3;

assign zext_ln214_77_fu_1411_p1 = tmp_63_fu_1403_p3;

assign zext_ln214_78_fu_1441_p1 = tmp_64_fu_1433_p3;

assign zext_ln214_79_fu_1471_p1 = tmp_65_fu_1463_p3;

assign zext_ln214_80_fu_1501_p1 = tmp_66_fu_1493_p3;

assign zext_ln214_81_fu_1531_p1 = tmp_67_fu_1523_p3;

assign zext_ln214_82_fu_1561_p1 = tmp_68_fu_1553_p3;

assign zext_ln214_83_fu_1591_p1 = tmp_69_fu_1583_p3;

assign zext_ln214_84_fu_1645_p1 = tmp_70_fu_1637_p3;

assign zext_ln214_85_fu_1677_p1 = tmp_71_fu_1669_p3;

assign zext_ln214_86_fu_1709_p1 = tmp_72_fu_1701_p3;

assign zext_ln214_87_fu_1741_p1 = tmp_73_fu_1733_p3;

assign zext_ln214_88_fu_1787_p1 = tmp_74_reg_2169;

assign zext_ln214_89_fu_1804_p1 = tmp_75_reg_2174;

assign zext_ln214_90_fu_1841_p1 = tmp_76_fu_1833_p3;

assign zext_ln214_fu_1108_p1 = add_ln214_60_fu_1103_p2;

endmodule //ip_handler_check_ipv

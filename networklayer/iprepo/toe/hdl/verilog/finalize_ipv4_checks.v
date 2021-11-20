// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module finalize_ipv4_checks (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_subChecksumsFi_1_dout,
        txEng_subChecksumsFi_1_empty_n,
        txEng_subChecksumsFi_1_read,
        txEng_tcpChecksumFif_1_din,
        txEng_tcpChecksumFif_1_full_n,
        txEng_tcpChecksumFif_1_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [543:0] txEng_subChecksumsFi_1_dout;
input   txEng_subChecksumsFi_1_empty_n;
output   txEng_subChecksumsFi_1_read;
output  [15:0] txEng_tcpChecksumFif_1_din;
input   txEng_tcpChecksumFif_1_full_n;
output   txEng_tcpChecksumFif_1_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_subChecksumsFi_1_read;
reg txEng_tcpChecksumFif_1_write;

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
reg    txEng_subChecksumsFi_1_blk_n;
wire    ap_block_pp0_stage0;
reg    txEng_tcpChecksumFif_1_blk_n;
reg   [0:0] tmp_reg_1857_pp0_iter1_reg;
reg   [0:0] tmp_reg_1857_pp0_iter2_reg;
reg   [15:0] tmp_s_reg_1861;
wire   [15:0] trunc_ln700_94_fu_267_p1;
reg   [15:0] trunc_ln700_94_reg_1866;
reg   [0:0] tmp_451_reg_1871;
reg   [15:0] tmp_6_reg_1876;
reg   [15:0] tmp_7_reg_1881;
reg   [0:0] tmp_452_reg_1886;
reg   [15:0] tmp_8_reg_1891;
reg   [15:0] tmp_9_reg_1896;
reg   [0:0] tmp_453_reg_1901;
reg   [15:0] tmp_10_reg_1906;
reg   [15:0] tmp_11_reg_1911;
reg   [0:0] tmp_454_reg_1916;
reg   [15:0] tmp_12_reg_1921;
reg   [15:0] tmp_13_reg_1926;
reg   [0:0] tmp_455_reg_1931;
reg   [15:0] tmp_14_reg_1936;
reg   [15:0] tmp_15_reg_1941;
reg   [0:0] tmp_456_reg_1946;
reg   [15:0] tmp_16_reg_1951;
reg   [15:0] tmp_17_reg_1956;
reg   [0:0] tmp_457_reg_1961;
reg   [15:0] tmp_18_reg_1966;
reg   [15:0] tmp_19_reg_1971;
reg   [0:0] tmp_458_reg_1976;
reg   [15:0] tmp_20_reg_1981;
reg   [15:0] tmp_21_reg_1986;
reg   [0:0] tmp_459_reg_1991;
reg   [15:0] tmp_22_reg_1996;
reg   [15:0] tmp_23_reg_2001;
reg   [0:0] tmp_460_reg_2006;
reg   [15:0] tmp_24_reg_2011;
reg   [15:0] tmp_25_reg_2016;
reg   [0:0] tmp_461_reg_2021;
reg   [15:0] tmp_26_reg_2026;
reg   [15:0] tmp_27_reg_2031;
reg   [0:0] tmp_462_reg_2036;
reg   [15:0] tmp_28_reg_2041;
reg   [15:0] tmp_29_reg_2046;
reg   [0:0] tmp_463_reg_2051;
reg   [15:0] tmp_30_reg_2056;
reg   [15:0] tmp_31_reg_2061;
reg   [0:0] tmp_464_reg_2066;
reg   [15:0] tmp_32_reg_2071;
reg   [15:0] tmp_33_reg_2076;
reg   [0:0] tmp_465_reg_2081;
reg   [15:0] tmp_34_reg_2086;
reg   [15:0] tmp_35_reg_2091;
reg   [0:0] tmp_466_reg_2096;
wire   [15:0] add_ln214_227_fu_1391_p2;
reg   [15:0] add_ln214_227_reg_2101;
wire   [15:0] add_ln214_229_fu_1421_p2;
reg   [15:0] add_ln214_229_reg_2107;
wire   [15:0] add_ln214_231_fu_1451_p2;
reg   [15:0] add_ln214_231_reg_2113;
wire   [15:0] add_ln214_233_fu_1481_p2;
reg   [15:0] add_ln214_233_reg_2119;
wire   [15:0] add_ln214_235_fu_1511_p2;
reg   [15:0] add_ln214_235_reg_2125;
wire   [15:0] add_ln214_237_fu_1541_p2;
reg   [15:0] add_ln214_237_reg_2131;
wire   [15:0] add_ln214_239_fu_1571_p2;
reg   [15:0] add_ln214_239_reg_2137;
wire   [15:0] add_ln214_241_fu_1601_p2;
reg   [15:0] add_ln214_241_reg_2143;
wire   [15:0] add_ln214_243_fu_1654_p2;
reg   [15:0] add_ln214_243_reg_2149;
wire   [15:0] add_ln214_245_fu_1686_p2;
reg   [15:0] add_ln214_245_reg_2154;
wire   [15:0] add_ln214_247_fu_1718_p2;
reg   [15:0] add_ln214_247_reg_2159;
wire   [15:0] add_ln214_249_fu_1750_p2;
reg   [15:0] add_ln214_249_reg_2164;
reg   [0:0] tmp_479_reg_2169;
reg   [0:0] tmp_480_reg_2174;
wire   [15:0] add_ln769_fu_1845_p2;
reg   [15:0] add_ln769_reg_2179;
reg    ap_block_pp0_stage0_subdone;
reg    ap_block_pp0_stage0_01001;
wire   [16:0] trunc_ln700_fu_253_p1;
wire   [16:0] tmp_142_i_fu_243_p4;
wire   [16:0] add_ln700_fu_271_p2;
wire   [16:0] tmp_146_i_fu_295_p4;
wire   [16:0] tmp_145_i_fu_285_p4;
wire   [16:0] add_ln700_99_fu_325_p2;
wire   [16:0] tmp_149_i_fu_349_p4;
wire   [16:0] tmp_148_i_fu_339_p4;
wire   [16:0] add_ln700_100_fu_379_p2;
wire   [16:0] tmp_152_i_fu_403_p4;
wire   [16:0] tmp_151_i_fu_393_p4;
wire   [16:0] add_ln700_101_fu_433_p2;
wire   [16:0] tmp_155_i_fu_457_p4;
wire   [16:0] tmp_154_i_fu_447_p4;
wire   [16:0] add_ln700_102_fu_487_p2;
wire   [16:0] tmp_158_i_fu_511_p4;
wire   [16:0] tmp_157_i_fu_501_p4;
wire   [16:0] add_ln700_103_fu_541_p2;
wire   [16:0] tmp_161_i_fu_565_p4;
wire   [16:0] tmp_160_i_fu_555_p4;
wire   [16:0] add_ln700_104_fu_595_p2;
wire   [16:0] tmp_164_i_fu_619_p4;
wire   [16:0] tmp_163_i_fu_609_p4;
wire   [16:0] add_ln700_105_fu_649_p2;
wire   [16:0] tmp_167_i_fu_673_p4;
wire   [16:0] tmp_166_i_fu_663_p4;
wire   [16:0] add_ln700_106_fu_703_p2;
wire   [16:0] tmp_170_i_fu_727_p4;
wire   [16:0] tmp_169_i_fu_717_p4;
wire   [16:0] add_ln700_107_fu_757_p2;
wire   [16:0] tmp_173_i_fu_781_p4;
wire   [16:0] tmp_172_i_fu_771_p4;
wire   [16:0] add_ln700_108_fu_811_p2;
wire   [16:0] tmp_176_i_fu_835_p4;
wire   [16:0] tmp_175_i_fu_825_p4;
wire   [16:0] add_ln700_109_fu_865_p2;
wire   [16:0] tmp_179_i_fu_889_p4;
wire   [16:0] tmp_178_i_fu_879_p4;
wire   [16:0] add_ln700_110_fu_919_p2;
wire   [16:0] tmp_182_i_fu_943_p4;
wire   [16:0] tmp_181_i_fu_933_p4;
wire   [16:0] add_ln700_111_fu_973_p2;
wire   [16:0] tmp_185_i_fu_997_p4;
wire   [16:0] tmp_184_i_fu_987_p4;
wire   [16:0] add_ln700_112_fu_1027_p2;
wire   [16:0] tmp_188_i_fu_1051_p4;
wire   [16:0] tmp_187_i_fu_1041_p4;
wire   [16:0] add_ln700_113_fu_1081_p2;
wire   [15:0] zext_ln214_175_fu_1095_p1;
wire   [15:0] add_ln214_fu_1098_p2;
wire   [15:0] add_ln214_195_fu_1103_p2;
wire   [15:0] zext_ln214_176_fu_1112_p1;
wire   [15:0] add_ln214_196_fu_1115_p2;
wire   [15:0] add_ln214_197_fu_1120_p2;
wire   [15:0] zext_ln214_177_fu_1129_p1;
wire   [15:0] add_ln214_198_fu_1132_p2;
wire   [15:0] add_ln214_199_fu_1137_p2;
wire   [15:0] zext_ln214_178_fu_1146_p1;
wire   [15:0] add_ln214_200_fu_1149_p2;
wire   [15:0] add_ln214_201_fu_1154_p2;
wire   [15:0] zext_ln214_179_fu_1163_p1;
wire   [15:0] add_ln214_202_fu_1166_p2;
wire   [15:0] add_ln214_203_fu_1171_p2;
wire   [15:0] zext_ln214_180_fu_1180_p1;
wire   [15:0] add_ln214_204_fu_1183_p2;
wire   [15:0] add_ln214_205_fu_1188_p2;
wire   [15:0] zext_ln214_181_fu_1197_p1;
wire   [15:0] add_ln214_206_fu_1200_p2;
wire   [15:0] add_ln214_207_fu_1205_p2;
wire   [15:0] zext_ln214_182_fu_1214_p1;
wire   [15:0] add_ln214_208_fu_1217_p2;
wire   [15:0] add_ln214_209_fu_1222_p2;
wire   [15:0] zext_ln214_183_fu_1231_p1;
wire   [15:0] add_ln214_210_fu_1234_p2;
wire   [15:0] add_ln214_211_fu_1239_p2;
wire   [15:0] zext_ln214_184_fu_1248_p1;
wire   [15:0] add_ln214_212_fu_1251_p2;
wire   [15:0] add_ln214_213_fu_1256_p2;
wire   [15:0] zext_ln214_185_fu_1265_p1;
wire   [15:0] add_ln214_214_fu_1268_p2;
wire   [15:0] add_ln214_215_fu_1273_p2;
wire   [15:0] zext_ln214_186_fu_1282_p1;
wire   [15:0] add_ln214_216_fu_1285_p2;
wire   [15:0] add_ln214_217_fu_1290_p2;
wire   [15:0] zext_ln214_187_fu_1299_p1;
wire   [15:0] add_ln214_218_fu_1302_p2;
wire   [15:0] add_ln214_219_fu_1307_p2;
wire   [15:0] zext_ln214_188_fu_1316_p1;
wire   [15:0] add_ln214_220_fu_1319_p2;
wire   [15:0] add_ln214_221_fu_1324_p2;
wire   [15:0] zext_ln214_189_fu_1333_p1;
wire   [15:0] add_ln214_222_fu_1336_p2;
wire   [15:0] add_ln214_223_fu_1341_p2;
wire   [15:0] zext_ln214_190_fu_1350_p1;
wire   [15:0] add_ln214_224_fu_1353_p2;
wire   [15:0] add_ln214_225_fu_1358_p2;
wire   [16:0] zext_ln214_fu_1108_p1;
wire   [16:0] zext_ln214_45_fu_1244_p1;
wire   [16:0] add_ln700_114_fu_1367_p2;
wire   [0:0] tmp_467_fu_1373_p3;
wire   [15:0] zext_ln214_191_fu_1381_p1;
wire   [15:0] add_ln214_226_fu_1385_p2;
wire   [16:0] zext_ln214_38_fu_1125_p1;
wire   [16:0] zext_ln214_46_fu_1261_p1;
wire   [16:0] add_ln700_115_fu_1397_p2;
wire   [0:0] tmp_468_fu_1403_p3;
wire   [15:0] zext_ln214_192_fu_1411_p1;
wire   [15:0] add_ln214_228_fu_1415_p2;
wire   [16:0] zext_ln214_39_fu_1142_p1;
wire   [16:0] zext_ln214_47_fu_1278_p1;
wire   [16:0] add_ln700_116_fu_1427_p2;
wire   [0:0] tmp_469_fu_1433_p3;
wire   [15:0] zext_ln214_193_fu_1441_p1;
wire   [15:0] add_ln214_230_fu_1445_p2;
wire   [16:0] zext_ln214_40_fu_1159_p1;
wire   [16:0] zext_ln214_48_fu_1295_p1;
wire   [16:0] add_ln700_117_fu_1457_p2;
wire   [0:0] tmp_470_fu_1463_p3;
wire   [15:0] zext_ln214_194_fu_1471_p1;
wire   [15:0] add_ln214_232_fu_1475_p2;
wire   [16:0] zext_ln214_41_fu_1176_p1;
wire   [16:0] zext_ln214_49_fu_1312_p1;
wire   [16:0] add_ln700_118_fu_1487_p2;
wire   [0:0] tmp_471_fu_1493_p3;
wire   [15:0] zext_ln214_195_fu_1501_p1;
wire   [15:0] add_ln214_234_fu_1505_p2;
wire   [16:0] zext_ln214_42_fu_1193_p1;
wire   [16:0] zext_ln214_50_fu_1329_p1;
wire   [16:0] add_ln700_119_fu_1517_p2;
wire   [0:0] tmp_472_fu_1523_p3;
wire   [15:0] zext_ln214_196_fu_1531_p1;
wire   [15:0] add_ln214_236_fu_1535_p2;
wire   [16:0] zext_ln214_43_fu_1210_p1;
wire   [16:0] zext_ln214_51_fu_1346_p1;
wire   [16:0] add_ln700_120_fu_1547_p2;
wire   [0:0] tmp_473_fu_1553_p3;
wire   [15:0] zext_ln214_197_fu_1561_p1;
wire   [15:0] add_ln214_238_fu_1565_p2;
wire   [16:0] zext_ln214_44_fu_1227_p1;
wire   [16:0] zext_ln214_52_fu_1363_p1;
wire   [16:0] add_ln700_121_fu_1577_p2;
wire   [0:0] tmp_474_fu_1583_p3;
wire   [15:0] zext_ln214_198_fu_1591_p1;
wire   [15:0] add_ln214_240_fu_1595_p2;
wire   [16:0] zext_ln214_53_fu_1607_p1;
wire   [16:0] zext_ln214_57_fu_1619_p1;
wire   [16:0] add_ln700_122_fu_1631_p2;
wire   [0:0] tmp_475_fu_1637_p3;
wire   [15:0] zext_ln214_199_fu_1645_p1;
wire   [15:0] add_ln214_242_fu_1649_p2;
wire   [16:0] zext_ln214_54_fu_1610_p1;
wire   [16:0] zext_ln214_58_fu_1622_p1;
wire   [16:0] add_ln700_123_fu_1663_p2;
wire   [0:0] tmp_476_fu_1669_p3;
wire   [15:0] zext_ln214_200_fu_1677_p1;
wire   [15:0] add_ln214_244_fu_1681_p2;
wire   [16:0] zext_ln214_55_fu_1613_p1;
wire   [16:0] zext_ln214_59_fu_1625_p1;
wire   [16:0] add_ln700_124_fu_1695_p2;
wire   [0:0] tmp_477_fu_1701_p3;
wire   [15:0] zext_ln214_201_fu_1709_p1;
wire   [15:0] add_ln214_246_fu_1713_p2;
wire   [16:0] zext_ln214_56_fu_1616_p1;
wire   [16:0] zext_ln214_60_fu_1628_p1;
wire   [16:0] add_ln700_125_fu_1727_p2;
wire   [0:0] tmp_478_fu_1733_p3;
wire   [15:0] zext_ln214_202_fu_1741_p1;
wire   [15:0] add_ln214_248_fu_1745_p2;
wire   [16:0] zext_ln214_63_fu_1723_p1;
wire   [16:0] zext_ln214_61_fu_1659_p1;
wire   [16:0] zext_ln214_64_fu_1755_p1;
wire   [16:0] zext_ln214_62_fu_1691_p1;
wire   [16:0] add_ln700_126_fu_1759_p2;
wire   [16:0] add_ln700_127_fu_1765_p2;
wire   [15:0] zext_ln214_203_fu_1787_p1;
wire   [15:0] add_ln214_250_fu_1790_p2;
wire   [15:0] add_ln214_251_fu_1795_p2;
wire   [15:0] zext_ln214_204_fu_1804_p1;
wire   [15:0] add_ln214_252_fu_1807_p2;
wire   [15:0] add_ln214_253_fu_1812_p2;
wire   [16:0] zext_ln214_65_fu_1800_p1;
wire   [16:0] zext_ln214_66_fu_1817_p1;
wire   [16:0] add_ln700_128_fu_1827_p2;
wire   [0:0] tmp_481_fu_1833_p3;
wire   [15:0] add_ln700_129_fu_1821_p2;
wire   [15:0] zext_ln214_205_fu_1841_p1;
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
        add_ln214_227_reg_2101 <= add_ln214_227_fu_1391_p2;
        add_ln214_229_reg_2107 <= add_ln214_229_fu_1421_p2;
        add_ln214_231_reg_2113 <= add_ln214_231_fu_1451_p2;
        add_ln214_233_reg_2119 <= add_ln214_233_fu_1481_p2;
        add_ln214_235_reg_2125 <= add_ln214_235_fu_1511_p2;
        add_ln214_237_reg_2131 <= add_ln214_237_fu_1541_p2;
        add_ln214_239_reg_2137 <= add_ln214_239_fu_1571_p2;
        add_ln214_241_reg_2143 <= add_ln214_241_fu_1601_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter1_reg == 1'd1))) begin
        add_ln214_243_reg_2149 <= add_ln214_243_fu_1654_p2;
        add_ln214_245_reg_2154 <= add_ln214_245_fu_1686_p2;
        add_ln214_247_reg_2159 <= add_ln214_247_fu_1718_p2;
        add_ln214_249_reg_2164 <= add_ln214_249_fu_1750_p2;
        tmp_479_reg_2169 <= add_ln700_126_fu_1759_p2[32'd16];
        tmp_480_reg_2174 <= add_ln700_127_fu_1765_p2[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter2_reg == 1'd1))) begin
        add_ln769_reg_2179 <= add_ln769_fu_1845_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_222_p3 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_10_reg_1906 <= {{txEng_subChecksumsFi_1_dout[338:323]}};
        tmp_11_reg_1911 <= {{txEng_subChecksumsFi_1_dout[66:51]}};
        tmp_12_reg_1921 <= {{txEng_subChecksumsFi_1_dout[355:340]}};
        tmp_13_reg_1926 <= {{txEng_subChecksumsFi_1_dout[83:68]}};
        tmp_14_reg_1936 <= {{txEng_subChecksumsFi_1_dout[372:357]}};
        tmp_15_reg_1941 <= {{txEng_subChecksumsFi_1_dout[100:85]}};
        tmp_16_reg_1951 <= {{txEng_subChecksumsFi_1_dout[389:374]}};
        tmp_17_reg_1956 <= {{txEng_subChecksumsFi_1_dout[117:102]}};
        tmp_18_reg_1966 <= {{txEng_subChecksumsFi_1_dout[406:391]}};
        tmp_19_reg_1971 <= {{txEng_subChecksumsFi_1_dout[134:119]}};
        tmp_20_reg_1981 <= {{txEng_subChecksumsFi_1_dout[423:408]}};
        tmp_21_reg_1986 <= {{txEng_subChecksumsFi_1_dout[151:136]}};
        tmp_22_reg_1996 <= {{txEng_subChecksumsFi_1_dout[440:425]}};
        tmp_23_reg_2001 <= {{txEng_subChecksumsFi_1_dout[168:153]}};
        tmp_24_reg_2011 <= {{txEng_subChecksumsFi_1_dout[457:442]}};
        tmp_25_reg_2016 <= {{txEng_subChecksumsFi_1_dout[185:170]}};
        tmp_26_reg_2026 <= {{txEng_subChecksumsFi_1_dout[474:459]}};
        tmp_27_reg_2031 <= {{txEng_subChecksumsFi_1_dout[202:187]}};
        tmp_28_reg_2041 <= {{txEng_subChecksumsFi_1_dout[491:476]}};
        tmp_29_reg_2046 <= {{txEng_subChecksumsFi_1_dout[219:204]}};
        tmp_30_reg_2056 <= {{txEng_subChecksumsFi_1_dout[508:493]}};
        tmp_31_reg_2061 <= {{txEng_subChecksumsFi_1_dout[236:221]}};
        tmp_32_reg_2071 <= {{txEng_subChecksumsFi_1_dout[525:510]}};
        tmp_33_reg_2076 <= {{txEng_subChecksumsFi_1_dout[253:238]}};
        tmp_34_reg_2086 <= {{txEng_subChecksumsFi_1_dout[542:527]}};
        tmp_35_reg_2091 <= {{txEng_subChecksumsFi_1_dout[270:255]}};
        tmp_451_reg_1871 <= add_ln700_fu_271_p2[32'd16];
        tmp_452_reg_1886 <= add_ln700_99_fu_325_p2[32'd16];
        tmp_453_reg_1901 <= add_ln700_100_fu_379_p2[32'd16];
        tmp_454_reg_1916 <= add_ln700_101_fu_433_p2[32'd16];
        tmp_455_reg_1931 <= add_ln700_102_fu_487_p2[32'd16];
        tmp_456_reg_1946 <= add_ln700_103_fu_541_p2[32'd16];
        tmp_457_reg_1961 <= add_ln700_104_fu_595_p2[32'd16];
        tmp_458_reg_1976 <= add_ln700_105_fu_649_p2[32'd16];
        tmp_459_reg_1991 <= add_ln700_106_fu_703_p2[32'd16];
        tmp_460_reg_2006 <= add_ln700_107_fu_757_p2[32'd16];
        tmp_461_reg_2021 <= add_ln700_108_fu_811_p2[32'd16];
        tmp_462_reg_2036 <= add_ln700_109_fu_865_p2[32'd16];
        tmp_463_reg_2051 <= add_ln700_110_fu_919_p2[32'd16];
        tmp_464_reg_2066 <= add_ln700_111_fu_973_p2[32'd16];
        tmp_465_reg_2081 <= add_ln700_112_fu_1027_p2[32'd16];
        tmp_466_reg_2096 <= add_ln700_113_fu_1081_p2[32'd16];
        tmp_6_reg_1876 <= {{txEng_subChecksumsFi_1_dout[304:289]}};
        tmp_7_reg_1881 <= {{txEng_subChecksumsFi_1_dout[32:17]}};
        tmp_8_reg_1891 <= {{txEng_subChecksumsFi_1_dout[321:306]}};
        tmp_9_reg_1896 <= {{txEng_subChecksumsFi_1_dout[49:34]}};
        tmp_s_reg_1861 <= {{txEng_subChecksumsFi_1_dout[287:272]}};
        trunc_ln700_94_reg_1866 <= trunc_ln700_94_fu_267_p1;
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
        txEng_subChecksumsFi_1_blk_n = txEng_subChecksumsFi_1_empty_n;
    end else begin
        txEng_subChecksumsFi_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_nbreadreq_fu_222_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        txEng_subChecksumsFi_1_read = 1'b1;
    end else begin
        txEng_subChecksumsFi_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1857_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        txEng_tcpChecksumFif_1_blk_n = txEng_tcpChecksumFif_1_full_n;
    end else begin
        txEng_tcpChecksumFif_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_reg_1857_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        txEng_tcpChecksumFif_1_write = 1'b1;
    end else begin
        txEng_tcpChecksumFif_1_write = 1'b0;
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

assign add_ln214_195_fu_1103_p2 = (trunc_ln700_94_reg_1866 + add_ln214_fu_1098_p2);

assign add_ln214_196_fu_1115_p2 = (zext_ln214_176_fu_1112_p1 + tmp_6_reg_1876);

assign add_ln214_197_fu_1120_p2 = (tmp_7_reg_1881 + add_ln214_196_fu_1115_p2);

assign add_ln214_198_fu_1132_p2 = (zext_ln214_177_fu_1129_p1 + tmp_8_reg_1891);

assign add_ln214_199_fu_1137_p2 = (tmp_9_reg_1896 + add_ln214_198_fu_1132_p2);

assign add_ln214_200_fu_1149_p2 = (zext_ln214_178_fu_1146_p1 + tmp_10_reg_1906);

assign add_ln214_201_fu_1154_p2 = (tmp_11_reg_1911 + add_ln214_200_fu_1149_p2);

assign add_ln214_202_fu_1166_p2 = (zext_ln214_179_fu_1163_p1 + tmp_12_reg_1921);

assign add_ln214_203_fu_1171_p2 = (tmp_13_reg_1926 + add_ln214_202_fu_1166_p2);

assign add_ln214_204_fu_1183_p2 = (zext_ln214_180_fu_1180_p1 + tmp_14_reg_1936);

assign add_ln214_205_fu_1188_p2 = (tmp_15_reg_1941 + add_ln214_204_fu_1183_p2);

assign add_ln214_206_fu_1200_p2 = (zext_ln214_181_fu_1197_p1 + tmp_16_reg_1951);

assign add_ln214_207_fu_1205_p2 = (tmp_17_reg_1956 + add_ln214_206_fu_1200_p2);

assign add_ln214_208_fu_1217_p2 = (zext_ln214_182_fu_1214_p1 + tmp_18_reg_1966);

assign add_ln214_209_fu_1222_p2 = (tmp_19_reg_1971 + add_ln214_208_fu_1217_p2);

assign add_ln214_210_fu_1234_p2 = (zext_ln214_183_fu_1231_p1 + tmp_20_reg_1981);

assign add_ln214_211_fu_1239_p2 = (tmp_21_reg_1986 + add_ln214_210_fu_1234_p2);

assign add_ln214_212_fu_1251_p2 = (zext_ln214_184_fu_1248_p1 + tmp_22_reg_1996);

assign add_ln214_213_fu_1256_p2 = (tmp_23_reg_2001 + add_ln214_212_fu_1251_p2);

assign add_ln214_214_fu_1268_p2 = (zext_ln214_185_fu_1265_p1 + tmp_24_reg_2011);

assign add_ln214_215_fu_1273_p2 = (tmp_25_reg_2016 + add_ln214_214_fu_1268_p2);

assign add_ln214_216_fu_1285_p2 = (zext_ln214_186_fu_1282_p1 + tmp_26_reg_2026);

assign add_ln214_217_fu_1290_p2 = (tmp_27_reg_2031 + add_ln214_216_fu_1285_p2);

assign add_ln214_218_fu_1302_p2 = (zext_ln214_187_fu_1299_p1 + tmp_28_reg_2041);

assign add_ln214_219_fu_1307_p2 = (tmp_29_reg_2046 + add_ln214_218_fu_1302_p2);

assign add_ln214_220_fu_1319_p2 = (zext_ln214_188_fu_1316_p1 + tmp_30_reg_2056);

assign add_ln214_221_fu_1324_p2 = (tmp_31_reg_2061 + add_ln214_220_fu_1319_p2);

assign add_ln214_222_fu_1336_p2 = (zext_ln214_189_fu_1333_p1 + tmp_32_reg_2071);

assign add_ln214_223_fu_1341_p2 = (tmp_33_reg_2076 + add_ln214_222_fu_1336_p2);

assign add_ln214_224_fu_1353_p2 = (zext_ln214_190_fu_1350_p1 + tmp_34_reg_2086);

assign add_ln214_225_fu_1358_p2 = (tmp_35_reg_2091 + add_ln214_224_fu_1353_p2);

assign add_ln214_226_fu_1385_p2 = (zext_ln214_191_fu_1381_p1 + add_ln214_211_fu_1239_p2);

assign add_ln214_227_fu_1391_p2 = (add_ln214_195_fu_1103_p2 + add_ln214_226_fu_1385_p2);

assign add_ln214_228_fu_1415_p2 = (zext_ln214_192_fu_1411_p1 + add_ln214_213_fu_1256_p2);

assign add_ln214_229_fu_1421_p2 = (add_ln214_197_fu_1120_p2 + add_ln214_228_fu_1415_p2);

assign add_ln214_230_fu_1445_p2 = (zext_ln214_193_fu_1441_p1 + add_ln214_215_fu_1273_p2);

assign add_ln214_231_fu_1451_p2 = (add_ln214_199_fu_1137_p2 + add_ln214_230_fu_1445_p2);

assign add_ln214_232_fu_1475_p2 = (zext_ln214_194_fu_1471_p1 + add_ln214_217_fu_1290_p2);

assign add_ln214_233_fu_1481_p2 = (add_ln214_201_fu_1154_p2 + add_ln214_232_fu_1475_p2);

assign add_ln214_234_fu_1505_p2 = (zext_ln214_195_fu_1501_p1 + add_ln214_219_fu_1307_p2);

assign add_ln214_235_fu_1511_p2 = (add_ln214_203_fu_1171_p2 + add_ln214_234_fu_1505_p2);

assign add_ln214_236_fu_1535_p2 = (zext_ln214_196_fu_1531_p1 + add_ln214_221_fu_1324_p2);

assign add_ln214_237_fu_1541_p2 = (add_ln214_205_fu_1188_p2 + add_ln214_236_fu_1535_p2);

assign add_ln214_238_fu_1565_p2 = (zext_ln214_197_fu_1561_p1 + add_ln214_223_fu_1341_p2);

assign add_ln214_239_fu_1571_p2 = (add_ln214_207_fu_1205_p2 + add_ln214_238_fu_1565_p2);

assign add_ln214_240_fu_1595_p2 = (zext_ln214_198_fu_1591_p1 + add_ln214_225_fu_1358_p2);

assign add_ln214_241_fu_1601_p2 = (add_ln214_209_fu_1222_p2 + add_ln214_240_fu_1595_p2);

assign add_ln214_242_fu_1649_p2 = (zext_ln214_199_fu_1645_p1 + add_ln214_235_reg_2125);

assign add_ln214_243_fu_1654_p2 = (add_ln214_227_reg_2101 + add_ln214_242_fu_1649_p2);

assign add_ln214_244_fu_1681_p2 = (zext_ln214_200_fu_1677_p1 + add_ln214_237_reg_2131);

assign add_ln214_245_fu_1686_p2 = (add_ln214_229_reg_2107 + add_ln214_244_fu_1681_p2);

assign add_ln214_246_fu_1713_p2 = (zext_ln214_201_fu_1709_p1 + add_ln214_239_reg_2137);

assign add_ln214_247_fu_1718_p2 = (add_ln214_231_reg_2113 + add_ln214_246_fu_1713_p2);

assign add_ln214_248_fu_1745_p2 = (zext_ln214_202_fu_1741_p1 + add_ln214_241_reg_2143);

assign add_ln214_249_fu_1750_p2 = (add_ln214_233_reg_2119 + add_ln214_248_fu_1745_p2);

assign add_ln214_250_fu_1790_p2 = (zext_ln214_203_fu_1787_p1 + add_ln214_243_reg_2149);

assign add_ln214_251_fu_1795_p2 = (add_ln214_247_reg_2159 + add_ln214_250_fu_1790_p2);

assign add_ln214_252_fu_1807_p2 = (zext_ln214_204_fu_1804_p1 + add_ln214_245_reg_2154);

assign add_ln214_253_fu_1812_p2 = (add_ln214_249_reg_2164 + add_ln214_252_fu_1807_p2);

assign add_ln214_fu_1098_p2 = (zext_ln214_175_fu_1095_p1 + tmp_s_reg_1861);

assign add_ln700_100_fu_379_p2 = (tmp_149_i_fu_349_p4 + tmp_148_i_fu_339_p4);

assign add_ln700_101_fu_433_p2 = (tmp_152_i_fu_403_p4 + tmp_151_i_fu_393_p4);

assign add_ln700_102_fu_487_p2 = (tmp_155_i_fu_457_p4 + tmp_154_i_fu_447_p4);

assign add_ln700_103_fu_541_p2 = (tmp_158_i_fu_511_p4 + tmp_157_i_fu_501_p4);

assign add_ln700_104_fu_595_p2 = (tmp_161_i_fu_565_p4 + tmp_160_i_fu_555_p4);

assign add_ln700_105_fu_649_p2 = (tmp_164_i_fu_619_p4 + tmp_163_i_fu_609_p4);

assign add_ln700_106_fu_703_p2 = (tmp_167_i_fu_673_p4 + tmp_166_i_fu_663_p4);

assign add_ln700_107_fu_757_p2 = (tmp_170_i_fu_727_p4 + tmp_169_i_fu_717_p4);

assign add_ln700_108_fu_811_p2 = (tmp_173_i_fu_781_p4 + tmp_172_i_fu_771_p4);

assign add_ln700_109_fu_865_p2 = (tmp_176_i_fu_835_p4 + tmp_175_i_fu_825_p4);

assign add_ln700_110_fu_919_p2 = (tmp_179_i_fu_889_p4 + tmp_178_i_fu_879_p4);

assign add_ln700_111_fu_973_p2 = (tmp_182_i_fu_943_p4 + tmp_181_i_fu_933_p4);

assign add_ln700_112_fu_1027_p2 = (tmp_185_i_fu_997_p4 + tmp_184_i_fu_987_p4);

assign add_ln700_113_fu_1081_p2 = (tmp_188_i_fu_1051_p4 + tmp_187_i_fu_1041_p4);

assign add_ln700_114_fu_1367_p2 = (zext_ln214_fu_1108_p1 + zext_ln214_45_fu_1244_p1);

assign add_ln700_115_fu_1397_p2 = (zext_ln214_38_fu_1125_p1 + zext_ln214_46_fu_1261_p1);

assign add_ln700_116_fu_1427_p2 = (zext_ln214_39_fu_1142_p1 + zext_ln214_47_fu_1278_p1);

assign add_ln700_117_fu_1457_p2 = (zext_ln214_40_fu_1159_p1 + zext_ln214_48_fu_1295_p1);

assign add_ln700_118_fu_1487_p2 = (zext_ln214_41_fu_1176_p1 + zext_ln214_49_fu_1312_p1);

assign add_ln700_119_fu_1517_p2 = (zext_ln214_42_fu_1193_p1 + zext_ln214_50_fu_1329_p1);

assign add_ln700_120_fu_1547_p2 = (zext_ln214_43_fu_1210_p1 + zext_ln214_51_fu_1346_p1);

assign add_ln700_121_fu_1577_p2 = (zext_ln214_44_fu_1227_p1 + zext_ln214_52_fu_1363_p1);

assign add_ln700_122_fu_1631_p2 = (zext_ln214_53_fu_1607_p1 + zext_ln214_57_fu_1619_p1);

assign add_ln700_123_fu_1663_p2 = (zext_ln214_54_fu_1610_p1 + zext_ln214_58_fu_1622_p1);

assign add_ln700_124_fu_1695_p2 = (zext_ln214_55_fu_1613_p1 + zext_ln214_59_fu_1625_p1);

assign add_ln700_125_fu_1727_p2 = (zext_ln214_56_fu_1616_p1 + zext_ln214_60_fu_1628_p1);

assign add_ln700_126_fu_1759_p2 = (zext_ln214_63_fu_1723_p1 + zext_ln214_61_fu_1659_p1);

assign add_ln700_127_fu_1765_p2 = (zext_ln214_64_fu_1755_p1 + zext_ln214_62_fu_1691_p1);

assign add_ln700_128_fu_1827_p2 = (zext_ln214_65_fu_1800_p1 + zext_ln214_66_fu_1817_p1);

assign add_ln700_129_fu_1821_p2 = (add_ln214_253_fu_1812_p2 + add_ln214_251_fu_1795_p2);

assign add_ln700_99_fu_325_p2 = (tmp_146_i_fu_295_p4 + tmp_145_i_fu_285_p4);

assign add_ln700_fu_271_p2 = (trunc_ln700_fu_253_p1 + tmp_142_i_fu_243_p4);

assign add_ln769_fu_1845_p2 = (add_ln700_129_fu_1821_p2 + zext_ln214_205_fu_1841_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (txEng_tcpChecksumFif_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (txEng_subChecksumsFi_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (txEng_tcpChecksumFif_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (txEng_subChecksumsFi_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (txEng_tcpChecksumFif_1_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (txEng_subChecksumsFi_1_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((tmp_nbreadreq_fu_222_p3 == 1'd1) & (txEng_subChecksumsFi_1_empty_n == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter4 = ((tmp_reg_1857_pp0_iter3_reg == 1'd1) & (txEng_tcpChecksumFif_1_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign tmp_142_i_fu_243_p4 = {{txEng_subChecksumsFi_1_dout[288:272]}};

assign tmp_145_i_fu_285_p4 = {{txEng_subChecksumsFi_1_dout[305:289]}};

assign tmp_146_i_fu_295_p4 = {{txEng_subChecksumsFi_1_dout[33:17]}};

assign tmp_148_i_fu_339_p4 = {{txEng_subChecksumsFi_1_dout[322:306]}};

assign tmp_149_i_fu_349_p4 = {{txEng_subChecksumsFi_1_dout[50:34]}};

assign tmp_151_i_fu_393_p4 = {{txEng_subChecksumsFi_1_dout[339:323]}};

assign tmp_152_i_fu_403_p4 = {{txEng_subChecksumsFi_1_dout[67:51]}};

assign tmp_154_i_fu_447_p4 = {{txEng_subChecksumsFi_1_dout[356:340]}};

assign tmp_155_i_fu_457_p4 = {{txEng_subChecksumsFi_1_dout[84:68]}};

assign tmp_157_i_fu_501_p4 = {{txEng_subChecksumsFi_1_dout[373:357]}};

assign tmp_158_i_fu_511_p4 = {{txEng_subChecksumsFi_1_dout[101:85]}};

assign tmp_160_i_fu_555_p4 = {{txEng_subChecksumsFi_1_dout[390:374]}};

assign tmp_161_i_fu_565_p4 = {{txEng_subChecksumsFi_1_dout[118:102]}};

assign tmp_163_i_fu_609_p4 = {{txEng_subChecksumsFi_1_dout[407:391]}};

assign tmp_164_i_fu_619_p4 = {{txEng_subChecksumsFi_1_dout[135:119]}};

assign tmp_166_i_fu_663_p4 = {{txEng_subChecksumsFi_1_dout[424:408]}};

assign tmp_167_i_fu_673_p4 = {{txEng_subChecksumsFi_1_dout[152:136]}};

assign tmp_169_i_fu_717_p4 = {{txEng_subChecksumsFi_1_dout[441:425]}};

assign tmp_170_i_fu_727_p4 = {{txEng_subChecksumsFi_1_dout[169:153]}};

assign tmp_172_i_fu_771_p4 = {{txEng_subChecksumsFi_1_dout[458:442]}};

assign tmp_173_i_fu_781_p4 = {{txEng_subChecksumsFi_1_dout[186:170]}};

assign tmp_175_i_fu_825_p4 = {{txEng_subChecksumsFi_1_dout[475:459]}};

assign tmp_176_i_fu_835_p4 = {{txEng_subChecksumsFi_1_dout[203:187]}};

assign tmp_178_i_fu_879_p4 = {{txEng_subChecksumsFi_1_dout[492:476]}};

assign tmp_179_i_fu_889_p4 = {{txEng_subChecksumsFi_1_dout[220:204]}};

assign tmp_181_i_fu_933_p4 = {{txEng_subChecksumsFi_1_dout[509:493]}};

assign tmp_182_i_fu_943_p4 = {{txEng_subChecksumsFi_1_dout[237:221]}};

assign tmp_184_i_fu_987_p4 = {{txEng_subChecksumsFi_1_dout[526:510]}};

assign tmp_185_i_fu_997_p4 = {{txEng_subChecksumsFi_1_dout[254:238]}};

assign tmp_187_i_fu_1041_p4 = {{txEng_subChecksumsFi_1_dout[543:527]}};

assign tmp_188_i_fu_1051_p4 = {{txEng_subChecksumsFi_1_dout[271:255]}};

assign tmp_467_fu_1373_p3 = add_ln700_114_fu_1367_p2[32'd16];

assign tmp_468_fu_1403_p3 = add_ln700_115_fu_1397_p2[32'd16];

assign tmp_469_fu_1433_p3 = add_ln700_116_fu_1427_p2[32'd16];

assign tmp_470_fu_1463_p3 = add_ln700_117_fu_1457_p2[32'd16];

assign tmp_471_fu_1493_p3 = add_ln700_118_fu_1487_p2[32'd16];

assign tmp_472_fu_1523_p3 = add_ln700_119_fu_1517_p2[32'd16];

assign tmp_473_fu_1553_p3 = add_ln700_120_fu_1547_p2[32'd16];

assign tmp_474_fu_1583_p3 = add_ln700_121_fu_1577_p2[32'd16];

assign tmp_475_fu_1637_p3 = add_ln700_122_fu_1631_p2[32'd16];

assign tmp_476_fu_1669_p3 = add_ln700_123_fu_1663_p2[32'd16];

assign tmp_477_fu_1701_p3 = add_ln700_124_fu_1695_p2[32'd16];

assign tmp_478_fu_1733_p3 = add_ln700_125_fu_1727_p2[32'd16];

assign tmp_481_fu_1833_p3 = add_ln700_128_fu_1827_p2[32'd16];

assign tmp_nbreadreq_fu_222_p3 = txEng_subChecksumsFi_1_empty_n;

assign trunc_ln700_94_fu_267_p1 = txEng_subChecksumsFi_1_dout[15:0];

assign trunc_ln700_fu_253_p1 = txEng_subChecksumsFi_1_dout[16:0];

assign txEng_tcpChecksumFif_1_din = (16'd65535 ^ add_ln769_reg_2179);

assign zext_ln214_175_fu_1095_p1 = tmp_451_reg_1871;

assign zext_ln214_176_fu_1112_p1 = tmp_452_reg_1886;

assign zext_ln214_177_fu_1129_p1 = tmp_453_reg_1901;

assign zext_ln214_178_fu_1146_p1 = tmp_454_reg_1916;

assign zext_ln214_179_fu_1163_p1 = tmp_455_reg_1931;

assign zext_ln214_180_fu_1180_p1 = tmp_456_reg_1946;

assign zext_ln214_181_fu_1197_p1 = tmp_457_reg_1961;

assign zext_ln214_182_fu_1214_p1 = tmp_458_reg_1976;

assign zext_ln214_183_fu_1231_p1 = tmp_459_reg_1991;

assign zext_ln214_184_fu_1248_p1 = tmp_460_reg_2006;

assign zext_ln214_185_fu_1265_p1 = tmp_461_reg_2021;

assign zext_ln214_186_fu_1282_p1 = tmp_462_reg_2036;

assign zext_ln214_187_fu_1299_p1 = tmp_463_reg_2051;

assign zext_ln214_188_fu_1316_p1 = tmp_464_reg_2066;

assign zext_ln214_189_fu_1333_p1 = tmp_465_reg_2081;

assign zext_ln214_190_fu_1350_p1 = tmp_466_reg_2096;

assign zext_ln214_191_fu_1381_p1 = tmp_467_fu_1373_p3;

assign zext_ln214_192_fu_1411_p1 = tmp_468_fu_1403_p3;

assign zext_ln214_193_fu_1441_p1 = tmp_469_fu_1433_p3;

assign zext_ln214_194_fu_1471_p1 = tmp_470_fu_1463_p3;

assign zext_ln214_195_fu_1501_p1 = tmp_471_fu_1493_p3;

assign zext_ln214_196_fu_1531_p1 = tmp_472_fu_1523_p3;

assign zext_ln214_197_fu_1561_p1 = tmp_473_fu_1553_p3;

assign zext_ln214_198_fu_1591_p1 = tmp_474_fu_1583_p3;

assign zext_ln214_199_fu_1645_p1 = tmp_475_fu_1637_p3;

assign zext_ln214_200_fu_1677_p1 = tmp_476_fu_1669_p3;

assign zext_ln214_201_fu_1709_p1 = tmp_477_fu_1701_p3;

assign zext_ln214_202_fu_1741_p1 = tmp_478_fu_1733_p3;

assign zext_ln214_203_fu_1787_p1 = tmp_479_reg_2169;

assign zext_ln214_204_fu_1804_p1 = tmp_480_reg_2174;

assign zext_ln214_205_fu_1841_p1 = tmp_481_fu_1833_p3;

assign zext_ln214_38_fu_1125_p1 = add_ln214_197_fu_1120_p2;

assign zext_ln214_39_fu_1142_p1 = add_ln214_199_fu_1137_p2;

assign zext_ln214_40_fu_1159_p1 = add_ln214_201_fu_1154_p2;

assign zext_ln214_41_fu_1176_p1 = add_ln214_203_fu_1171_p2;

assign zext_ln214_42_fu_1193_p1 = add_ln214_205_fu_1188_p2;

assign zext_ln214_43_fu_1210_p1 = add_ln214_207_fu_1205_p2;

assign zext_ln214_44_fu_1227_p1 = add_ln214_209_fu_1222_p2;

assign zext_ln214_45_fu_1244_p1 = add_ln214_211_fu_1239_p2;

assign zext_ln214_46_fu_1261_p1 = add_ln214_213_fu_1256_p2;

assign zext_ln214_47_fu_1278_p1 = add_ln214_215_fu_1273_p2;

assign zext_ln214_48_fu_1295_p1 = add_ln214_217_fu_1290_p2;

assign zext_ln214_49_fu_1312_p1 = add_ln214_219_fu_1307_p2;

assign zext_ln214_50_fu_1329_p1 = add_ln214_221_fu_1324_p2;

assign zext_ln214_51_fu_1346_p1 = add_ln214_223_fu_1341_p2;

assign zext_ln214_52_fu_1363_p1 = add_ln214_225_fu_1358_p2;

assign zext_ln214_53_fu_1607_p1 = add_ln214_227_reg_2101;

assign zext_ln214_54_fu_1610_p1 = add_ln214_229_reg_2107;

assign zext_ln214_55_fu_1613_p1 = add_ln214_231_reg_2113;

assign zext_ln214_56_fu_1616_p1 = add_ln214_233_reg_2119;

assign zext_ln214_57_fu_1619_p1 = add_ln214_235_reg_2125;

assign zext_ln214_58_fu_1622_p1 = add_ln214_237_reg_2131;

assign zext_ln214_59_fu_1625_p1 = add_ln214_239_reg_2137;

assign zext_ln214_60_fu_1628_p1 = add_ln214_241_reg_2143;

assign zext_ln214_61_fu_1659_p1 = add_ln214_243_fu_1654_p2;

assign zext_ln214_62_fu_1691_p1 = add_ln214_245_fu_1686_p2;

assign zext_ln214_63_fu_1723_p1 = add_ln214_247_fu_1718_p2;

assign zext_ln214_64_fu_1755_p1 = add_ln214_249_fu_1750_p2;

assign zext_ln214_65_fu_1800_p1 = add_ln214_251_fu_1795_p2;

assign zext_ln214_66_fu_1817_p1 = add_ln214_253_fu_1812_p2;

assign zext_ln214_fu_1108_p1 = add_ln214_195_fu_1103_p2;

endmodule //finalize_ipv4_checks

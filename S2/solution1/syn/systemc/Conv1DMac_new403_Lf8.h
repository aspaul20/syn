// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __Conv1DMac_new403_Lf8_H__
#define __Conv1DMac_new403_Lf8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Conv1DMac_new403_Lf8_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 4;
  static const unsigned AddressRange = 4096;
  static const unsigned AddressWidth = 12;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Conv1DMac_new403_Lf8_ram) {
        ram[0] = "0b0000";
        ram[1] = "0b0010";
        for (unsigned i = 2; i < 7 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[7] = "0b1111";
        ram[8] = "0b0000";
        ram[9] = "0b0000";
        ram[10] = "0b0000";
        ram[11] = "0b0000";
        ram[12] = "0b0001";
        ram[13] = "0b0000";
        ram[14] = "0b0000";
        ram[15] = "0b0000";
        ram[16] = "0b0000";
        ram[17] = "0b0011";
        ram[18] = "0b0011";
        ram[19] = "0b1110";
        ram[20] = "0b0000";
        ram[21] = "0b0000";
        ram[22] = "0b0001";
        ram[23] = "0b0010";
        ram[24] = "0b0000";
        ram[25] = "0b0000";
        ram[26] = "0b0001";
        ram[27] = "0b0000";
        ram[28] = "0b0000";
        ram[29] = "0b0000";
        ram[30] = "0b1111";
        ram[31] = "0b0000";
        ram[32] = "0b0000";
        ram[33] = "0b0010";
        ram[34] = "0b0000";
        ram[35] = "0b1110";
        ram[36] = "0b0000";
        ram[37] = "0b1110";
        ram[38] = "0b1101";
        ram[39] = "0b0000";
        ram[40] = "0b0000";
        ram[41] = "0b0000";
        ram[42] = "0b1110";
        ram[43] = "0b0010";
        ram[44] = "0b0001";
        ram[45] = "0b1101";
        for (unsigned i = 46; i < 54 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[54] = "0b0010";
        ram[55] = "0b0000";
        ram[56] = "0b1111";
        ram[57] = "0b0000";
        ram[58] = "0b0000";
        ram[59] = "0b1111";
        ram[60] = "0b0011";
        for (unsigned i = 61; i < 66 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[66] = "0b1111";
        for (unsigned i = 67; i < 72 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[72] = "0b1110";
        ram[73] = "0b1111";
        ram[74] = "0b0000";
        ram[75] = "0b0000";
        ram[76] = "0b0000";
        ram[77] = "0b0010";
        ram[78] = "0b0000";
        ram[79] = "0b0000";
        ram[80] = "0b0010";
        ram[81] = "0b0000";
        ram[82] = "0b0000";
        ram[83] = "0b0011";
        ram[84] = "0b0000";
        ram[85] = "0b0001";
        ram[86] = "0b0000";
        ram[87] = "0b0000";
        ram[88] = "0b0001";
        ram[89] = "0b0000";
        ram[90] = "0b0000";
        ram[91] = "0b0000";
        ram[92] = "0b0011";
        ram[93] = "0b0000";
        ram[94] = "0b0000";
        ram[95] = "0b0001";
        ram[96] = "0b1111";
        ram[97] = "0b0000";
        ram[98] = "0b0000";
        ram[99] = "0b0011";
        ram[100] = "0b0000";
        ram[101] = "0b0000";
        ram[102] = "0b0011";
        ram[103] = "0b0000";
        ram[104] = "0b0011";
        for (unsigned i = 105; i < 118 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[118] = "0b1111";
        ram[119] = "0b1110";
        ram[120] = "0b0000";
        ram[121] = "0b1111";
        ram[122] = "0b0000";
        ram[123] = "0b0000";
        ram[124] = "0b1111";
        ram[125] = "0b0000";
        ram[126] = "0b0000";
        ram[127] = "0b0000";
        ram[128] = "0b1110";
        ram[129] = "0b1111";
        ram[130] = "0b0010";
        for (unsigned i = 131; i < 136 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[136] = "0b0011";
        ram[137] = "0b0000";
        ram[138] = "0b1101";
        ram[139] = "0b1110";
        ram[140] = "0b0001";
        ram[141] = "0b0010";
        ram[142] = "0b0000";
        ram[143] = "0b0000";
        ram[144] = "0b0000";
        ram[145] = "0b1111";
        ram[146] = "0b0000";
        ram[147] = "0b0000";
        ram[148] = "0b0000";
        ram[149] = "0b0000";
        ram[150] = "0b1110";
        ram[151] = "0b0010";
        ram[152] = "0b0000";
        ram[153] = "0b0000";
        ram[154] = "0b1111";
        for (unsigned i = 155; i < 160 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[160] = "0b0010";
        ram[161] = "0b0001";
        ram[162] = "0b0011";
        ram[163] = "0b0010";
        for (unsigned i = 164; i < 170 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[170] = "0b1110";
        ram[171] = "0b0010";
        ram[172] = "0b1111";
        ram[173] = "0b0001";
        ram[174] = "0b0000";
        ram[175] = "0b0000";
        ram[176] = "0b0000";
        ram[177] = "0b0001";
        ram[178] = "0b0000";
        ram[179] = "0b0000";
        ram[180] = "0b0000";
        ram[181] = "0b0000";
        ram[182] = "0b1101";
        ram[183] = "0b0000";
        ram[184] = "0b0000";
        ram[185] = "0b0000";
        ram[186] = "0b1111";
        ram[187] = "0b0011";
        for (unsigned i = 188; i < 194 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[194] = "0b1110";
        for (unsigned i = 195; i < 200 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[200] = "0b1111";
        ram[201] = "0b1100";
        ram[202] = "0b1111";
        ram[203] = "0b0000";
        ram[204] = "0b0000";
        ram[205] = "0b1110";
        ram[206] = "0b0001";
        ram[207] = "0b0000";
        ram[208] = "0b0010";
        for (unsigned i = 209; i < 216 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[216] = "0b1111";
        ram[217] = "0b0000";
        ram[218] = "0b1111";
        ram[219] = "0b0000";
        ram[220] = "0b0000";
        ram[221] = "0b0000";
        ram[222] = "0b0000";
        ram[223] = "0b0001";
        ram[224] = "0b1111";
        ram[225] = "0b0000";
        ram[226] = "0b0000";
        ram[227] = "0b0100";
        ram[228] = "0b0000";
        ram[229] = "0b1110";
        ram[230] = "0b0000";
        ram[231] = "0b0000";
        ram[232] = "0b0001";
        ram[233] = "0b0000";
        ram[234] = "0b0000";
        ram[235] = "0b0000";
        ram[236] = "0b1111";
        ram[237] = "0b0000";
        ram[238] = "0b0011";
        for (unsigned i = 239; i < 246 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[246] = "0b1111";
        ram[247] = "0b0001";
        ram[248] = "0b0000";
        ram[249] = "0b0000";
        ram[250] = "0b0000";
        ram[251] = "0b0000";
        ram[252] = "0b0011";
        for (unsigned i = 253; i < 896 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[896] = "0b1110";
        ram[897] = "0b0010";
        ram[898] = "0b1110";
        ram[899] = "0b0000";
        ram[900] = "0b0000";
        ram[901] = "0b0000";
        ram[902] = "0b0000";
        ram[903] = "0b1110";
        ram[904] = "0b0011";
        ram[905] = "0b0000";
        ram[906] = "0b1111";
        ram[907] = "0b0001";
        ram[908] = "0b1100";
        ram[909] = "0b1101";
        ram[910] = "0b0000";
        ram[911] = "0b0000";
        ram[912] = "0b0001";
        ram[913] = "0b0000";
        ram[914] = "0b0000";
        ram[915] = "0b0010";
        ram[916] = "0b0000";
        ram[917] = "0b0000";
        ram[918] = "0b1111";
        ram[919] = "0b1110";
        ram[920] = "0b0000";
        ram[921] = "0b0000";
        ram[922] = "0b0011";
        ram[923] = "0b0000";
        ram[924] = "0b0000";
        ram[925] = "0b0000";
        ram[926] = "0b0010";
        ram[927] = "0b0000";
        ram[928] = "0b0001";
        ram[929] = "0b0011";
        ram[930] = "0b1101";
        ram[931] = "0b0001";
        ram[932] = "0b0000";
        ram[933] = "0b0001";
        ram[934] = "0b1110";
        ram[935] = "0b0000";
        ram[936] = "0b0000";
        ram[937] = "0b0000";
        ram[938] = "0b1111";
        ram[939] = "0b1101";
        ram[940] = "0b0010";
        ram[941] = "0b1110";
        ram[942] = "0b0000";
        ram[943] = "0b0000";
        ram[944] = "0b0000";
        ram[945] = "0b0001";
        ram[946] = "0b0000";
        ram[947] = "0b0000";
        ram[948] = "0b0000";
        ram[949] = "0b1111";
        ram[950] = "0b0001";
        ram[951] = "0b0000";
        ram[952] = "0b1100";
        ram[953] = "0b0000";
        ram[954] = "0b0111";
        ram[955] = "0b0001";
        ram[956] = "0b0010";
        for (unsigned i = 957; i < 962 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[962] = "0b0010";
        for (unsigned i = 963; i < 969 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[969] = "0b1111";
        ram[970] = "0b0000";
        ram[971] = "0b0000";
        ram[972] = "0b0000";
        ram[973] = "0b0000";
        ram[974] = "0b1111";
        ram[975] = "0b0000";
        ram[976] = "0b1101";
        ram[977] = "0b0000";
        ram[978] = "0b0000";
        ram[979] = "0b1111";
        ram[980] = "0b0000";
        ram[981] = "0b1110";
        ram[982] = "0b0000";
        ram[983] = "0b0000";
        ram[984] = "0b0010";
        ram[985] = "0b0000";
        ram[986] = "0b0001";
        ram[987] = "0b0000";
        ram[988] = "0b1110";
        ram[989] = "0b0000";
        ram[990] = "0b0000";
        ram[991] = "0b1111";
        ram[992] = "0b0000";
        ram[993] = "0b0000";
        ram[994] = "0b0000";
        ram[995] = "0b0010";
        ram[996] = "0b0000";
        ram[997] = "0b1101";
        ram[998] = "0b0000";
        ram[999] = "0b0010";
        ram[1000] = "0b1110";
        ram[1001] = "0b0000";
        ram[1002] = "0b0000";
        ram[1003] = "0b0000";
        ram[1004] = "0b0010";
        for (unsigned i = 1005; i < 1014 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1014] = "0b0010";
        ram[1015] = "0b1101";
        ram[1016] = "0b0000";
        ram[1017] = "0b1111";
        ram[1018] = "0b0000";
        ram[1019] = "0b0000";
        ram[1020] = "0b1111";
        ram[1021] = "0b0000";
        ram[1022] = "0b0101";
        for (unsigned i = 1023; i < 1792 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1792] = "0b1111";
        ram[1793] = "0b0010";
        for (unsigned i = 1794; i < 1799 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1799] = "0b1111";
        ram[1800] = "0b0000";
        ram[1801] = "0b0000";
        ram[1802] = "0b0000";
        ram[1803] = "0b0000";
        ram[1804] = "0b0001";
        ram[1805] = "0b0000";
        ram[1806] = "0b0000";
        ram[1807] = "0b0000";
        ram[1808] = "0b0000";
        ram[1809] = "0b0011";
        ram[1810] = "0b0010";
        ram[1811] = "0b1110";
        ram[1812] = "0b0000";
        ram[1813] = "0b0000";
        ram[1814] = "0b0001";
        ram[1815] = "0b0010";
        ram[1816] = "0b0000";
        ram[1817] = "0b0000";
        ram[1818] = "0b0001";
        ram[1819] = "0b0000";
        ram[1820] = "0b0000";
        ram[1821] = "0b0000";
        ram[1822] = "0b1111";
        ram[1823] = "0b0000";
        ram[1824] = "0b0000";
        ram[1825] = "0b0010";
        ram[1826] = "0b0000";
        ram[1827] = "0b1110";
        ram[1828] = "0b0000";
        ram[1829] = "0b1110";
        ram[1830] = "0b1101";
        ram[1831] = "0b0000";
        ram[1832] = "0b0000";
        ram[1833] = "0b0000";
        ram[1834] = "0b1110";
        ram[1835] = "0b0010";
        ram[1836] = "0b0001";
        ram[1837] = "0b1101";
        for (unsigned i = 1838; i < 1846 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1846] = "0b0010";
        ram[1847] = "0b0000";
        ram[1848] = "0b1111";
        ram[1849] = "0b0000";
        ram[1850] = "0b0001";
        ram[1851] = "0b1111";
        ram[1852] = "0b0011";
        for (unsigned i = 1853; i < 1858 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1858] = "0b1111";
        for (unsigned i = 1859; i < 1864 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1864] = "0b1110";
        ram[1865] = "0b1111";
        ram[1866] = "0b0000";
        ram[1867] = "0b0000";
        ram[1868] = "0b0000";
        ram[1869] = "0b0010";
        ram[1870] = "0b0000";
        ram[1871] = "0b0000";
        ram[1872] = "0b0010";
        ram[1873] = "0b0000";
        ram[1874] = "0b0000";
        ram[1875] = "0b0011";
        ram[1876] = "0b0000";
        ram[1877] = "0b0001";
        ram[1878] = "0b0000";
        ram[1879] = "0b0000";
        ram[1880] = "0b0001";
        ram[1881] = "0b0000";
        ram[1882] = "0b0000";
        ram[1883] = "0b0000";
        ram[1884] = "0b0011";
        ram[1885] = "0b0000";
        ram[1886] = "0b0000";
        ram[1887] = "0b0001";
        ram[1888] = "0b1111";
        ram[1889] = "0b0000";
        ram[1890] = "0b0000";
        ram[1891] = "0b0011";
        ram[1892] = "0b0000";
        ram[1893] = "0b0000";
        ram[1894] = "0b0010";
        ram[1895] = "0b0000";
        ram[1896] = "0b0011";
        for (unsigned i = 1897; i < 1902 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1902] = "0b1111";
        for (unsigned i = 1903; i < 1910 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1910] = "0b1111";
        ram[1911] = "0b1110";
        ram[1912] = "0b0000";
        ram[1913] = "0b1111";
        ram[1914] = "0b0000";
        ram[1915] = "0b0000";
        ram[1916] = "0b1111";
        for (unsigned i = 1917; i < 2048 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2048] = "0b1111";
        ram[2049] = "0b0001";
        for (unsigned i = 2050; i < 2055 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2055] = "0b1111";
        ram[2056] = "0b0000";
        ram[2057] = "0b0000";
        ram[2058] = "0b0000";
        ram[2059] = "0b0000";
        ram[2060] = "0b0001";
        ram[2061] = "0b0000";
        ram[2062] = "0b0000";
        ram[2063] = "0b0000";
        ram[2064] = "0b0000";
        ram[2065] = "0b0011";
        ram[2066] = "0b0010";
        ram[2067] = "0b1110";
        ram[2068] = "0b0000";
        ram[2069] = "0b0000";
        ram[2070] = "0b0001";
        ram[2071] = "0b0010";
        ram[2072] = "0b0000";
        ram[2073] = "0b0000";
        ram[2074] = "0b0001";
        ram[2075] = "0b0000";
        ram[2076] = "0b0000";
        ram[2077] = "0b0000";
        ram[2078] = "0b1111";
        ram[2079] = "0b0000";
        ram[2080] = "0b0000";
        ram[2081] = "0b0010";
        ram[2082] = "0b0000";
        ram[2083] = "0b1110";
        ram[2084] = "0b0000";
        ram[2085] = "0b1110";
        ram[2086] = "0b1101";
        ram[2087] = "0b0000";
        ram[2088] = "0b0000";
        ram[2089] = "0b0000";
        ram[2090] = "0b1110";
        ram[2091] = "0b0010";
        ram[2092] = "0b0001";
        ram[2093] = "0b1101";
        for (unsigned i = 2094; i < 2102 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2102] = "0b0001";
        ram[2103] = "0b0000";
        ram[2104] = "0b1111";
        ram[2105] = "0b0000";
        ram[2106] = "0b0000";
        ram[2107] = "0b1111";
        ram[2108] = "0b0011";
        for (unsigned i = 2109; i < 2114 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2114] = "0b1111";
        for (unsigned i = 2115; i < 2120 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2120] = "0b1110";
        ram[2121] = "0b1111";
        ram[2122] = "0b0000";
        ram[2123] = "0b0000";
        ram[2124] = "0b0000";
        ram[2125] = "0b0010";
        ram[2126] = "0b0000";
        ram[2127] = "0b0000";
        ram[2128] = "0b0010";
        ram[2129] = "0b0000";
        ram[2130] = "0b0000";
        ram[2131] = "0b0011";
        ram[2132] = "0b0000";
        ram[2133] = "0b0001";
        ram[2134] = "0b0000";
        ram[2135] = "0b0000";
        ram[2136] = "0b0001";
        ram[2137] = "0b0000";
        ram[2138] = "0b0000";
        ram[2139] = "0b0000";
        ram[2140] = "0b0011";
        ram[2141] = "0b0000";
        ram[2142] = "0b0000";
        ram[2143] = "0b0001";
        ram[2144] = "0b1111";
        ram[2145] = "0b0000";
        ram[2146] = "0b0000";
        ram[2147] = "0b0011";
        ram[2148] = "0b0000";
        ram[2149] = "0b0000";
        ram[2150] = "0b0010";
        ram[2151] = "0b0000";
        ram[2152] = "0b0011";
        for (unsigned i = 2153; i < 2166 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2166] = "0b1111";
        ram[2167] = "0b1110";
        ram[2168] = "0b0000";
        ram[2169] = "0b1111";
        ram[2170] = "0b0000";
        ram[2171] = "0b0000";
        ram[2172] = "0b1111";
        ram[2173] = "0b0000";
        ram[2174] = "0b1111";
        for (unsigned i = 2175; i < 2560 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2560] = "0b1110";
        ram[2561] = "0b1110";
        ram[2562] = "0b0010";
        for (unsigned i = 2563; i < 2568 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2568] = "0b0101";
        ram[2569] = "0b0000";
        ram[2570] = "0b1100";
        ram[2571] = "0b1101";
        ram[2572] = "0b0001";
        ram[2573] = "0b0010";
        ram[2574] = "0b0000";
        ram[2575] = "0b0000";
        ram[2576] = "0b0001";
        ram[2577] = "0b1110";
        ram[2578] = "0b0001";
        ram[2579] = "0b0000";
        ram[2580] = "0b0000";
        ram[2581] = "0b0000";
        ram[2582] = "0b1101";
        ram[2583] = "0b0011";
        ram[2584] = "0b0000";
        ram[2585] = "0b0000";
        ram[2586] = "0b1110";
        for (unsigned i = 2587; i < 2592 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2592] = "0b0011";
        ram[2593] = "0b0001";
        ram[2594] = "0b0100";
        ram[2595] = "0b0011";
        ram[2596] = "0b0000";
        ram[2597] = "0b0000";
        ram[2598] = "0b1111";
        ram[2599] = "0b0000";
        ram[2600] = "0b0000";
        ram[2601] = "0b0000";
        ram[2602] = "0b1101";
        ram[2603] = "0b0010";
        ram[2604] = "0b1110";
        ram[2605] = "0b0001";
        ram[2606] = "0b0000";
        ram[2607] = "0b0000";
        ram[2608] = "0b0000";
        ram[2609] = "0b0001";
        ram[2610] = "0b0000";
        ram[2611] = "0b0000";
        ram[2612] = "0b0000";
        ram[2613] = "0b0000";
        ram[2614] = "0b1011";
        ram[2615] = "0b0000";
        ram[2616] = "0b0000";
        ram[2617] = "0b0000";
        ram[2618] = "0b1111";
        ram[2619] = "0b0011";
        for (unsigned i = 2620; i < 2626 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2626] = "0b1101";
        for (unsigned i = 2627; i < 2632 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2632] = "0b1111";
        ram[2633] = "0b1010";
        ram[2634] = "0b1110";
        ram[2635] = "0b0000";
        ram[2636] = "0b0000";
        ram[2637] = "0b1101";
        ram[2638] = "0b0001";
        ram[2639] = "0b0000";
        ram[2640] = "0b0010";
        ram[2641] = "0b0000";
        ram[2642] = "0b0000";
        ram[2643] = "0b1111";
        ram[2644] = "0b0000";
        ram[2645] = "0b1111";
        ram[2646] = "0b0000";
        ram[2647] = "0b0000";
        ram[2648] = "0b1111";
        ram[2649] = "0b0000";
        ram[2650] = "0b1111";
        ram[2651] = "0b0000";
        ram[2652] = "0b0000";
        ram[2653] = "0b0000";
        ram[2654] = "0b0000";
        ram[2655] = "0b0001";
        ram[2656] = "0b1111";
        ram[2657] = "0b0000";
        ram[2658] = "0b0000";
        ram[2659] = "0b0101";
        ram[2660] = "0b0000";
        ram[2661] = "0b1101";
        ram[2662] = "0b0000";
        ram[2663] = "0b0000";
        ram[2664] = "0b0001";
        ram[2665] = "0b0000";
        ram[2666] = "0b0000";
        ram[2667] = "0b0000";
        ram[2668] = "0b1110";
        ram[2669] = "0b0000";
        ram[2670] = "0b0101";
        for (unsigned i = 2671; i < 2678 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2678] = "0b1111";
        ram[2679] = "0b0010";
        ram[2680] = "0b0000";
        ram[2681] = "0b0000";
        ram[2682] = "0b0000";
        ram[2683] = "0b0000";
        ram[2684] = "0b0101";
        for (unsigned i = 2685; i < 3328 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3328] = "0b1110";
        ram[3329] = "0b0001";
        ram[3330] = "0b1110";
        ram[3331] = "0b0000";
        ram[3332] = "0b0000";
        ram[3333] = "0b0000";
        ram[3334] = "0b0000";
        ram[3335] = "0b1111";
        ram[3336] = "0b0010";
        ram[3337] = "0b0000";
        ram[3338] = "0b0011";
        ram[3339] = "0b0000";
        ram[3340] = "0b0001";
        ram[3341] = "0b0001";
        ram[3342] = "0b0000";
        ram[3343] = "0b0000";
        ram[3344] = "0b1101";
        ram[3345] = "0b0000";
        ram[3346] = "0b1101";
        ram[3347] = "0b1111";
        ram[3348] = "0b0000";
        ram[3349] = "0b0000";
        ram[3350] = "0b0000";
        ram[3351] = "0b1111";
        ram[3352] = "0b0000";
        ram[3353] = "0b0000";
        ram[3354] = "0b0011";
        ram[3355] = "0b0000";
        ram[3356] = "0b0000";
        ram[3357] = "0b0000";
        ram[3358] = "0b0001";
        ram[3359] = "0b0000";
        ram[3360] = "0b0000";
        ram[3361] = "0b0011";
        ram[3362] = "0b1111";
        ram[3363] = "0b0011";
        ram[3364] = "0b0000";
        ram[3365] = "0b0001";
        ram[3366] = "0b1111";
        ram[3367] = "0b0000";
        ram[3368] = "0b0000";
        ram[3369] = "0b0000";
        ram[3370] = "0b1110";
        ram[3371] = "0b0100";
        ram[3372] = "0b1111";
        ram[3373] = "0b0000";
        ram[3374] = "0b0000";
        ram[3375] = "0b0000";
        ram[3376] = "0b0000";
        ram[3377] = "0b1111";
        ram[3378] = "0b0000";
        ram[3379] = "0b0000";
        ram[3380] = "0b0000";
        ram[3381] = "0b1110";
        ram[3382] = "0b0011";
        ram[3383] = "0b0000";
        ram[3384] = "0b0011";
        ram[3385] = "0b0000";
        ram[3386] = "0b0001";
        ram[3387] = "0b0101";
        ram[3388] = "0b0001";
        for (unsigned i = 3389; i < 3400 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3400] = "0b1111";
        ram[3401] = "0b1111";
        ram[3402] = "0b0010";
        ram[3403] = "0b0000";
        ram[3404] = "0b0000";
        ram[3405] = "0b0001";
        ram[3406] = "0b0010";
        ram[3407] = "0b0000";
        ram[3408] = "0b1110";
        ram[3409] = "0b0000";
        ram[3410] = "0b1111";
        ram[3411] = "0b1110";
        ram[3412] = "0b0000";
        ram[3413] = "0b1110";
        ram[3414] = "0b0000";
        ram[3415] = "0b0000";
        ram[3416] = "0b0001";
        ram[3417] = "0b0000";
        ram[3418] = "0b1110";
        ram[3419] = "0b0000";
        ram[3420] = "0b1110";
        ram[3421] = "0b0000";
        ram[3422] = "0b0000";
        ram[3423] = "0b0010";
        ram[3424] = "0b0011";
        ram[3425] = "0b0000";
        ram[3426] = "0b0000";
        ram[3427] = "0b0000";
        ram[3428] = "0b0000";
        ram[3429] = "0b0001";
        ram[3430] = "0b1101";
        ram[3431] = "0b1110";
        ram[3432] = "0b1111";
        ram[3433] = "0b0000";
        ram[3434] = "0b0000";
        ram[3435] = "0b0000";
        ram[3436] = "0b0001";
        ram[3437] = "0b0000";
        ram[3438] = "0b1111";
        for (unsigned i = 3439; i < 3446 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3446] = "0b0011";
        ram[3447] = "0b1110";
        ram[3448] = "0b0000";
        ram[3449] = "0b0000";
        ram[3450] = "0b0000";
        ram[3451] = "0b0000";
        ram[3452] = "0b0001";
        ram[3453] = "0b0000";
        ram[3454] = "0b0001";
        for (unsigned i = 3455; i < 4096 ; i = i + 1) {
            ram[i] = "0b0000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Conv1DMac_new403_Lf8) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 4096;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Conv1DMac_new403_Lf8_ram* meminst;


SC_CTOR(Conv1DMac_new403_Lf8) {
meminst = new Conv1DMac_new403_Lf8_ram("Conv1DMac_new403_Lf8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Conv1DMac_new403_Lf8() {
    delete meminst;
}


};//endmodule
#endif

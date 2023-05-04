// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __Conv1DMac_new395_xdS_H__
#define __Conv1DMac_new395_xdS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Conv1DMac_new395_xdS_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
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


   SC_CTOR(Conv1DMac_new395_xdS_ram) {
        for (unsigned i = 0; i < 645 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[645] = "0b1111111";
        for (unsigned i = 646; i < 651 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[651] = "0b0000100";
        ram[652] = "0b1111111";
        ram[653] = "0b0000000";
        ram[654] = "0b1111111";
        ram[655] = "0b0000000";
        ram[656] = "0b0000000";
        ram[657] = "0b0101100";
        for (unsigned i = 658; i < 665 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[665] = "0b0000011";
        for (unsigned i = 666; i < 674 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[674] = "0b0000010";
        ram[675] = "0b0000000";
        ram[676] = "0b0000010";
        for (unsigned i = 677; i < 683 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[683] = "0b0000001";
        ram[684] = "0b0000001";
        for (unsigned i = 685; i < 690 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[690] = "0b0000001";
        ram[691] = "0b0101110";
        ram[692] = "0b0000000";
        ram[693] = "0b0000000";
        ram[694] = "0b0000000";
        ram[695] = "0b0000000";
        ram[696] = "0b0000001";
        ram[697] = "0b1111111";
        ram[698] = "0b0000010";
        ram[699] = "0b0000000";
        ram[700] = "0b0000110";
        ram[701] = "0b0000000";
        ram[702] = "0b1111111";
        ram[703] = "0b0000000";
        ram[704] = "0b0000000";
        ram[705] = "0b0000000";
        ram[706] = "0b0000001";
        ram[707] = "0b0000000";
        ram[708] = "0b0000000";
        ram[709] = "0b0000001";
        for (unsigned i = 710; i < 715 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[715] = "0b1111110";
        ram[716] = "0b0000000";
        ram[717] = "0b0000000";
        ram[718] = "0b0000010";
        ram[719] = "0b0000000";
        ram[720] = "0b0000000";
        ram[721] = "0b0001010";
        for (unsigned i = 722; i < 729 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[729] = "0b1111101";
        ram[730] = "0b0000000";
        ram[731] = "0b0000001";
        for (unsigned i = 732; i < 737 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[737] = "0b1111111";
        ram[738] = "0b0000000";
        ram[739] = "0b0000000";
        ram[740] = "0b1111110";
        for (unsigned i = 741; i < 754 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[754] = "0b1111111";
        ram[755] = "0b0001100";
        ram[756] = "0b0000000";
        ram[757] = "0b0000001";
        ram[758] = "0b0000000";
        ram[759] = "0b0000000";
        ram[760] = "0b0000000";
        ram[761] = "0b0000001";
        ram[762] = "0b1111111";
        ram[763] = "0b0000000";
        ram[764] = "0b0000001";
        ram[765] = "0b0000000";
        ram[766] = "0b0000111";
        for (unsigned i = 767; i < 897 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[897] = "0b0000001";
        for (unsigned i = 898; i < 907 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[907] = "0b1111110";
        ram[908] = "0b0011011";
        ram[909] = "0b0000000";
        ram[910] = "0b1111111";
        ram[911] = "0b0000000";
        ram[912] = "0b0000000";
        ram[913] = "0b0000001";
        ram[914] = "0b0000001";
        ram[915] = "0b0000000";
        ram[916] = "0b0000000";
        ram[917] = "0b0000000";
        ram[918] = "0b0000000";
        ram[919] = "0b0000001";
        ram[920] = "0b0000001";
        ram[921] = "0b1111111";
        ram[922] = "0b0000000";
        ram[923] = "0b1111111";
        for (unsigned i = 924; i < 929 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[929] = "0b0011001";
        ram[930] = "0b1111110";
        ram[931] = "0b0000000";
        ram[932] = "0b1111111";
        for (unsigned i = 933; i < 940 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[940] = "0b1111111";
        for (unsigned i = 941; i < 946 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[946] = "0b1111111";
        ram[947] = "0b0000001";
        ram[948] = "0b0000000";
        ram[949] = "0b0000001";
        ram[950] = "0b0000000";
        ram[951] = "0b0000000";
        ram[952] = "0b1111111";
        ram[953] = "0b0011101";
        ram[954] = "0b0000000";
        ram[955] = "0b0000000";
        ram[956] = "0b0000000";
        ram[957] = "0b0000000";
        ram[958] = "0b0000011";
        ram[959] = "0b0000000";
        ram[960] = "0b0000000";
        ram[961] = "0b0000000";
        ram[962] = "0b1111111";
        ram[963] = "0b0000000";
        ram[964] = "0b0000000";
        ram[965] = "0b1111111";
        ram[966] = "0b1111111";
        ram[967] = "0b0000000";
        ram[968] = "0b0000000";
        ram[969] = "0b0000000";
        ram[970] = "0b0000000";
        ram[971] = "0b0000001";
        ram[972] = "0b0000100";
        ram[973] = "0b0000000";
        ram[974] = "0b0000000";
        ram[975] = "0b0000000";
        ram[976] = "0b0000000";
        ram[977] = "0b0000001";
        for (unsigned i = 978; i < 985 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[985] = "0b0000011";
        for (unsigned i = 986; i < 993 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[993] = "0b0001000";
        ram[994] = "0b0000001";
        ram[995] = "0b0000000";
        ram[996] = "0b0000011";
        for (unsigned i = 997; i < 1003 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1003] = "0b1111111";
        ram[1004] = "0b0000001";
        for (unsigned i = 1005; i < 1010 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1010] = "0b0000010";
        for (unsigned i = 1011; i < 1017 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1017] = "0b0000010";
        ram[1018] = "0b1111111";
        ram[1019] = "0b0000000";
        ram[1020] = "0b0000000";
        ram[1021] = "0b0000000";
        ram[1022] = "0b1111101";
        ram[1023] = "0b0000000";
        ram[1024] = "0b0000000";
        ram[1025] = "0b0000000";
        ram[1026] = "0b1111111";
        ram[1027] = "0b0000000";
        ram[1028] = "0b0000000";
        ram[1029] = "0b1111111";
        for (unsigned i = 1030; i < 1035 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1035] = "0b0000001";
        ram[1036] = "0b0000001";
        ram[1037] = "0b0000000";
        ram[1038] = "0b0010010";
        for (unsigned i = 1039; i < 1051 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1051] = "0b0010110";
        for (unsigned i = 1052; i < 1057 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1057] = "0b0000001";
        ram[1058] = "0b0011110";
        for (unsigned i = 1059; i < 1068 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1068] = "0b0010101";
        for (unsigned i = 1069; i < 1074 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1074] = "0b0001101";
        ram[1075] = "0b0000001";
        ram[1076] = "0b0000000";
        ram[1077] = "0b0000000";
        ram[1078] = "0b0000000";
        ram[1079] = "0b0000000";
        ram[1080] = "0b0000001";
        ram[1081] = "0b0000001";
        ram[1082] = "0b0000000";
        ram[1083] = "0b0000000";
        ram[1084] = "0b0000000";
        ram[1085] = "0b0000000";
        ram[1086] = "0b1111111";
        ram[1087] = "0b0000000";
        ram[1088] = "0b0000000";
        ram[1089] = "0b1111111";
        ram[1090] = "0b0000000";
        ram[1091] = "0b0000000";
        ram[1092] = "0b0000000";
        ram[1093] = "0b0000001";
        for (unsigned i = 1094; i < 1099 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1099] = "0b0000001";
        ram[1100] = "0b0000000";
        ram[1101] = "0b0000000";
        ram[1102] = "0b0000100";
        ram[1103] = "0b0000000";
        ram[1104] = "0b0000000";
        ram[1105] = "0b1111111";
        for (unsigned i = 1106; i < 1113 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1113] = "0b1111111";
        ram[1114] = "0b0000000";
        ram[1115] = "0b0000100";
        for (unsigned i = 1116; i < 1121 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1121] = "0b1111111";
        ram[1122] = "0b0000110";
        ram[1123] = "0b0000000";
        ram[1124] = "0b1111111";
        for (unsigned i = 1125; i < 1132 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1132] = "0b0000101";
        for (unsigned i = 1133; i < 1138 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1138] = "0b0000010";
        ram[1139] = "0b1111111";
        ram[1140] = "0b0000000";
        ram[1141] = "0b0000000";
        ram[1142] = "0b0000000";
        ram[1143] = "0b0000000";
        ram[1144] = "0b1111111";
        for (unsigned i = 1145; i < 1150 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1150] = "0b1111111";
        ram[1151] = "0b0000000";
        ram[1152] = "0b0000000";
        ram[1153] = "0b0000000";
        ram[1154] = "0b0001101";
        ram[1155] = "0b0000000";
        ram[1156] = "0b0000000";
        ram[1157] = "0b0001011";
        ram[1158] = "0b0000110";
        ram[1159] = "0b0000000";
        ram[1160] = "0b0000000";
        ram[1161] = "0b0000000";
        ram[1162] = "0b0000000";
        ram[1163] = "0b1111111";
        for (unsigned i = 1164; i < 1177 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1177] = "0b0001011";
        for (unsigned i = 1178; i < 1185 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1185] = "0b1111111";
        ram[1186] = "0b0000000";
        ram[1187] = "0b0000000";
        ram[1188] = "0b0001100";
        for (unsigned i = 1189; i < 1195 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1195] = "0b0001101";
        for (unsigned i = 1196; i < 1203 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1203] = "0b1111111";
        ram[1204] = "0b0000000";
        ram[1205] = "0b0000000";
        ram[1206] = "0b0000000";
        ram[1207] = "0b0000000";
        ram[1208] = "0b1111111";
        ram[1209] = "0b0000000";
        ram[1210] = "0b0001100";
        ram[1211] = "0b0000000";
        ram[1212] = "0b0000000";
        ram[1213] = "0b0000000";
        ram[1214] = "0b0000110";
        ram[1215] = "0b0000000";
        ram[1216] = "0b0000000";
        ram[1217] = "0b0000000";
        ram[1218] = "0b0000011";
        ram[1219] = "0b0000000";
        ram[1220] = "0b0000000";
        ram[1221] = "0b0000011";
        ram[1222] = "0b0000001";
        ram[1223] = "0b0000000";
        ram[1224] = "0b0000000";
        ram[1225] = "0b0000000";
        ram[1226] = "0b0000000";
        ram[1227] = "0b0000010";
        for (unsigned i = 1228; i < 1241 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1241] = "0b0000100";
        for (unsigned i = 1242; i < 1249 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1249] = "0b0000001";
        ram[1250] = "0b0000000";
        ram[1251] = "0b0000000";
        ram[1252] = "0b0001000";
        for (unsigned i = 1253; i < 1259 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1259] = "0b0000011";
        for (unsigned i = 1260; i < 1266 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1266] = "0b0000001";
        for (unsigned i = 1267; i < 1272 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1272] = "0b0000010";
        ram[1273] = "0b0000000";
        ram[1274] = "0b0000001";
        ram[1275] = "0b0000000";
        ram[1276] = "0b0000000";
        ram[1277] = "0b0000000";
        ram[1278] = "0b1111101";
        for (unsigned i = 1279; i < 1291 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1291] = "0b1111110";
        ram[1292] = "0b0011011";
        ram[1293] = "0b0000000";
        ram[1294] = "0b1111111";
        ram[1295] = "0b0000000";
        ram[1296] = "0b0000000";
        ram[1297] = "0b0000001";
        ram[1298] = "0b0000001";
        for (unsigned i = 1299; i < 1305 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1305] = "0b1111111";
        ram[1306] = "0b0000000";
        ram[1307] = "0b1111111";
        for (unsigned i = 1308; i < 1313 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1313] = "0b0011001";
        ram[1314] = "0b1111110";
        ram[1315] = "0b0000000";
        ram[1316] = "0b1111110";
        for (unsigned i = 1317; i < 1324 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1324] = "0b1111111";
        for (unsigned i = 1325; i < 1330 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1330] = "0b1111111";
        ram[1331] = "0b0000001";
        ram[1332] = "0b0000000";
        ram[1333] = "0b0000000";
        ram[1334] = "0b0000000";
        ram[1335] = "0b0000000";
        ram[1336] = "0b1111111";
        ram[1337] = "0b0011101";
        ram[1338] = "0b0000000";
        ram[1339] = "0b0000000";
        ram[1340] = "0b0000000";
        ram[1341] = "0b0000000";
        ram[1342] = "0b0000010";
        ram[1343] = "0b0000000";
        ram[1344] = "0b0000000";
        ram[1345] = "0b0000000";
        ram[1346] = "0b1111111";
        ram[1347] = "0b0000000";
        ram[1348] = "0b0000000";
        ram[1349] = "0b1111111";
        ram[1350] = "0b1111111";
        ram[1351] = "0b0000000";
        ram[1352] = "0b0000000";
        ram[1353] = "0b0000000";
        ram[1354] = "0b0000000";
        ram[1355] = "0b0000001";
        ram[1356] = "0b0000100";
        ram[1357] = "0b0000000";
        ram[1358] = "0b0000000";
        ram[1359] = "0b0000000";
        ram[1360] = "0b0000000";
        ram[1361] = "0b0000001";
        for (unsigned i = 1362; i < 1369 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1369] = "0b0000011";
        for (unsigned i = 1370; i < 1377 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1377] = "0b0001000";
        ram[1378] = "0b0000001";
        ram[1379] = "0b0000000";
        ram[1380] = "0b0000011";
        for (unsigned i = 1381; i < 1387 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1387] = "0b1111111";
        for (unsigned i = 1388; i < 1394 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1394] = "0b0000001";
        ram[1395] = "0b0000001";
        for (unsigned i = 1396; i < 1401 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1401] = "0b0000010";
        ram[1402] = "0b1111111";
        ram[1403] = "0b0000000";
        ram[1404] = "0b0000000";
        ram[1405] = "0b0000000";
        ram[1406] = "0b1111101";
        for (unsigned i = 1407; i < 1537 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1537] = "0b0000101";
        for (unsigned i = 1538; i < 1547 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1547] = "0b1111111";
        for (unsigned i = 1548; i < 1554 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1554] = "0b0000110";
        ram[1555] = "0b0000000";
        ram[1556] = "0b0000000";
        ram[1557] = "0b0000000";
        ram[1558] = "0b0000000";
        ram[1559] = "0b0000111";
        ram[1560] = "0b0000110";
        for (unsigned i = 1561; i < 1582 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1582] = "0b0000011";
        for (unsigned i = 1583; i < 1589 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1589] = "0b0001000";
        for (unsigned i = 1590; i < 1598 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1598] = "0b0000001";
        ram[1599] = "0b0000000";
        ram[1600] = "0b0000000";
        ram[1601] = "0b0000001";
        ram[1602] = "0b0000000";
        ram[1603] = "0b0000000";
        ram[1604] = "0b0000000";
        ram[1605] = "0b1111111";
        for (unsigned i = 1606; i < 1618 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1618] = "0b0000001";
        ram[1619] = "0b0000000";
        ram[1620] = "0b0000000";
        ram[1621] = "0b0000000";
        ram[1622] = "0b0000000";
        ram[1623] = "0b0000001";
        ram[1624] = "0b0000001";
        ram[1625] = "0b0000001";
        for (unsigned i = 1626; i < 1636 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1636] = "0b0000010";
        for (unsigned i = 1637; i < 1646 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1646] = "0b0000001";
        for (unsigned i = 1647; i < 1653 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[1653] = "0b0000010";
        ram[1654] = "0b0000000";
        ram[1655] = "0b0000000";
        ram[1656] = "0b0000000";
        ram[1657] = "0b0000000";
        ram[1658] = "0b1111111";
        ram[1659] = "0b0000000";
        ram[1660] = "0b0000000";
        ram[1661] = "0b0000000";
        ram[1662] = "0b1111111";
        for (unsigned i = 1663; i < 2433 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2433] = "0b0001110";
        ram[2434] = "0b0000000";
        ram[2435] = "0b0000000";
        ram[2436] = "0b0000000";
        ram[2437] = "0b0000001";
        for (unsigned i = 2438; i < 2443 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2443] = "0b1111110";
        ram[2444] = "0b1111111";
        ram[2445] = "0b0000000";
        ram[2446] = "0b1111111";
        ram[2447] = "0b0000000";
        ram[2448] = "0b0000000";
        ram[2449] = "0b0000000";
        ram[2450] = "0b0010000";
        ram[2451] = "0b0000000";
        ram[2452] = "0b0000000";
        ram[2453] = "0b0000000";
        ram[2454] = "0b0000000";
        ram[2455] = "0b0010100";
        ram[2456] = "0b0010001";
        ram[2457] = "0b1111110";
        ram[2458] = "0b0000000";
        ram[2459] = "0b1111111";
        for (unsigned i = 2460; i < 2465 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2465] = "0b1111111";
        ram[2466] = "0b1111111";
        ram[2467] = "0b0000000";
        ram[2468] = "0b1111110";
        for (unsigned i = 2469; i < 2476 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2476] = "0b1111111";
        ram[2477] = "0b0000000";
        ram[2478] = "0b0001001";
        ram[2479] = "0b0000000";
        ram[2480] = "0b0000000";
        ram[2481] = "0b0000000";
        ram[2482] = "0b1111111";
        ram[2483] = "0b1111111";
        ram[2484] = "0b0000000";
        ram[2485] = "0b0010110";
        ram[2486] = "0b0000000";
        ram[2487] = "0b0000000";
        ram[2488] = "0b0000001";
        for (unsigned i = 2489; i < 2494 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2494] = "0b0000011";
        ram[2495] = "0b0000000";
        ram[2496] = "0b0000000";
        ram[2497] = "0b0000011";
        ram[2498] = "0b0000000";
        ram[2499] = "0b0000000";
        ram[2500] = "0b0000000";
        ram[2501] = "0b1111110";
        for (unsigned i = 2502; i < 2510 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2510] = "0b0000001";
        ram[2511] = "0b0000000";
        ram[2512] = "0b0000000";
        ram[2513] = "0b0000000";
        ram[2514] = "0b0000011";
        ram[2515] = "0b0000000";
        ram[2516] = "0b0000000";
        ram[2517] = "0b0000000";
        ram[2518] = "0b0000000";
        ram[2519] = "0b0000100";
        ram[2520] = "0b0000100";
        ram[2521] = "0b0000011";
        ram[2522] = "0b0000000";
        ram[2523] = "0b0000001";
        for (unsigned i = 2524; i < 2530 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2530] = "0b0000001";
        ram[2531] = "0b0000000";
        ram[2532] = "0b0000100";
        for (unsigned i = 2533; i < 2542 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2542] = "0b0000010";
        ram[2543] = "0b0000000";
        ram[2544] = "0b0000000";
        ram[2545] = "0b0000000";
        ram[2546] = "0b0000001";
        ram[2547] = "0b0000000";
        ram[2548] = "0b0000000";
        ram[2549] = "0b0000101";
        ram[2550] = "0b0000000";
        ram[2551] = "0b0000000";
        ram[2552] = "0b0000001";
        ram[2553] = "0b0000000";
        ram[2554] = "0b1111111";
        ram[2555] = "0b0000000";
        ram[2556] = "0b0000000";
        ram[2557] = "0b0000000";
        ram[2558] = "0b1111110";
        for (unsigned i = 2559; i < 2817 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2817] = "0b0010010";
        ram[2818] = "0b0000000";
        ram[2819] = "0b0000000";
        ram[2820] = "0b0000000";
        ram[2821] = "0b0000001";
        for (unsigned i = 2822; i < 2827 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2827] = "0b1111110";
        ram[2828] = "0b1111111";
        ram[2829] = "0b0000000";
        ram[2830] = "0b1111111";
        ram[2831] = "0b0000000";
        ram[2832] = "0b0000000";
        ram[2833] = "0b1111111";
        ram[2834] = "0b0010100";
        ram[2835] = "0b0000000";
        ram[2836] = "0b0000000";
        ram[2837] = "0b0000000";
        ram[2838] = "0b0000000";
        ram[2839] = "0b0011001";
        ram[2840] = "0b0010101";
        ram[2841] = "0b1111110";
        ram[2842] = "0b0000000";
        ram[2843] = "0b1111111";
        for (unsigned i = 2844; i < 2849 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2849] = "0b1111111";
        ram[2850] = "0b1111110";
        ram[2851] = "0b0000000";
        ram[2852] = "0b1111110";
        for (unsigned i = 2853; i < 2860 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2860] = "0b1111111";
        ram[2861] = "0b0000000";
        ram[2862] = "0b0001100";
        ram[2863] = "0b0000000";
        ram[2864] = "0b0000000";
        ram[2865] = "0b0000000";
        ram[2866] = "0b1111111";
        ram[2867] = "0b1111111";
        ram[2868] = "0b0000000";
        ram[2869] = "0b0011011";
        ram[2870] = "0b0000000";
        ram[2871] = "0b0000000";
        ram[2872] = "0b0000001";
        for (unsigned i = 2873; i < 2878 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2878] = "0b0000100";
        ram[2879] = "0b0000000";
        ram[2880] = "0b0000000";
        ram[2881] = "0b0000100";
        ram[2882] = "0b0000000";
        ram[2883] = "0b0000000";
        ram[2884] = "0b0000000";
        ram[2885] = "0b1111101";
        for (unsigned i = 2886; i < 2894 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2894] = "0b0000001";
        ram[2895] = "0b0000000";
        ram[2896] = "0b0000000";
        ram[2897] = "0b0000000";
        ram[2898] = "0b0000100";
        ram[2899] = "0b0000000";
        ram[2900] = "0b0000000";
        ram[2901] = "0b0000000";
        ram[2902] = "0b0000000";
        ram[2903] = "0b0000101";
        ram[2904] = "0b0000101";
        ram[2905] = "0b0000100";
        ram[2906] = "0b0000000";
        ram[2907] = "0b0000001";
        for (unsigned i = 2908; i < 2914 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2914] = "0b0000001";
        ram[2915] = "0b0000000";
        ram[2916] = "0b0000101";
        for (unsigned i = 2917; i < 2923 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[2923] = "0b1111111";
        ram[2924] = "0b0000000";
        ram[2925] = "0b0000000";
        ram[2926] = "0b0000010";
        ram[2927] = "0b0000000";
        ram[2928] = "0b0000000";
        ram[2929] = "0b0000000";
        ram[2930] = "0b0000001";
        ram[2931] = "0b0000000";
        ram[2932] = "0b0000000";
        ram[2933] = "0b0000111";
        ram[2934] = "0b0000000";
        ram[2935] = "0b0000000";
        ram[2936] = "0b0000001";
        ram[2937] = "0b1111111";
        ram[2938] = "0b1111110";
        ram[2939] = "0b0000000";
        ram[2940] = "0b0000000";
        ram[2941] = "0b0000000";
        ram[2942] = "0b1111101";
        for (unsigned i = 2943; i < 3329 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3329] = "0b0010001";
        ram[3330] = "0b0000000";
        ram[3331] = "0b0000000";
        ram[3332] = "0b0000000";
        ram[3333] = "0b0000001";
        for (unsigned i = 3334; i < 3339 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3339] = "0b1111110";
        ram[3340] = "0b0000000";
        ram[3341] = "0b0000000";
        ram[3342] = "0b1111111";
        ram[3343] = "0b0000000";
        ram[3344] = "0b0000000";
        ram[3345] = "0b1111111";
        ram[3346] = "0b0010011";
        ram[3347] = "0b0000000";
        ram[3348] = "0b0000000";
        ram[3349] = "0b0000000";
        ram[3350] = "0b0000000";
        ram[3351] = "0b0011000";
        ram[3352] = "0b0010101";
        ram[3353] = "0b1111110";
        ram[3354] = "0b0000000";
        ram[3355] = "0b1111111";
        for (unsigned i = 3356; i < 3362 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3362] = "0b1111111";
        ram[3363] = "0b0000000";
        ram[3364] = "0b1111110";
        for (unsigned i = 3365; i < 3374 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3374] = "0b0001100";
        ram[3375] = "0b0000000";
        ram[3376] = "0b0000000";
        ram[3377] = "0b0000000";
        ram[3378] = "0b1111111";
        ram[3379] = "0b1111111";
        ram[3380] = "0b0000000";
        ram[3381] = "0b0011011";
        ram[3382] = "0b0000000";
        ram[3383] = "0b0000000";
        ram[3384] = "0b0000001";
        ram[3385] = "0b0000001";
        ram[3386] = "0b0000001";
        ram[3387] = "0b0000000";
        ram[3388] = "0b0000000";
        ram[3389] = "0b0000000";
        ram[3390] = "0b0000100";
        ram[3391] = "0b0000000";
        ram[3392] = "0b0000000";
        ram[3393] = "0b0000011";
        ram[3394] = "0b1111111";
        ram[3395] = "0b0000000";
        ram[3396] = "0b0000000";
        ram[3397] = "0b1111101";
        for (unsigned i = 3398; i < 3406 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3406] = "0b0000001";
        ram[3407] = "0b0000000";
        ram[3408] = "0b0000000";
        ram[3409] = "0b0000000";
        ram[3410] = "0b0000100";
        ram[3411] = "0b0000000";
        ram[3412] = "0b0000000";
        ram[3413] = "0b0000000";
        ram[3414] = "0b0000000";
        ram[3415] = "0b0000101";
        ram[3416] = "0b0000101";
        ram[3417] = "0b0000011";
        ram[3418] = "0b0000000";
        ram[3419] = "0b0000001";
        for (unsigned i = 3420; i < 3426 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3426] = "0b0000001";
        ram[3427] = "0b0000000";
        ram[3428] = "0b0000101";
        for (unsigned i = 3429; i < 3435 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3435] = "0b1111111";
        ram[3436] = "0b0000000";
        ram[3437] = "0b0000000";
        ram[3438] = "0b0000010";
        ram[3439] = "0b0000000";
        ram[3440] = "0b0000000";
        ram[3441] = "0b0000000";
        ram[3442] = "0b0000001";
        ram[3443] = "0b0000000";
        ram[3444] = "0b0000000";
        ram[3445] = "0b0000111";
        ram[3446] = "0b0000000";
        ram[3447] = "0b0000000";
        ram[3448] = "0b0000001";
        ram[3449] = "0b1111111";
        ram[3450] = "0b1111110";
        ram[3451] = "0b0000000";
        ram[3452] = "0b0000000";
        ram[3453] = "0b0000000";
        ram[3454] = "0b1111100";
        ram[3455] = "0b0000000";
        ram[3456] = "0b0000000";
        ram[3457] = "0b0000000";
        ram[3458] = "0b0001100";
        ram[3459] = "0b0000000";
        ram[3460] = "0b0000000";
        ram[3461] = "0b0001011";
        ram[3462] = "0b0000110";
        ram[3463] = "0b0000000";
        ram[3464] = "0b0000000";
        ram[3465] = "0b0000000";
        ram[3466] = "0b0000000";
        ram[3467] = "0b1111111";
        for (unsigned i = 3468; i < 3481 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3481] = "0b0001011";
        ram[3482] = "0b0000000";
        ram[3483] = "0b0000001";
        for (unsigned i = 3484; i < 3490 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3490] = "0b0000001";
        ram[3491] = "0b0000000";
        ram[3492] = "0b0001011";
        for (unsigned i = 3493; i < 3499 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3499] = "0b0001100";
        ram[3500] = "0b0000001";
        for (unsigned i = 3501; i < 3507 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3507] = "0b1111111";
        ram[3508] = "0b0000000";
        ram[3509] = "0b0000000";
        ram[3510] = "0b0000000";
        ram[3511] = "0b0000000";
        ram[3512] = "0b1111111";
        ram[3513] = "0b0000001";
        ram[3514] = "0b0001100";
        ram[3515] = "0b0000000";
        ram[3516] = "0b0000000";
        ram[3517] = "0b0000000";
        ram[3518] = "0b0000110";
        ram[3519] = "0b0000000";
        ram[3520] = "0b0000000";
        ram[3521] = "0b0000000";
        ram[3522] = "0b0000011";
        ram[3523] = "0b0000000";
        ram[3524] = "0b0000000";
        ram[3525] = "0b0000011";
        ram[3526] = "0b0000001";
        ram[3527] = "0b0000000";
        ram[3528] = "0b0000000";
        ram[3529] = "0b0000000";
        ram[3530] = "0b0000000";
        ram[3531] = "0b0000010";
        for (unsigned i = 3532; i < 3545 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3545] = "0b0000100";
        for (unsigned i = 3546; i < 3556 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3556] = "0b0001000";
        for (unsigned i = 3557; i < 3563 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3563] = "0b0000011";
        for (unsigned i = 3564; i < 3570 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3570] = "0b0000001";
        for (unsigned i = 3571; i < 3576 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3576] = "0b0000010";
        ram[3577] = "0b1111111";
        ram[3578] = "0b0000001";
        ram[3579] = "0b0000000";
        ram[3580] = "0b0000000";
        ram[3581] = "0b0000000";
        ram[3582] = "0b1111101";
        for (unsigned i = 3583; i < 3969 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3969] = "0b0001111";
        ram[3970] = "0b0000000";
        ram[3971] = "0b0000000";
        ram[3972] = "0b0000000";
        ram[3973] = "0b0000001";
        for (unsigned i = 3974; i < 3979 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[3979] = "0b1111110";
        ram[3980] = "0b0000000";
        ram[3981] = "0b0000000";
        ram[3982] = "0b1111111";
        ram[3983] = "0b0000000";
        ram[3984] = "0b0000000";
        ram[3985] = "0b0000000";
        ram[3986] = "0b0010001";
        ram[3987] = "0b0000000";
        ram[3988] = "0b0000000";
        ram[3989] = "0b0000000";
        ram[3990] = "0b0000000";
        ram[3991] = "0b0010110";
        ram[3992] = "0b0010011";
        ram[3993] = "0b1111110";
        ram[3994] = "0b0000000";
        ram[3995] = "0b1111111";
        for (unsigned i = 3996; i < 4001 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[4001] = "0b1111111";
        ram[4002] = "0b1111111";
        ram[4003] = "0b0000000";
        ram[4004] = "0b1111110";
        for (unsigned i = 4005; i < 4014 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[4014] = "0b0001010";
        ram[4015] = "0b0000000";
        ram[4016] = "0b0000000";
        ram[4017] = "0b0000000";
        ram[4018] = "0b1111111";
        ram[4019] = "0b1111111";
        ram[4020] = "0b0000000";
        ram[4021] = "0b0011000";
        ram[4022] = "0b0000000";
        ram[4023] = "0b0000000";
        ram[4024] = "0b0000001";
        ram[4025] = "0b0000000";
        ram[4026] = "0b0000001";
        ram[4027] = "0b0000000";
        ram[4028] = "0b0000000";
        ram[4029] = "0b0000000";
        ram[4030] = "0b0000100";
        ram[4031] = "0b0000000";
        ram[4032] = "0b0000000";
        ram[4033] = "0b0000011";
        ram[4034] = "0b1111111";
        ram[4035] = "0b0000000";
        ram[4036] = "0b0000000";
        ram[4037] = "0b1111110";
        for (unsigned i = 4038; i < 4046 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[4046] = "0b0000001";
        ram[4047] = "0b0000000";
        ram[4048] = "0b0000000";
        ram[4049] = "0b0000000";
        ram[4050] = "0b0000100";
        ram[4051] = "0b0000000";
        ram[4052] = "0b0000000";
        ram[4053] = "0b0000000";
        ram[4054] = "0b0000000";
        ram[4055] = "0b0000101";
        ram[4056] = "0b0000100";
        ram[4057] = "0b0000011";
        for (unsigned i = 4058; i < 4066 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[4066] = "0b0000001";
        ram[4067] = "0b0000000";
        ram[4068] = "0b0000100";
        for (unsigned i = 4069; i < 4075 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[4075] = "0b1111111";
        ram[4076] = "0b0000000";
        ram[4077] = "0b0000000";
        ram[4078] = "0b0000010";
        ram[4079] = "0b0000000";
        ram[4080] = "0b0000000";
        ram[4081] = "0b0000000";
        ram[4082] = "0b0000001";
        ram[4083] = "0b0000000";
        ram[4084] = "0b0000000";
        ram[4085] = "0b0000110";
        ram[4086] = "0b0000000";
        ram[4087] = "0b0000000";
        ram[4088] = "0b0000001";
        ram[4089] = "0b1111111";
        ram[4090] = "0b1111110";
        ram[4091] = "0b0000000";
        ram[4092] = "0b0000000";
        ram[4093] = "0b0000000";
        ram[4094] = "0b1111101";
        ram[4095] = "0b0000000";


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


SC_MODULE(Conv1DMac_new395_xdS) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 4096;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Conv1DMac_new395_xdS_ram* meminst;


SC_CTOR(Conv1DMac_new395_xdS) {
meminst = new Conv1DMac_new395_xdS_ram("Conv1DMac_new395_xdS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Conv1DMac_new395_xdS() {
    delete meminst;
}


};//endmodule
#endif
// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __Conv1DMac_new403_OgC_H__
#define __Conv1DMac_new403_OgC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Conv1DMac_new403_OgC_ram : public sc_core::sc_module {

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


   SC_CTOR(Conv1DMac_new403_OgC_ram) {
        for (unsigned i = 0; i < 513 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[513] = "0b0001";
        for (unsigned i = 514; i < 519 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[519] = "0b1111";
        ram[520] = "0b0000";
        ram[521] = "0b0000";
        ram[522] = "0b0000";
        ram[523] = "0b0000";
        ram[524] = "0b0001";
        ram[525] = "0b0000";
        ram[526] = "0b0000";
        ram[527] = "0b0000";
        ram[528] = "0b0000";
        ram[529] = "0b0011";
        ram[530] = "0b0010";
        ram[531] = "0b1111";
        ram[532] = "0b0000";
        ram[533] = "0b0000";
        ram[534] = "0b0001";
        ram[535] = "0b0010";
        ram[536] = "0b0000";
        ram[537] = "0b0000";
        ram[538] = "0b0001";
        ram[539] = "0b0000";
        ram[540] = "0b0000";
        ram[541] = "0b0000";
        ram[542] = "0b1111";
        ram[543] = "0b0000";
        ram[544] = "0b0000";
        ram[545] = "0b0010";
        ram[546] = "0b0000";
        ram[547] = "0b1110";
        ram[548] = "0b0000";
        ram[549] = "0b1110";
        ram[550] = "0b1110";
        ram[551] = "0b0000";
        ram[552] = "0b0000";
        ram[553] = "0b0000";
        ram[554] = "0b1110";
        ram[555] = "0b0010";
        ram[556] = "0b0001";
        ram[557] = "0b1110";
        for (unsigned i = 558; i < 566 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[566] = "0b0001";
        ram[567] = "0b0000";
        ram[568] = "0b1111";
        ram[569] = "0b0000";
        ram[570] = "0b0000";
        ram[571] = "0b0000";
        ram[572] = "0b0010";
        for (unsigned i = 573; i < 578 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[578] = "0b1111";
        for (unsigned i = 579; i < 584 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[584] = "0b1110";
        ram[585] = "0b1111";
        ram[586] = "0b0000";
        ram[587] = "0b0000";
        ram[588] = "0b0000";
        ram[589] = "0b0010";
        ram[590] = "0b0000";
        ram[591] = "0b0000";
        ram[592] = "0b0010";
        ram[593] = "0b0000";
        ram[594] = "0b0000";
        ram[595] = "0b0011";
        ram[596] = "0b0000";
        ram[597] = "0b0001";
        ram[598] = "0b0000";
        ram[599] = "0b0000";
        ram[600] = "0b0001";
        ram[601] = "0b0000";
        ram[602] = "0b0000";
        ram[603] = "0b0000";
        ram[604] = "0b0011";
        ram[605] = "0b0000";
        ram[606] = "0b0000";
        ram[607] = "0b0001";
        ram[608] = "0b1111";
        ram[609] = "0b0000";
        ram[610] = "0b0000";
        ram[611] = "0b0010";
        ram[612] = "0b0000";
        ram[613] = "0b0000";
        ram[614] = "0b0010";
        ram[615] = "0b0000";
        ram[616] = "0b0010";
        for (unsigned i = 617; i < 630 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[630] = "0b1111";
        ram[631] = "0b1110";
        ram[632] = "0b0000";
        ram[633] = "0b1111";
        ram[634] = "0b0000";
        ram[635] = "0b0000";
        ram[636] = "0b1111";
        for (unsigned i = 637; i < 1408 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1408] = "0b0010";
        ram[1409] = "0b0100";
        ram[1410] = "0b1110";
        ram[1411] = "0b0000";
        ram[1412] = "0b0000";
        ram[1413] = "0b0000";
        ram[1414] = "0b0000";
        ram[1415] = "0b1100";
        ram[1416] = "0b0011";
        ram[1417] = "0b0000";
        ram[1418] = "0b1111";
        ram[1419] = "0b1111";
        ram[1420] = "0b1111";
        ram[1421] = "0b0010";
        ram[1422] = "0b0000";
        ram[1423] = "0b0000";
        ram[1424] = "0b1110";
        ram[1425] = "0b1111";
        ram[1426] = "0b1111";
        ram[1427] = "0b0010";
        ram[1428] = "0b0000";
        ram[1429] = "0b0000";
        ram[1430] = "0b0011";
        ram[1431] = "0b0001";
        ram[1432] = "0b0000";
        ram[1433] = "0b0000";
        ram[1434] = "0b0011";
        ram[1435] = "0b0000";
        ram[1436] = "0b0000";
        ram[1437] = "0b0000";
        ram[1438] = "0b1110";
        ram[1439] = "0b0000";
        ram[1440] = "0b0011";
        ram[1441] = "0b1111";
        ram[1442] = "0b1111";
        ram[1443] = "0b0000";
        ram[1444] = "0b0000";
        ram[1445] = "0b1110";
        ram[1446] = "0b0001";
        ram[1447] = "0b0000";
        ram[1448] = "0b0000";
        ram[1449] = "0b0000";
        ram[1450] = "0b0000";
        ram[1451] = "0b0010";
        ram[1452] = "0b0010";
        ram[1453] = "0b0010";
        ram[1454] = "0b0000";
        ram[1455] = "0b0000";
        ram[1456] = "0b0000";
        ram[1457] = "0b0100";
        ram[1458] = "0b0000";
        ram[1459] = "0b0000";
        ram[1460] = "0b0000";
        ram[1461] = "0b0010";
        ram[1462] = "0b0001";
        ram[1463] = "0b0000";
        ram[1464] = "0b1111";
        ram[1465] = "0b0000";
        ram[1466] = "0b0000";
        ram[1467] = "0b0001";
        for (unsigned i = 1468; i < 1474 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1474] = "0b1111";
        for (unsigned i = 1475; i < 1480 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1480] = "0b0011";
        ram[1481] = "0b0001";
        ram[1482] = "0b0011";
        ram[1483] = "0b0000";
        ram[1484] = "0b0000";
        ram[1485] = "0b1101";
        ram[1486] = "0b1101";
        ram[1487] = "0b0000";
        ram[1488] = "0b1111";
        ram[1489] = "0b0000";
        ram[1490] = "0b1101";
        ram[1491] = "0b0000";
        ram[1492] = "0b0000";
        ram[1493] = "0b1110";
        ram[1494] = "0b0000";
        ram[1495] = "0b0000";
        ram[1496] = "0b1101";
        ram[1497] = "0b0000";
        ram[1498] = "0b0010";
        ram[1499] = "0b0000";
        ram[1500] = "0b1111";
        ram[1501] = "0b0000";
        ram[1502] = "0b0000";
        ram[1503] = "0b0011";
        ram[1504] = "0b0001";
        ram[1505] = "0b0000";
        ram[1506] = "0b0000";
        ram[1507] = "0b0001";
        ram[1508] = "0b0000";
        ram[1509] = "0b0010";
        ram[1510] = "0b1110";
        ram[1511] = "0b1111";
        ram[1512] = "0b0000";
        ram[1513] = "0b0000";
        ram[1514] = "0b0000";
        ram[1515] = "0b0000";
        ram[1516] = "0b1110";
        ram[1517] = "0b0000";
        ram[1518] = "0b0011";
        for (unsigned i = 1519; i < 1526 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1526] = "0b1111";
        ram[1527] = "0b0001";
        ram[1528] = "0b0000";
        ram[1529] = "0b1101";
        ram[1530] = "0b0000";
        ram[1531] = "0b0000";
        ram[1532] = "0b1111";
        ram[1533] = "0b0000";
        ram[1534] = "0b0001";
        for (unsigned i = 1535; i < 1920 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1920] = "0b1101";
        ram[1921] = "0b0011";
        ram[1922] = "0b1110";
        ram[1923] = "0b0000";
        ram[1924] = "0b0000";
        ram[1925] = "0b0000";
        ram[1926] = "0b0000";
        ram[1927] = "0b1110";
        ram[1928] = "0b0100";
        ram[1929] = "0b0000";
        ram[1930] = "0b1111";
        ram[1931] = "0b0001";
        ram[1932] = "0b1011";
        ram[1933] = "0b1100";
        ram[1934] = "0b0000";
        ram[1935] = "0b0000";
        ram[1936] = "0b0001";
        ram[1937] = "0b0000";
        ram[1938] = "0b0000";
        ram[1939] = "0b0010";
        ram[1940] = "0b0000";
        ram[1941] = "0b0000";
        ram[1942] = "0b1111";
        ram[1943] = "0b1110";
        ram[1944] = "0b0000";
        ram[1945] = "0b0000";
        ram[1946] = "0b0011";
        ram[1947] = "0b0000";
        ram[1948] = "0b0000";
        ram[1949] = "0b0000";
        ram[1950] = "0b0011";
        ram[1951] = "0b0000";
        ram[1952] = "0b0001";
        ram[1953] = "0b0011";
        ram[1954] = "0b1100";
        ram[1955] = "0b0001";
        ram[1956] = "0b0000";
        ram[1957] = "0b0001";
        ram[1958] = "0b1101";
        ram[1959] = "0b0000";
        ram[1960] = "0b0000";
        ram[1961] = "0b0000";
        ram[1962] = "0b1111";
        ram[1963] = "0b1101";
        ram[1964] = "0b0010";
        ram[1965] = "0b1101";
        ram[1966] = "0b0000";
        ram[1967] = "0b0000";
        ram[1968] = "0b0000";
        ram[1969] = "0b0001";
        ram[1970] = "0b0000";
        ram[1971] = "0b0000";
        ram[1972] = "0b0000";
        ram[1973] = "0b1111";
        ram[1974] = "0b0001";
        ram[1975] = "0b0000";
        ram[1976] = "0b1011";
        ram[1977] = "0b0000";
        ram[1978] = "0b0111";
        ram[1979] = "0b0010";
        ram[1980] = "0b0010";
        for (unsigned i = 1981; i < 1986 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1986] = "0b0011";
        for (unsigned i = 1987; i < 1993 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[1993] = "0b1111";
        ram[1994] = "0b0000";
        ram[1995] = "0b0000";
        ram[1996] = "0b0000";
        ram[1997] = "0b0000";
        ram[1998] = "0b1111";
        ram[1999] = "0b0000";
        ram[2000] = "0b1101";
        ram[2001] = "0b0000";
        ram[2002] = "0b0000";
        ram[2003] = "0b1111";
        ram[2004] = "0b0000";
        ram[2005] = "0b1101";
        ram[2006] = "0b0000";
        ram[2007] = "0b0000";
        ram[2008] = "0b0010";
        ram[2009] = "0b0000";
        ram[2010] = "0b0001";
        ram[2011] = "0b0000";
        ram[2012] = "0b1110";
        ram[2013] = "0b0000";
        ram[2014] = "0b0000";
        ram[2015] = "0b1111";
        ram[2016] = "0b0000";
        ram[2017] = "0b0000";
        ram[2018] = "0b0000";
        ram[2019] = "0b0011";
        ram[2020] = "0b0000";
        ram[2021] = "0b1100";
        ram[2022] = "0b0000";
        ram[2023] = "0b0010";
        ram[2024] = "0b1101";
        ram[2025] = "0b0000";
        ram[2026] = "0b0000";
        ram[2027] = "0b0000";
        ram[2028] = "0b0011";
        for (unsigned i = 2029; i < 2038 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2038] = "0b0010";
        ram[2039] = "0b1100";
        ram[2040] = "0b0000";
        ram[2041] = "0b1111";
        ram[2042] = "0b0000";
        ram[2043] = "0b0000";
        ram[2044] = "0b1111";
        ram[2045] = "0b0000";
        ram[2046] = "0b0110";
        for (unsigned i = 2047; i < 2432 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2432] = "0b1111";
        ram[2433] = "0b0001";
        ram[2434] = "0b1110";
        ram[2435] = "0b0000";
        ram[2436] = "0b0000";
        ram[2437] = "0b0000";
        ram[2438] = "0b0000";
        ram[2439] = "0b1111";
        ram[2440] = "0b0010";
        ram[2441] = "0b0000";
        ram[2442] = "0b0011";
        ram[2443] = "0b0000";
        ram[2444] = "0b0001";
        ram[2445] = "0b0001";
        ram[2446] = "0b0000";
        ram[2447] = "0b0000";
        ram[2448] = "0b1101";
        ram[2449] = "0b0000";
        ram[2450] = "0b1101";
        ram[2451] = "0b1111";
        ram[2452] = "0b0000";
        ram[2453] = "0b0000";
        ram[2454] = "0b0000";
        ram[2455] = "0b1111";
        ram[2456] = "0b0000";
        ram[2457] = "0b0000";
        ram[2458] = "0b0011";
        ram[2459] = "0b0000";
        ram[2460] = "0b0000";
        ram[2461] = "0b0000";
        ram[2462] = "0b0001";
        ram[2463] = "0b0000";
        ram[2464] = "0b0000";
        ram[2465] = "0b0011";
        ram[2466] = "0b1111";
        ram[2467] = "0b0011";
        ram[2468] = "0b0000";
        ram[2469] = "0b0001";
        ram[2470] = "0b1111";
        ram[2471] = "0b0000";
        ram[2472] = "0b0000";
        ram[2473] = "0b0000";
        ram[2474] = "0b1110";
        ram[2475] = "0b0100";
        ram[2476] = "0b1111";
        ram[2477] = "0b0000";
        ram[2478] = "0b0000";
        ram[2479] = "0b0000";
        ram[2480] = "0b0000";
        ram[2481] = "0b1111";
        ram[2482] = "0b0000";
        ram[2483] = "0b0000";
        ram[2484] = "0b0000";
        ram[2485] = "0b1110";
        ram[2486] = "0b0011";
        ram[2487] = "0b0000";
        ram[2488] = "0b0011";
        ram[2489] = "0b0000";
        ram[2490] = "0b0001";
        ram[2491] = "0b0101";
        ram[2492] = "0b0001";
        for (unsigned i = 2493; i < 2504 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2504] = "0b1111";
        ram[2505] = "0b1111";
        ram[2506] = "0b0010";
        ram[2507] = "0b0000";
        ram[2508] = "0b0000";
        ram[2509] = "0b0001";
        ram[2510] = "0b0011";
        ram[2511] = "0b0000";
        ram[2512] = "0b1110";
        ram[2513] = "0b0000";
        ram[2514] = "0b1111";
        ram[2515] = "0b1110";
        ram[2516] = "0b0000";
        ram[2517] = "0b1110";
        ram[2518] = "0b0000";
        ram[2519] = "0b0000";
        ram[2520] = "0b0001";
        ram[2521] = "0b0000";
        ram[2522] = "0b1110";
        ram[2523] = "0b0000";
        ram[2524] = "0b1110";
        ram[2525] = "0b0000";
        ram[2526] = "0b0000";
        ram[2527] = "0b0010";
        ram[2528] = "0b0011";
        ram[2529] = "0b0000";
        ram[2530] = "0b0000";
        ram[2531] = "0b0000";
        ram[2532] = "0b0000";
        ram[2533] = "0b0001";
        ram[2534] = "0b1101";
        ram[2535] = "0b1110";
        ram[2536] = "0b1111";
        ram[2537] = "0b0000";
        ram[2538] = "0b0000";
        ram[2539] = "0b0000";
        ram[2540] = "0b0001";
        ram[2541] = "0b0000";
        ram[2542] = "0b1111";
        for (unsigned i = 2543; i < 2550 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[2550] = "0b0011";
        ram[2551] = "0b1110";
        ram[2552] = "0b0000";
        ram[2553] = "0b0000";
        ram[2554] = "0b0000";
        ram[2555] = "0b0000";
        ram[2556] = "0b0001";
        ram[2557] = "0b0000";
        ram[2558] = "0b0001";
        for (unsigned i = 2559; i < 3072 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3072] = "0b1111";
        ram[3073] = "0b0001";
        for (unsigned i = 3074; i < 3079 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3079] = "0b1111";
        ram[3080] = "0b0000";
        ram[3081] = "0b0000";
        ram[3082] = "0b0000";
        ram[3083] = "0b0000";
        ram[3084] = "0b0001";
        ram[3085] = "0b0000";
        ram[3086] = "0b0000";
        ram[3087] = "0b0000";
        ram[3088] = "0b0000";
        ram[3089] = "0b0011";
        ram[3090] = "0b0010";
        ram[3091] = "0b1110";
        ram[3092] = "0b0000";
        ram[3093] = "0b0000";
        ram[3094] = "0b0001";
        ram[3095] = "0b0010";
        ram[3096] = "0b0000";
        ram[3097] = "0b0000";
        ram[3098] = "0b0001";
        ram[3099] = "0b0000";
        ram[3100] = "0b0000";
        ram[3101] = "0b0000";
        ram[3102] = "0b1111";
        ram[3103] = "0b0000";
        ram[3104] = "0b0000";
        ram[3105] = "0b0010";
        ram[3106] = "0b0000";
        ram[3107] = "0b1110";
        ram[3108] = "0b0000";
        ram[3109] = "0b1110";
        ram[3110] = "0b1101";
        ram[3111] = "0b0000";
        ram[3112] = "0b0000";
        ram[3113] = "0b0000";
        ram[3114] = "0b1110";
        ram[3115] = "0b0010";
        ram[3116] = "0b0001";
        ram[3117] = "0b1101";
        for (unsigned i = 3118; i < 3126 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3126] = "0b0001";
        ram[3127] = "0b0000";
        ram[3128] = "0b1111";
        ram[3129] = "0b0000";
        ram[3130] = "0b0001";
        ram[3131] = "0b1111";
        ram[3132] = "0b0011";
        for (unsigned i = 3133; i < 3138 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3138] = "0b1111";
        for (unsigned i = 3139; i < 3144 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3144] = "0b1110";
        ram[3145] = "0b1111";
        ram[3146] = "0b0000";
        ram[3147] = "0b0000";
        ram[3148] = "0b0000";
        ram[3149] = "0b0010";
        ram[3150] = "0b0000";
        ram[3151] = "0b0000";
        ram[3152] = "0b0010";
        ram[3153] = "0b0000";
        ram[3154] = "0b0000";
        ram[3155] = "0b0011";
        ram[3156] = "0b0000";
        ram[3157] = "0b0001";
        ram[3158] = "0b0000";
        ram[3159] = "0b0000";
        ram[3160] = "0b0001";
        ram[3161] = "0b0000";
        ram[3162] = "0b0000";
        ram[3163] = "0b0000";
        ram[3164] = "0b0011";
        ram[3165] = "0b0000";
        ram[3166] = "0b0000";
        ram[3167] = "0b0001";
        ram[3168] = "0b1111";
        ram[3169] = "0b0000";
        ram[3170] = "0b0000";
        ram[3171] = "0b0011";
        ram[3172] = "0b0000";
        ram[3173] = "0b0000";
        ram[3174] = "0b0010";
        ram[3175] = "0b0000";
        ram[3176] = "0b0011";
        for (unsigned i = 3177; i < 3190 ; i = i + 1) {
            ram[i] = "0b0000";
        }
        ram[3190] = "0b1111";
        ram[3191] = "0b1110";
        ram[3192] = "0b0000";
        ram[3193] = "0b1111";
        ram[3194] = "0b0000";
        ram[3195] = "0b0000";
        ram[3196] = "0b1111";
        for (unsigned i = 3197; i < 4096 ; i = i + 1) {
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


SC_MODULE(Conv1DMac_new403_OgC) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 4096;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Conv1DMac_new403_OgC_ram* meminst;


SC_CTOR(Conv1DMac_new403_OgC) {
meminst = new Conv1DMac_new403_OgC_ram("Conv1DMac_new403_OgC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Conv1DMac_new403_OgC() {
    delete meminst;
}


};//endmodule
#endif

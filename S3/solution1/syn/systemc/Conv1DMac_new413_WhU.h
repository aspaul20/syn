// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __Conv1DMac_new413_WhU_H__
#define __Conv1DMac_new413_WhU_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Conv1DMac_new413_WhU_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 16384;
  static const unsigned AddressWidth = 14;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Conv1DMac_new413_WhU_ram) {
        for (unsigned i = 0; i < 2561 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2561] = "0b00010";
        ram[2562] = "0b00000";
        ram[2563] = "0b11110";
        ram[2564] = "0b11110";
        ram[2565] = "0b00000";
        ram[2566] = "0b11110";
        for (unsigned i = 2567; i < 2573 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2573] = "0b00001";
        for (unsigned i = 2574; i < 2584 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2584] = "0b11111";
        ram[2585] = "0b00010";
        for (unsigned i = 2586; i < 2591 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2591] = "0b11110";
        for (unsigned i = 2592; i < 2600 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2600] = "0b00010";
        ram[2601] = "0b00000";
        ram[2602] = "0b00000";
        ram[2603] = "0b00000";
        ram[2604] = "0b00000";
        ram[2605] = "0b11111";
        ram[2606] = "0b00000";
        ram[2607] = "0b00001";
        ram[2608] = "0b00000";
        ram[2609] = "0b00000";
        ram[2610] = "0b00000";
        ram[2611] = "0b11111";
        for (unsigned i = 2612; i < 2641 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2641] = "0b11111";
        ram[2642] = "0b11111";
        ram[2643] = "0b00000";
        ram[2644] = "0b00000";
        ram[2645] = "0b11111";
        ram[2646] = "0b00000";
        ram[2647] = "0b00000";
        ram[2648] = "0b00000";
        ram[2649] = "0b00000";
        ram[2650] = "0b00010";
        for (unsigned i = 2651; i < 2665 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2665] = "0b00001";
        for (unsigned i = 2666; i < 2673 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2673] = "0b11111";
        ram[2674] = "0b00000";
        ram[2675] = "0b00000";
        ram[2676] = "0b00010";
        ram[2677] = "0b11110";
        ram[2678] = "0b00000";
        ram[2679] = "0b00000";
        ram[2680] = "0b00010";
        ram[2681] = "0b00000";
        ram[2682] = "0b11101";
        ram[2683] = "0b00000";
        ram[2684] = "0b00000";
        ram[2685] = "0b00000";
        ram[2686] = "0b11110";
        for (unsigned i = 2687; i < 2696 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2696] = "0b11111";
        ram[2697] = "0b00000";
        ram[2698] = "0b00000";
        ram[2699] = "0b00000";
        ram[2700] = "0b00001";
        ram[2701] = "0b00000";
        ram[2702] = "0b00000";
        ram[2703] = "0b11111";
        ram[2704] = "0b00000";
        ram[2705] = "0b00000";
        ram[2706] = "0b00000";
        ram[2707] = "0b00000";
        ram[2708] = "0b11110";
        for (unsigned i = 2709; i < 2716 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2716] = "0b00001";
        ram[2717] = "0b00000";
        ram[2718] = "0b11111";
        ram[2719] = "0b11110";
        ram[2720] = "0b00001";
        ram[2721] = "0b00000";
        ram[2722] = "0b00000";
        ram[2723] = "0b00000";
        ram[2724] = "0b00001";
        ram[2725] = "0b00000";
        ram[2726] = "0b00000";
        ram[2727] = "0b00000";
        ram[2728] = "0b00000";
        ram[2729] = "0b11101";
        ram[2730] = "0b00000";
        ram[2731] = "0b00000";
        ram[2732] = "0b00000";
        ram[2733] = "0b00010";
        for (unsigned i = 2734; i < 2742 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2742] = "0b11101";
        for (unsigned i = 2743; i < 2751 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2751] = "0b00001";
        for (unsigned i = 2752; i < 2770 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2770] = "0b11110";
        ram[2771] = "0b00000";
        ram[2772] = "0b00011";
        ram[2773] = "0b00001";
        for (unsigned i = 2774; i < 2786 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2786] = "0b11111";
        ram[2787] = "0b00000";
        ram[2788] = "0b00000";
        ram[2789] = "0b00000";
        ram[2790] = "0b00000";
        ram[2791] = "0b00001";
        ram[2792] = "0b11110";
        ram[2793] = "0b00000";
        ram[2794] = "0b00000";
        ram[2795] = "0b00011";
        ram[2796] = "0b11111";
        ram[2797] = "0b00000";
        ram[2798] = "0b00000";
        ram[2799] = "0b00001";
        ram[2800] = "0b00000";
        ram[2801] = "0b11110";
        ram[2802] = "0b00010";
        ram[2803] = "0b00000";
        ram[2804] = "0b11101";
        for (unsigned i = 2805; i < 2811 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2811] = "0b00010";
        ram[2812] = "0b00000";
        ram[2813] = "0b00000";
        ram[2814] = "0b00000";
        ram[2815] = "0b00001";
        ram[2816] = "0b00000";
        ram[2817] = "0b11110";
        ram[2818] = "0b00000";
        ram[2819] = "0b00111";
        ram[2820] = "0b00000";
        ram[2821] = "0b00000";
        ram[2822] = "0b00100";
        for (unsigned i = 2823; i < 2829 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2829] = "0b11110";
        ram[2830] = "0b00000";
        ram[2831] = "0b11101";
        for (unsigned i = 2832; i < 2840 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2840] = "0b00010";
        ram[2841] = "0b11111";
        for (unsigned i = 2842; i < 2847 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2847] = "0b11100";
        for (unsigned i = 2848; i < 2853 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2853] = "0b11100";
        ram[2854] = "0b00000";
        ram[2855] = "0b00000";
        ram[2856] = "0b00001";
        ram[2857] = "0b00000";
        ram[2858] = "0b00000";
        ram[2859] = "0b00000";
        ram[2860] = "0b00000";
        ram[2861] = "0b11110";
        ram[2862] = "0b00000";
        ram[2863] = "0b00010";
        ram[2864] = "0b00000";
        ram[2865] = "0b00000";
        ram[2866] = "0b00000";
        ram[2867] = "0b01000";
        for (unsigned i = 2868; i < 2894 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2894] = "0b00111";
        ram[2895] = "0b00000";
        ram[2896] = "0b00000";
        ram[2897] = "0b11100";
        ram[2898] = "0b00011";
        ram[2899] = "0b00000";
        ram[2900] = "0b00000";
        ram[2901] = "0b00001";
        for (unsigned i = 2902; i < 2917 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2917] = "0b11110";
        ram[2918] = "0b00000";
        ram[2919] = "0b00000";
        ram[2920] = "0b00000";
        ram[2921] = "0b00100";
        ram[2922] = "0b00000";
        ram[2923] = "0b00000";
        ram[2924] = "0b00000";
        ram[2925] = "0b00000";
        ram[2926] = "0b00001";
        ram[2927] = "0b00000";
        ram[2928] = "0b00000";
        ram[2929] = "0b00010";
        ram[2930] = "0b00000";
        ram[2931] = "0b00000";
        ram[2932] = "0b11101";
        ram[2933] = "0b00001";
        ram[2934] = "0b00000";
        ram[2935] = "0b00000";
        ram[2936] = "0b11011";
        ram[2937] = "0b00000";
        ram[2938] = "0b11110";
        ram[2939] = "0b00000";
        ram[2940] = "0b00000";
        ram[2941] = "0b00000";
        ram[2942] = "0b00110";
        for (unsigned i = 2943; i < 2952 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2952] = "0b01000";
        ram[2953] = "0b00000";
        ram[2954] = "0b00000";
        ram[2955] = "0b00000";
        ram[2956] = "0b00010";
        ram[2957] = "0b00000";
        ram[2958] = "0b00000";
        ram[2959] = "0b11100";
        ram[2960] = "0b00000";
        ram[2961] = "0b00000";
        ram[2962] = "0b00000";
        ram[2963] = "0b00000";
        ram[2964] = "0b11101";
        ram[2965] = "0b00000";
        ram[2966] = "0b00000";
        ram[2967] = "0b00000";
        ram[2968] = "0b00000";
        ram[2969] = "0b00001";
        ram[2970] = "0b00111";
        ram[2971] = "0b00000";
        ram[2972] = "0b00000";
        ram[2973] = "0b11110";
        ram[2974] = "0b00000";
        ram[2975] = "0b11110";
        for (unsigned i = 2976; i < 2989 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2989] = "0b00001";
        for (unsigned i = 2990; i < 2998 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[2998] = "0b11111";
        for (unsigned i = 2999; i < 3004 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[3004] = "0b00010";
        ram[3005] = "0b00000";
        ram[3006] = "0b00000";
        ram[3007] = "0b11111";
        for (unsigned i = 3008; i < 3015 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[3015] = "0b11101";
        ram[3016] = "0b01001";
        for (unsigned i = 3017; i < 3026 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[3026] = "0b11111";
        ram[3027] = "0b00000";
        ram[3028] = "0b11110";
        ram[3029] = "0b11111";
        for (unsigned i = 3030; i < 3042 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[3042] = "0b00111";
        ram[3043] = "0b00000";
        ram[3044] = "0b00000";
        ram[3045] = "0b00000";
        ram[3046] = "0b00000";
        ram[3047] = "0b11011";
        ram[3048] = "0b00100";
        ram[3049] = "0b00000";
        ram[3050] = "0b00000";
        ram[3051] = "0b00001";
        ram[3052] = "0b00100";
        ram[3053] = "0b00000";
        ram[3054] = "0b00000";
        ram[3055] = "0b11011";
        ram[3056] = "0b00000";
        ram[3057] = "0b00001";
        ram[3058] = "0b11111";
        ram[3059] = "0b00000";
        ram[3060] = "0b11111";
        for (unsigned i = 3061; i < 3067 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[3067] = "0b11001";
        ram[3068] = "0b00000";
        ram[3069] = "0b00000";
        ram[3070] = "0b00000";
        ram[3071] = "0b11101";
        for (unsigned i = 3072; i < 7169 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7169] = "0b11111";
        ram[7170] = "0b00000";
        ram[7171] = "0b00001";
        for (unsigned i = 7172; i < 7181 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7181] = "0b11111";
        for (unsigned i = 7182; i < 7192 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7192] = "0b00010";
        for (unsigned i = 7193; i < 7199 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7199] = "0b00011";
        for (unsigned i = 7200; i < 7205 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7205] = "0b00001";
        for (unsigned i = 7206; i < 7213 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7213] = "0b00001";
        for (unsigned i = 7214; i < 7219 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7219] = "0b00001";
        for (unsigned i = 7220; i < 7246 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7246] = "0b00001";
        ram[7247] = "0b00000";
        ram[7248] = "0b00000";
        ram[7249] = "0b00000";
        ram[7250] = "0b00001";
        ram[7251] = "0b00000";
        ram[7252] = "0b00000";
        ram[7253] = "0b11111";
        for (unsigned i = 7254; i < 7269 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7269] = "0b11111";
        ram[7270] = "0b00000";
        ram[7271] = "0b00000";
        ram[7272] = "0b00000";
        ram[7273] = "0b00010";
        ram[7274] = "0b00000";
        ram[7275] = "0b00000";
        ram[7276] = "0b00000";
        ram[7277] = "0b00000";
        ram[7278] = "0b00011";
        ram[7279] = "0b00000";
        ram[7280] = "0b00000";
        ram[7281] = "0b00011";
        ram[7282] = "0b00000";
        ram[7283] = "0b00000";
        ram[7284] = "0b11111";
        ram[7285] = "0b00011";
        ram[7286] = "0b00000";
        ram[7287] = "0b00000";
        ram[7288] = "0b11111";
        for (unsigned i = 7289; i < 7294 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7294] = "0b00001";
        for (unsigned i = 7295; i < 7304 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7304] = "0b00010";
        ram[7305] = "0b00000";
        ram[7306] = "0b00000";
        ram[7307] = "0b00000";
        ram[7308] = "0b11110";
        ram[7309] = "0b00000";
        ram[7310] = "0b00000";
        ram[7311] = "0b00010";
        ram[7312] = "0b00000";
        ram[7313] = "0b00000";
        ram[7314] = "0b00000";
        ram[7315] = "0b00000";
        ram[7316] = "0b00001";
        for (unsigned i = 7317; i < 7322 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7322] = "0b00001";
        for (unsigned i = 7323; i < 7328 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7328] = "0b00010";
        ram[7329] = "0b00000";
        ram[7330] = "0b00000";
        ram[7331] = "0b00000";
        ram[7332] = "0b11110";
        for (unsigned i = 7333; i < 7341 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7341] = "0b00001";
        for (unsigned i = 7342; i < 7350 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7350] = "0b00011";
        for (unsigned i = 7351; i < 7359 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7359] = "0b11111";
        for (unsigned i = 7360; i < 7367 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7367] = "0b11110";
        ram[7368] = "0b00001";
        for (unsigned i = 7369; i < 7380 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7380] = "0b11111";
        for (unsigned i = 7381; i < 7394 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7394] = "0b00001";
        ram[7395] = "0b00000";
        ram[7396] = "0b00000";
        ram[7397] = "0b00000";
        ram[7398] = "0b00000";
        ram[7399] = "0b11111";
        ram[7400] = "0b00001";
        ram[7401] = "0b00000";
        ram[7402] = "0b00000";
        ram[7403] = "0b11110";
        ram[7404] = "0b00000";
        ram[7405] = "0b00000";
        ram[7406] = "0b00000";
        ram[7407] = "0b11111";
        ram[7408] = "0b00000";
        ram[7409] = "0b00001";
        ram[7410] = "0b11111";
        ram[7411] = "0b00000";
        ram[7412] = "0b00001";
        for (unsigned i = 7413; i < 7419 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[7419] = "0b11110";
        for (unsigned i = 7420; i < 10241 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10241] = "0b11101";
        ram[10242] = "0b00000";
        ram[10243] = "0b01000";
        ram[10244] = "0b00010";
        ram[10245] = "0b00000";
        ram[10246] = "0b00011";
        for (unsigned i = 10247; i < 10253 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10253] = "0b11110";
        ram[10254] = "0b00000";
        ram[10255] = "0b11110";
        for (unsigned i = 10256; i < 10264 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10264] = "0b00010";
        ram[10265] = "0b11111";
        for (unsigned i = 10266; i < 10271 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10271] = "0b11110";
        for (unsigned i = 10272; i < 10277 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10277] = "0b11100";
        ram[10278] = "0b00000";
        ram[10279] = "0b00000";
        ram[10280] = "0b11111";
        ram[10281] = "0b00000";
        ram[10282] = "0b00000";
        ram[10283] = "0b00000";
        ram[10284] = "0b00000";
        ram[10285] = "0b11110";
        ram[10286] = "0b00000";
        ram[10287] = "0b00001";
        ram[10288] = "0b00000";
        ram[10289] = "0b00000";
        ram[10290] = "0b00000";
        ram[10291] = "0b01000";
        for (unsigned i = 10292; i < 10318 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10318] = "0b00110";
        ram[10319] = "0b00000";
        ram[10320] = "0b00000";
        ram[10321] = "0b11101";
        ram[10322] = "0b00100";
        ram[10323] = "0b00000";
        ram[10324] = "0b00000";
        ram[10325] = "0b00001";
        for (unsigned i = 10326; i < 10341 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10341] = "0b11110";
        ram[10342] = "0b00000";
        ram[10343] = "0b00000";
        ram[10344] = "0b00000";
        ram[10345] = "0b00011";
        ram[10346] = "0b00000";
        ram[10347] = "0b00000";
        ram[10348] = "0b00000";
        ram[10349] = "0b00000";
        ram[10350] = "0b00001";
        ram[10351] = "0b00000";
        ram[10352] = "0b00000";
        ram[10353] = "0b00010";
        ram[10354] = "0b00000";
        ram[10355] = "0b00000";
        ram[10356] = "0b11101";
        ram[10357] = "0b00010";
        ram[10358] = "0b00000";
        ram[10359] = "0b00000";
        ram[10360] = "0b11011";
        for (unsigned i = 10361; i < 10366 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10366] = "0b00111";
        for (unsigned i = 10367; i < 10376 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10376] = "0b01000";
        ram[10377] = "0b00000";
        ram[10378] = "0b00000";
        ram[10379] = "0b00000";
        ram[10380] = "0b00001";
        ram[10381] = "0b00000";
        ram[10382] = "0b00000";
        ram[10383] = "0b11101";
        ram[10384] = "0b00000";
        ram[10385] = "0b00000";
        ram[10386] = "0b00000";
        ram[10387] = "0b00000";
        ram[10388] = "0b11110";
        ram[10389] = "0b00000";
        ram[10390] = "0b00000";
        ram[10391] = "0b00000";
        ram[10392] = "0b00000";
        ram[10393] = "0b00001";
        ram[10394] = "0b00110";
        ram[10395] = "0b00000";
        ram[10396] = "0b00000";
        ram[10397] = "0b11101";
        ram[10398] = "0b00000";
        ram[10399] = "0b11110";
        ram[10400] = "0b11111";
        ram[10401] = "0b00000";
        ram[10402] = "0b00000";
        ram[10403] = "0b00000";
        ram[10404] = "0b11111";
        ram[10405] = "0b00000";
        ram[10406] = "0b00000";
        ram[10407] = "0b00000";
        ram[10408] = "0b00000";
        ram[10409] = "0b00001";
        for (unsigned i = 10410; i < 10428 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10428] = "0b00010";
        ram[10429] = "0b00000";
        ram[10430] = "0b00000";
        ram[10431] = "0b11111";
        for (unsigned i = 10432; i < 10439 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10439] = "0b11110";
        ram[10440] = "0b01000";
        for (unsigned i = 10441; i < 10452 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10452] = "0b11101";
        ram[10453] = "0b11111";
        for (unsigned i = 10454; i < 10466 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10466] = "0b00111";
        ram[10467] = "0b00000";
        ram[10468] = "0b00000";
        ram[10469] = "0b00000";
        ram[10470] = "0b00000";
        ram[10471] = "0b11011";
        ram[10472] = "0b00101";
        ram[10473] = "0b00000";
        ram[10474] = "0b00000";
        ram[10475] = "0b00001";
        ram[10476] = "0b00100";
        ram[10477] = "0b00000";
        ram[10478] = "0b00000";
        ram[10479] = "0b11011";
        ram[10480] = "0b00000";
        ram[10481] = "0b00001";
        ram[10482] = "0b11111";
        ram[10483] = "0b00000";
        ram[10484] = "0b00001";
        for (unsigned i = 10485; i < 10491 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[10491] = "0b11010";
        ram[10492] = "0b00000";
        ram[10493] = "0b00000";
        ram[10494] = "0b00000";
        ram[10495] = "0b11100";
        for (unsigned i = 10496; i < 11265 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11265] = "0b11010";
        ram[11266] = "0b00000";
        ram[11267] = "0b00010";
        ram[11268] = "0b00000";
        ram[11269] = "0b00000";
        ram[11270] = "0b11101";
        for (unsigned i = 11271; i < 11277 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11277] = "0b11101";
        for (unsigned i = 11278; i < 11288 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11288] = "0b00101";
        ram[11289] = "0b00011";
        for (unsigned i = 11290; i < 11295 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11295] = "0b01011";
        for (unsigned i = 11296; i < 11301 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11301] = "0b00101";
        ram[11302] = "0b00000";
        ram[11303] = "0b00000";
        ram[11304] = "0b11111";
        ram[11305] = "0b00000";
        ram[11306] = "0b00000";
        ram[11307] = "0b00000";
        ram[11308] = "0b00000";
        ram[11309] = "0b00010";
        ram[11310] = "0b00000";
        ram[11311] = "0b11111";
        for (unsigned i = 11312; i < 11323 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11323] = "0b11111";
        for (unsigned i = 11324; i < 11342 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11342] = "0b00001";
        ram[11343] = "0b00000";
        ram[11344] = "0b00000";
        ram[11345] = "0b00000";
        ram[11346] = "0b00011";
        ram[11347] = "0b00000";
        ram[11348] = "0b00000";
        ram[11349] = "0b11100";
        for (unsigned i = 11350; i < 11365 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11365] = "0b11110";
        ram[11366] = "0b00000";
        ram[11367] = "0b00000";
        ram[11368] = "0b00000";
        ram[11369] = "0b00111";
        ram[11370] = "0b00000";
        ram[11371] = "0b00000";
        ram[11372] = "0b00000";
        ram[11373] = "0b00000";
        ram[11374] = "0b01010";
        ram[11375] = "0b00000";
        ram[11376] = "0b00000";
        ram[11377] = "0b01001";
        ram[11378] = "0b00000";
        ram[11379] = "0b00000";
        ram[11380] = "0b11101";
        ram[11381] = "0b01011";
        ram[11382] = "0b00000";
        ram[11383] = "0b00000";
        ram[11384] = "0b11100";
        ram[11385] = "0b00000";
        ram[11386] = "0b11111";
        ram[11387] = "0b00000";
        ram[11388] = "0b00000";
        ram[11389] = "0b00000";
        ram[11390] = "0b00011";
        for (unsigned i = 11391; i < 11400 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11400] = "0b00011";
        ram[11401] = "0b00000";
        ram[11402] = "0b00000";
        ram[11403] = "0b00000";
        ram[11404] = "0b10111";
        ram[11405] = "0b00000";
        ram[11406] = "0b00000";
        ram[11407] = "0b01011";
        ram[11408] = "0b00000";
        ram[11409] = "0b00000";
        ram[11410] = "0b00000";
        ram[11411] = "0b00000";
        ram[11412] = "0b00101";
        ram[11413] = "0b00000";
        ram[11414] = "0b00000";
        ram[11415] = "0b00000";
        ram[11416] = "0b00000";
        ram[11417] = "0b11110";
        ram[11418] = "0b11111";
        ram[11419] = "0b00000";
        ram[11420] = "0b11111";
        ram[11421] = "0b11110";
        ram[11422] = "0b00000";
        ram[11423] = "0b00001";
        ram[11424] = "0b00101";
        ram[11425] = "0b00000";
        ram[11426] = "0b00000";
        ram[11427] = "0b00000";
        ram[11428] = "0b10110";
        ram[11429] = "0b00000";
        ram[11430] = "0b00000";
        ram[11431] = "0b00000";
        ram[11432] = "0b00000";
        ram[11433] = "0b11111";
        for (unsigned i = 11434; i < 11446 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11446] = "0b01001";
        for (unsigned i = 11447; i < 11452 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11452] = "0b11111";
        ram[11453] = "0b00000";
        ram[11454] = "0b00000";
        ram[11455] = "0b11110";
        for (unsigned i = 11456; i < 11463 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11463] = "0b11010";
        for (unsigned i = 11464; i < 11474 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11474] = "0b00001";
        ram[11475] = "0b00000";
        ram[11476] = "0b11011";
        ram[11477] = "0b00001";
        for (unsigned i = 11478; i < 11490 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11490] = "0b00010";
        ram[11491] = "0b00000";
        ram[11492] = "0b00000";
        ram[11493] = "0b00000";
        ram[11494] = "0b00000";
        ram[11495] = "0b11101";
        ram[11496] = "0b00100";
        ram[11497] = "0b00000";
        ram[11498] = "0b00000";
        ram[11499] = "0b11011";
        ram[11500] = "0b11100";
        ram[11501] = "0b00000";
        ram[11502] = "0b00000";
        ram[11503] = "0b11111";
        ram[11504] = "0b00000";
        ram[11505] = "0b00000";
        ram[11506] = "0b11100";
        ram[11507] = "0b00000";
        ram[11508] = "0b00101";
        for (unsigned i = 11509; i < 11515 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[11515] = "0b11101";
        for (unsigned i = 11516; i < 12033 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12033] = "0b11110";
        ram[12034] = "0b00000";
        ram[12035] = "0b01000";
        ram[12036] = "0b00001";
        ram[12037] = "0b00000";
        ram[12038] = "0b00011";
        for (unsigned i = 12039; i < 12045 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12045] = "0b11110";
        ram[12046] = "0b00000";
        ram[12047] = "0b11110";
        for (unsigned i = 12048; i < 12056 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12056] = "0b00010";
        for (unsigned i = 12057; i < 12063 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12063] = "0b11100";
        for (unsigned i = 12064; i < 12069 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12069] = "0b11100";
        for (unsigned i = 12070; i < 12077 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12077] = "0b11110";
        ram[12078] = "0b00000";
        ram[12079] = "0b00001";
        ram[12080] = "0b00000";
        ram[12081] = "0b00000";
        ram[12082] = "0b00000";
        ram[12083] = "0b01001";
        for (unsigned i = 12084; i < 12110 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12110] = "0b00111";
        ram[12111] = "0b00000";
        ram[12112] = "0b00000";
        ram[12113] = "0b11011";
        ram[12114] = "0b00100";
        ram[12115] = "0b00000";
        ram[12116] = "0b00000";
        ram[12117] = "0b00001";
        ram[12118] = "0b00000";
        ram[12119] = "0b00000";
        ram[12120] = "0b00000";
        ram[12121] = "0b00000";
        ram[12122] = "0b00001";
        for (unsigned i = 12123; i < 12133 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12133] = "0b11110";
        ram[12134] = "0b00000";
        ram[12135] = "0b00000";
        ram[12136] = "0b00000";
        ram[12137] = "0b00100";
        ram[12138] = "0b00000";
        ram[12139] = "0b00000";
        ram[12140] = "0b00000";
        ram[12141] = "0b00000";
        ram[12142] = "0b00001";
        ram[12143] = "0b00000";
        ram[12144] = "0b00000";
        ram[12145] = "0b00010";
        ram[12146] = "0b00000";
        ram[12147] = "0b00000";
        ram[12148] = "0b11101";
        ram[12149] = "0b00001";
        ram[12150] = "0b00000";
        ram[12151] = "0b00000";
        ram[12152] = "0b11011";
        ram[12153] = "0b00000";
        ram[12154] = "0b11111";
        ram[12155] = "0b00000";
        ram[12156] = "0b00000";
        ram[12157] = "0b00000";
        ram[12158] = "0b00111";
        for (unsigned i = 12159; i < 12168 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12168] = "0b01001";
        ram[12169] = "0b00000";
        ram[12170] = "0b00000";
        ram[12171] = "0b00000";
        ram[12172] = "0b00001";
        ram[12173] = "0b00000";
        ram[12174] = "0b00000";
        ram[12175] = "0b11101";
        ram[12176] = "0b00000";
        ram[12177] = "0b00000";
        ram[12178] = "0b00000";
        ram[12179] = "0b00000";
        ram[12180] = "0b11110";
        ram[12181] = "0b00000";
        ram[12182] = "0b00000";
        ram[12183] = "0b00000";
        ram[12184] = "0b00000";
        ram[12185] = "0b00010";
        ram[12186] = "0b00111";
        ram[12187] = "0b00000";
        ram[12188] = "0b00000";
        ram[12189] = "0b11101";
        ram[12190] = "0b11111";
        ram[12191] = "0b11110";
        ram[12192] = "0b00000";
        ram[12193] = "0b00000";
        ram[12194] = "0b00000";
        ram[12195] = "0b00000";
        ram[12196] = "0b11111";
        for (unsigned i = 12197; i < 12214 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12214] = "0b11111";
        for (unsigned i = 12215; i < 12220 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12220] = "0b00010";
        ram[12221] = "0b00000";
        ram[12222] = "0b00000";
        ram[12223] = "0b11111";
        for (unsigned i = 12224; i < 12231 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12231] = "0b11101";
        ram[12232] = "0b01001";
        for (unsigned i = 12233; i < 12242 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12242] = "0b11111";
        ram[12243] = "0b00000";
        ram[12244] = "0b11110";
        ram[12245] = "0b11111";
        for (unsigned i = 12246; i < 12258 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12258] = "0b01000";
        ram[12259] = "0b00000";
        ram[12260] = "0b00000";
        ram[12261] = "0b00000";
        ram[12262] = "0b00000";
        ram[12263] = "0b11011";
        ram[12264] = "0b00101";
        ram[12265] = "0b00000";
        ram[12266] = "0b00000";
        ram[12267] = "0b00010";
        ram[12268] = "0b00100";
        ram[12269] = "0b00000";
        ram[12270] = "0b00000";
        ram[12271] = "0b11011";
        ram[12272] = "0b00000";
        ram[12273] = "0b00001";
        ram[12274] = "0b11111";
        for (unsigned i = 12275; i < 12283 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[12283] = "0b11010";
        ram[12284] = "0b00000";
        ram[12285] = "0b00000";
        ram[12286] = "0b00000";
        ram[12287] = "0b11100";
        for (unsigned i = 12288; i < 14339 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14339] = "0b00011";
        ram[14340] = "0b00011";
        ram[14341] = "0b00000";
        ram[14342] = "0b00110";
        for (unsigned i = 14343; i < 14349 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14349] = "0b11110";
        ram[14350] = "0b00000";
        ram[14351] = "0b11101";
        for (unsigned i = 14352; i < 14361 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14361] = "0b00001";
        for (unsigned i = 14362; i < 14367 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14367] = "0b11100";
        for (unsigned i = 14368; i < 14373 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14373] = "0b11110";
        ram[14374] = "0b00000";
        ram[14375] = "0b00000";
        ram[14376] = "0b11111";
        ram[14377] = "0b00000";
        ram[14378] = "0b00000";
        ram[14379] = "0b00000";
        ram[14380] = "0b00000";
        ram[14381] = "0b11101";
        ram[14382] = "0b00000";
        ram[14383] = "0b11111";
        ram[14384] = "0b00000";
        ram[14385] = "0b00000";
        ram[14386] = "0b00000";
        ram[14387] = "0b00100";
        for (unsigned i = 14388; i < 14395 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14395] = "0b11111";
        for (unsigned i = 14396; i < 14414 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14414] = "0b11111";
        ram[14415] = "0b00000";
        ram[14416] = "0b00000";
        ram[14417] = "0b00001";
        ram[14418] = "0b11111";
        ram[14419] = "0b00000";
        ram[14420] = "0b00000";
        ram[14421] = "0b00111";
        for (unsigned i = 14422; i < 14441 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14441] = "0b11101";
        ram[14442] = "0b00000";
        ram[14443] = "0b00000";
        ram[14444] = "0b00000";
        ram[14445] = "0b00000";
        ram[14446] = "0b11110";
        ram[14447] = "0b00000";
        ram[14448] = "0b00000";
        ram[14449] = "0b11111";
        ram[14450] = "0b00000";
        ram[14451] = "0b00000";
        ram[14452] = "0b11111";
        ram[14453] = "0b11110";
        ram[14454] = "0b00000";
        ram[14455] = "0b00000";
        ram[14456] = "0b11111";
        ram[14457] = "0b00000";
        ram[14458] = "0b11111";
        ram[14459] = "0b00000";
        ram[14460] = "0b00000";
        ram[14461] = "0b00000";
        ram[14462] = "0b00001";
        for (unsigned i = 14463; i < 14472 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14472] = "0b00011";
        ram[14473] = "0b00000";
        ram[14474] = "0b00000";
        ram[14475] = "0b00000";
        ram[14476] = "0b01001";
        ram[14477] = "0b00000";
        ram[14478] = "0b00000";
        ram[14479] = "0b11001";
        ram[14480] = "0b00000";
        ram[14481] = "0b00000";
        ram[14482] = "0b00000";
        ram[14483] = "0b00000";
        ram[14484] = "0b11110";
        ram[14485] = "0b00000";
        ram[14486] = "0b00000";
        ram[14487] = "0b00000";
        ram[14488] = "0b00000";
        ram[14489] = "0b11110";
        ram[14490] = "0b00100";
        ram[14491] = "0b00000";
        ram[14492] = "0b00100";
        ram[14493] = "0b00000";
        ram[14494] = "0b00101";
        ram[14495] = "0b11011";
        ram[14496] = "0b11111";
        ram[14497] = "0b00000";
        ram[14498] = "0b00000";
        ram[14499] = "0b00000";
        ram[14500] = "0b01000";
        ram[14501] = "0b00000";
        ram[14502] = "0b00000";
        ram[14503] = "0b00000";
        ram[14504] = "0b00000";
        ram[14505] = "0b00101";
        for (unsigned i = 14506; i < 14518 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14518] = "0b11111";
        for (unsigned i = 14519; i < 14524 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14524] = "0b11101";
        ram[14525] = "0b00000";
        ram[14526] = "0b00000";
        ram[14527] = "0b11111";
        for (unsigned i = 14528; i < 14535 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14535] = "0b00111";
        ram[14536] = "0b00100";
        for (unsigned i = 14537; i < 14546 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14546] = "0b11110";
        ram[14547] = "0b00000";
        ram[14548] = "0b11110";
        ram[14549] = "0b00011";
        for (unsigned i = 14550; i < 14562 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14562] = "0b00010";
        ram[14563] = "0b00000";
        ram[14564] = "0b00000";
        ram[14565] = "0b00000";
        ram[14566] = "0b00000";
        ram[14567] = "0b11111";
        ram[14568] = "0b11111";
        ram[14569] = "0b00000";
        ram[14570] = "0b00000";
        ram[14571] = "0b00100";
        ram[14572] = "0b00101";
        ram[14573] = "0b00000";
        ram[14574] = "0b00000";
        ram[14575] = "0b11101";
        ram[14576] = "0b00000";
        ram[14577] = "0b00000";
        ram[14578] = "0b11111";
        ram[14579] = "0b00000";
        ram[14580] = "0b00001";
        for (unsigned i = 14581; i < 14587 ; i = i + 1) {
            ram[i] = "0b00000";
        }
        ram[14587] = "0b11111";
        ram[14588] = "0b00000";
        ram[14589] = "0b00000";
        ram[14590] = "0b00000";
        ram[14591] = "0b11101";
        for (unsigned i = 14592; i < 16384 ; i = i + 1) {
            ram[i] = "0b00000";
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


SC_MODULE(Conv1DMac_new413_WhU) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 16384;
static const unsigned AddressWidth = 14;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Conv1DMac_new413_WhU_ram* meminst;


SC_CTOR(Conv1DMac_new413_WhU) {
meminst = new Conv1DMac_new413_WhU_ram("Conv1DMac_new413_WhU_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Conv1DMac_new413_WhU() {
    delete meminst;
}


};//endmodule
#endif

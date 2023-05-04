// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DMac_new_HH_
#define _Conv1DMac_new_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "computeS4_3_mux_6g8j_x.h"
#include "Conv1DMac_new_weiibs.h"
#include "Conv1DMac_new_weijbC.h"
#include "Conv1DMac_new_weikbM.h"
#include "Conv1DMac_new_weilbW.h"

namespace ap_rtl {

struct Conv1DMac_new : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<32> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_signal< sc_lv<8> > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const0;
    sc_signal< sc_lv<8> > ap_var_for_const2;
    sc_signal< sc_lv<8> > ap_var_for_const3;
    sc_signal< sc_lv<8> > ap_var_for_const4;
    sc_signal< sc_lv<8> > ap_var_for_const5;
    sc_signal< sc_lv<8> > ap_var_for_const6;
    sc_signal< sc_lv<8> > ap_var_for_const7;
    sc_signal< sc_lv<8> > ap_var_for_const8;
    sc_signal< sc_lv<8> > ap_var_for_const9;
    sc_signal< sc_lv<8> > ap_var_for_const10;
    sc_signal< sc_lv<8> > ap_var_for_const11;
    sc_signal< sc_lv<8> > ap_var_for_const12;
    sc_signal< sc_lv<8> > ap_var_for_const13;
    sc_signal< sc_lv<8> > ap_var_for_const14;
    sc_signal< sc_lv<8> > ap_var_for_const15;
    sc_signal< sc_lv<8> > ap_var_for_const16;
    sc_signal< sc_lv<8> > ap_var_for_const17;
    sc_signal< sc_lv<8> > ap_var_for_const18;
    sc_signal< sc_lv<8> > ap_var_for_const19;
    sc_signal< sc_lv<8> > ap_var_for_const20;
    sc_signal< sc_lv<8> > ap_var_for_const21;
    sc_signal< sc_lv<8> > ap_var_for_const22;
    sc_signal< sc_lv<8> > ap_var_for_const23;
    sc_signal< sc_lv<8> > ap_var_for_const24;
    sc_signal< sc_lv<8> > ap_var_for_const25;
    sc_signal< sc_lv<8> > ap_var_for_const26;
    sc_signal< sc_lv<8> > ap_var_for_const27;
    sc_signal< sc_lv<8> > ap_var_for_const28;
    sc_signal< sc_lv<8> > ap_var_for_const29;
    sc_signal< sc_lv<8> > ap_var_for_const30;
    sc_signal< sc_lv<8> > ap_var_for_const31;
    sc_signal< sc_lv<8> > ap_var_for_const32;
    sc_signal< sc_lv<8> > ap_var_for_const33;
    sc_signal< sc_lv<8> > ap_var_for_const34;
    sc_signal< sc_lv<8> > ap_var_for_const35;
    sc_signal< sc_lv<8> > ap_var_for_const36;
    sc_signal< sc_lv<8> > ap_var_for_const37;


    // Module declarations
    Conv1DMac_new(sc_module_name name);
    SC_HAS_PROCESS(Conv1DMac_new);

    ~Conv1DMac_new();

    sc_trace_file* mVcdFile;

    Conv1DMac_new_weiibs* weights24_m_weights_3_U;
    Conv1DMac_new_weijbC* weights24_m_weights_2_U;
    Conv1DMac_new_weikbM* weights24_m_weights_1_U;
    Conv1DMac_new_weilbW* weights24_m_weights_s_U;
    computeS4_3_mux_6g8j_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS4_3_mux_6g8j_x_U26;
    computeS4_3_mux_6g8j_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS4_3_mux_6g8j_x_U27;
    computeS4_3_mux_6g8j_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS4_3_mux_6g8j_x_U28;
    computeS4_3_mux_6g8j_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS4_3_mux_6g8j_x_U29;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<14> > weights24_m_weights_3_address0;
    sc_signal< sc_logic > weights24_m_weights_3_ce0;
    sc_signal< sc_lv<8> > weights24_m_weights_3_q0;
    sc_signal< sc_lv<14> > weights24_m_weights_2_address0;
    sc_signal< sc_logic > weights24_m_weights_2_ce0;
    sc_signal< sc_lv<8> > weights24_m_weights_2_q0;
    sc_signal< sc_lv<14> > weights24_m_weights_1_address0;
    sc_signal< sc_logic > weights24_m_weights_1_ce0;
    sc_signal< sc_lv<8> > weights24_m_weights_1_q0;
    sc_signal< sc_lv<14> > weights24_m_weights_s_address0;
    sc_signal< sc_logic > weights24_m_weights_s_ce0;
    sc_signal< sc_lv<8> > weights24_m_weights_s_q0;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten2_reg_1501;
    sc_signal< sc_lv<1> > exitcond_flatten2_reg_1501_pp0_iter1_reg;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > tmp_2_reg_1528;
    sc_signal< sc_lv<1> > tmp_2_reg_1528_pp0_iter3_reg;
    sc_signal< sc_lv<20> > indvar_flatten2_reg_281;
    sc_signal< sc_lv<16> > indvar_flatten_reg_292;
    sc_signal< sc_lv<7> > nm_reg_303;
    sc_signal< sc_lv<9> > sf_reg_314;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_357_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<20> > indvar_flatten_next2_fu_363_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > nm_t_mid2_fu_457_p3;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1510;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1510_pp0_iter1_reg;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1510_pp0_iter2_reg;
    sc_signal< sc_lv<7> > nm_mid2_fu_465_p3;
    sc_signal< sc_lv<14> > tmp_9_fu_477_p2;
    sc_signal< sc_lv<14> > tmp_9_reg_1523;
    sc_signal< sc_lv<1> > tmp_2_fu_483_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_1528_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_2_reg_1528_pp0_iter2_reg;
    sc_signal< sc_lv<9> > sf_1_fu_489_p2;
    sc_signal< sc_lv<16> > indvar_flatten_next_fu_501_p3;
    sc_signal< sc_lv<8> > p_Val2_1_reg_1562;
    sc_signal< sc_lv<1> > tmp_54_reg_1567;
    sc_signal< sc_lv<1> > tmp_19_fu_584_p2;
    sc_signal< sc_lv<1> > tmp_19_reg_1572;
    sc_signal< sc_lv<8> > p_Val2_1_1_reg_1577;
    sc_signal< sc_lv<1> > tmp_57_reg_1582;
    sc_signal< sc_lv<1> > tmp_19_1_fu_654_p2;
    sc_signal< sc_lv<1> > tmp_19_1_reg_1587;
    sc_signal< sc_lv<8> > p_Val2_1_2_reg_1592;
    sc_signal< sc_lv<1> > tmp_60_reg_1597;
    sc_signal< sc_lv<1> > tmp_19_2_fu_724_p2;
    sc_signal< sc_lv<1> > tmp_19_2_reg_1602;
    sc_signal< sc_lv<8> > p_Val2_1_3_reg_1607;
    sc_signal< sc_lv<1> > tmp_63_reg_1612;
    sc_signal< sc_lv<1> > tmp_19_3_fu_794_p2;
    sc_signal< sc_lv<1> > tmp_19_3_reg_1617;
    sc_signal< sc_lv<8> > p_Val2_7_fu_1041_p2;
    sc_signal< sc_lv<8> > p_Val2_7_reg_1622;
    sc_signal< sc_lv<8> > p_Val2_7_1_fu_1180_p2;
    sc_signal< sc_lv<8> > p_Val2_7_1_reg_1627;
    sc_signal< sc_lv<8> > p_Val2_7_2_fu_1319_p2;
    sc_signal< sc_lv<8> > p_Val2_7_2_reg_1632;
    sc_signal< sc_lv<8> > p_Val2_7_3_fu_1458_p2;
    sc_signal< sc_lv<8> > p_Val2_7_3_reg_1637;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > tmp_s_fu_509_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > macRegisters_0_V_2_fu_200;
    sc_signal< sc_lv<8> > macRegisters_0_V_fu_826_p2;
    sc_signal< sc_lv<8> > macRegisters_1_V_2_fu_204;
    sc_signal< sc_lv<8> > macRegisters_1_V_fu_845_p2;
    sc_signal< sc_lv<8> > macRegisters_2_V_2_fu_208;
    sc_signal< sc_lv<8> > macRegisters_2_V_fu_864_p2;
    sc_signal< sc_lv<8> > macRegisters_3_V_2_fu_212;
    sc_signal< sc_lv<8> > macRegisters_3_V_fu_883_p2;
    sc_signal< sc_lv<6> > tmp_fu_345_p1;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_369_p2;
    sc_signal< sc_lv<14> > tmp_6_fu_349_p3;
    sc_signal< sc_lv<1> > tmp_33_fu_405_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_399_p2;
    sc_signal< sc_lv<7> > nm_mid_fu_375_p3;
    sc_signal< sc_lv<1> > tmp_8_mid_fu_411_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_423_p2;
    sc_signal< sc_lv<7> > nm_1_fu_417_p2;
    sc_signal< sc_lv<6> > tmp_45_fu_437_p1;
    sc_signal< sc_lv<14> > tmp_6_mid1_fu_441_p3;
    sc_signal< sc_lv<14> > tmp_6_mid_fu_383_p3;
    sc_signal< sc_lv<6> > nm_t_mid_fu_391_p3;
    sc_signal< sc_lv<9> > sf_mid2_fu_429_p3;
    sc_signal< sc_lv<14> > sf_cast1_fu_473_p1;
    sc_signal< sc_lv<14> > tmp_6_mid2_fu_449_p3;
    sc_signal< sc_lv<16> > indvar_flatten_op_fu_495_p2;
    sc_signal< sc_lv<8> > p_Val2_s_fu_524_p0;
    sc_signal< sc_lv<16> > p_s_fu_516_p1;
    sc_signal< sc_lv<8> > p_Val2_s_fu_524_p1;
    sc_signal< sc_lv<16> > p_Val2_s_fu_524_p2;
    sc_signal< sc_lv<1> > tmp_55_fu_556_p1;
    sc_signal< sc_lv<1> > tmp_53_fu_530_p3;
    sc_signal< sc_lv<5> > tmp_35_fu_566_p4;
    sc_signal< sc_lv<1> > tmp_34_fu_560_p2;
    sc_signal< sc_lv<6> > tmp_36_fu_576_p3;
    sc_signal< sc_lv<8> > p_Val2_s_59_fu_594_p0;
    sc_signal< sc_lv<8> > p_Val2_s_59_fu_594_p1;
    sc_signal< sc_lv<16> > p_Val2_s_59_fu_594_p2;
    sc_signal< sc_lv<1> > tmp_58_fu_626_p1;
    sc_signal< sc_lv<1> > tmp_56_fu_600_p3;
    sc_signal< sc_lv<5> > tmp_38_fu_636_p4;
    sc_signal< sc_lv<1> > tmp_37_fu_630_p2;
    sc_signal< sc_lv<6> > tmp_39_fu_646_p3;
    sc_signal< sc_lv<8> > p_Val2_5_fu_664_p0;
    sc_signal< sc_lv<8> > p_Val2_5_fu_664_p1;
    sc_signal< sc_lv<16> > p_Val2_5_fu_664_p2;
    sc_signal< sc_lv<1> > tmp_61_fu_696_p1;
    sc_signal< sc_lv<1> > tmp_59_fu_670_p3;
    sc_signal< sc_lv<5> > tmp_41_fu_706_p4;
    sc_signal< sc_lv<1> > tmp_40_fu_700_p2;
    sc_signal< sc_lv<6> > tmp_42_fu_716_p3;
    sc_signal< sc_lv<8> > p_Val2_6_fu_734_p0;
    sc_signal< sc_lv<8> > p_Val2_6_fu_734_p1;
    sc_signal< sc_lv<16> > p_Val2_6_fu_734_p2;
    sc_signal< sc_lv<1> > tmp_64_fu_766_p1;
    sc_signal< sc_lv<1> > tmp_62_fu_740_p3;
    sc_signal< sc_lv<5> > tmp_44_fu_776_p4;
    sc_signal< sc_lv<1> > tmp_43_fu_770_p2;
    sc_signal< sc_lv<6> > tmp_46_fu_786_p3;
    sc_signal< sc_lv<1> > qb_assign_1_fu_812_p2;
    sc_signal< sc_lv<8> > tmp_20_fu_816_p1;
    sc_signal< sc_lv<8> > tmp1_fu_820_p2;
    sc_signal< sc_lv<1> > qb_assign_1_1_fu_831_p2;
    sc_signal< sc_lv<8> > tmp_20_1_fu_835_p1;
    sc_signal< sc_lv<8> > tmp2_fu_839_p2;
    sc_signal< sc_lv<1> > qb_assign_1_2_fu_850_p2;
    sc_signal< sc_lv<8> > tmp_20_2_fu_854_p1;
    sc_signal< sc_lv<8> > tmp3_fu_858_p2;
    sc_signal< sc_lv<1> > qb_assign_1_3_fu_869_p2;
    sc_signal< sc_lv<8> > tmp_20_3_fu_873_p1;
    sc_signal< sc_lv<8> > tmp4_fu_877_p2;
    sc_signal< sc_lv<8> > tmp_47_fu_908_p66;
    sc_signal< sc_lv<8> > tmp_48_fu_1047_p66;
    sc_signal< sc_lv<8> > tmp_49_fu_1186_p66;
    sc_signal< sc_lv<8> > tmp_50_fu_1325_p66;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<20> ap_const_lv20_80000;
    static const sc_lv<20> ap_const_lv20_1;
    static const sc_lv<16> ap_const_lv16_4000;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<9> ap_const_lv9_FF;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_D;
    static const sc_lv<8> ap_const_lv8_15;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_B;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_A;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_13;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_FC;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<8> ap_const_lv8_C;
    static const sc_lv<8> ap_const_lv8_16;
    static const sc_lv<8> ap_const_lv8_F7;
    static const sc_lv<8> ap_const_lv8_1A;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_12;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<8> ap_const_lv8_FB;
    static const sc_lv<8> ap_const_lv8_FD;
    static const sc_lv<8> ap_const_lv8_19;
    static const sc_lv<8> ap_const_lv8_20;
    static const sc_lv<8> ap_const_lv8_1E;
    static const sc_lv<8> ap_const_lv8_17;
    static const sc_lv<8> ap_const_lv8_1C;
    static const sc_lv<8> ap_const_lv8_F9;
    static const sc_lv<8> ap_const_lv8_11;
    static const sc_lv<8> ap_const_lv8_1B;
    static const sc_lv<8> ap_const_lv8_18;
    static const sc_lv<8> ap_const_lv8_1D;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const9();
    void thread_ap_var_for_const10();
    void thread_ap_var_for_const11();
    void thread_ap_var_for_const12();
    void thread_ap_var_for_const13();
    void thread_ap_var_for_const14();
    void thread_ap_var_for_const15();
    void thread_ap_var_for_const16();
    void thread_ap_var_for_const17();
    void thread_ap_var_for_const18();
    void thread_ap_var_for_const19();
    void thread_ap_var_for_const20();
    void thread_ap_var_for_const21();
    void thread_ap_var_for_const22();
    void thread_ap_var_for_const23();
    void thread_ap_var_for_const24();
    void thread_ap_var_for_const25();
    void thread_ap_var_for_const26();
    void thread_ap_var_for_const27();
    void thread_ap_var_for_const28();
    void thread_ap_var_for_const29();
    void thread_ap_var_for_const30();
    void thread_ap_var_for_const31();
    void thread_ap_var_for_const32();
    void thread_ap_var_for_const33();
    void thread_ap_var_for_const34();
    void thread_ap_var_for_const35();
    void thread_ap_var_for_const36();
    void thread_ap_var_for_const37();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_exitcond_flatten2_fu_357_p2();
    void thread_exitcond_flatten_fu_369_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next2_fu_363_p2();
    void thread_indvar_flatten_next_fu_501_p3();
    void thread_indvar_flatten_op_fu_495_p2();
    void thread_internal_ap_ready();
    void thread_macRegisters_0_V_fu_826_p2();
    void thread_macRegisters_1_V_fu_845_p2();
    void thread_macRegisters_2_V_fu_864_p2();
    void thread_macRegisters_3_V_fu_883_p2();
    void thread_nm_1_fu_417_p2();
    void thread_nm_mid2_fu_465_p3();
    void thread_nm_mid_fu_375_p3();
    void thread_nm_t_mid2_fu_457_p3();
    void thread_nm_t_mid_fu_391_p3();
    void thread_not_exitcond_flatten_fu_399_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_Val2_5_fu_664_p0();
    void thread_p_Val2_5_fu_664_p1();
    void thread_p_Val2_5_fu_664_p2();
    void thread_p_Val2_6_fu_734_p0();
    void thread_p_Val2_6_fu_734_p1();
    void thread_p_Val2_6_fu_734_p2();
    void thread_p_Val2_7_1_fu_1180_p2();
    void thread_p_Val2_7_2_fu_1319_p2();
    void thread_p_Val2_7_3_fu_1458_p2();
    void thread_p_Val2_7_fu_1041_p2();
    void thread_p_Val2_s_59_fu_594_p0();
    void thread_p_Val2_s_59_fu_594_p1();
    void thread_p_Val2_s_59_fu_594_p2();
    void thread_p_Val2_s_fu_524_p0();
    void thread_p_Val2_s_fu_524_p1();
    void thread_p_Val2_s_fu_524_p2();
    void thread_p_s_fu_516_p1();
    void thread_qb_assign_1_1_fu_831_p2();
    void thread_qb_assign_1_2_fu_850_p2();
    void thread_qb_assign_1_3_fu_869_p2();
    void thread_qb_assign_1_fu_812_p2();
    void thread_real_start();
    void thread_sf_1_fu_489_p2();
    void thread_sf_cast1_fu_473_p1();
    void thread_sf_mid2_fu_429_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_fu_820_p2();
    void thread_tmp2_fu_839_p2();
    void thread_tmp3_fu_858_p2();
    void thread_tmp4_fu_877_p2();
    void thread_tmp_19_1_fu_654_p2();
    void thread_tmp_19_2_fu_724_p2();
    void thread_tmp_19_3_fu_794_p2();
    void thread_tmp_19_fu_584_p2();
    void thread_tmp_20_1_fu_835_p1();
    void thread_tmp_20_2_fu_854_p1();
    void thread_tmp_20_3_fu_873_p1();
    void thread_tmp_20_fu_816_p1();
    void thread_tmp_2_fu_483_p2();
    void thread_tmp_33_fu_405_p2();
    void thread_tmp_34_fu_560_p2();
    void thread_tmp_35_fu_566_p4();
    void thread_tmp_36_fu_576_p3();
    void thread_tmp_37_fu_630_p2();
    void thread_tmp_38_fu_636_p4();
    void thread_tmp_39_fu_646_p3();
    void thread_tmp_40_fu_700_p2();
    void thread_tmp_41_fu_706_p4();
    void thread_tmp_42_fu_716_p3();
    void thread_tmp_43_fu_770_p2();
    void thread_tmp_44_fu_776_p4();
    void thread_tmp_45_fu_437_p1();
    void thread_tmp_46_fu_786_p3();
    void thread_tmp_53_fu_530_p3();
    void thread_tmp_55_fu_556_p1();
    void thread_tmp_56_fu_600_p3();
    void thread_tmp_58_fu_626_p1();
    void thread_tmp_59_fu_670_p3();
    void thread_tmp_5_fu_423_p2();
    void thread_tmp_61_fu_696_p1();
    void thread_tmp_62_fu_740_p3();
    void thread_tmp_64_fu_766_p1();
    void thread_tmp_6_fu_349_p3();
    void thread_tmp_6_mid1_fu_441_p3();
    void thread_tmp_6_mid2_fu_449_p3();
    void thread_tmp_6_mid_fu_383_p3();
    void thread_tmp_8_mid_fu_411_p2();
    void thread_tmp_9_fu_477_p2();
    void thread_tmp_fu_345_p1();
    void thread_tmp_s_fu_509_p1();
    void thread_weights24_m_weights_1_address0();
    void thread_weights24_m_weights_1_ce0();
    void thread_weights24_m_weights_2_address0();
    void thread_weights24_m_weights_2_ce0();
    void thread_weights24_m_weights_3_address0();
    void thread_weights24_m_weights_3_ce0();
    void thread_weights24_m_weights_s_address0();
    void thread_weights24_m_weights_s_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

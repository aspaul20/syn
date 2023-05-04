// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DMac_new_1_HH_
#define _Conv1DMac_new_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "computeS3_mux_646yd2_x_x_x_x.h"
#include "Conv1DMac_new_1_wPgM.h"
#include "Conv1DMac_new_1_wQgW.h"
#include "Conv1DMac_new_1_wRg6.h"
#include "Conv1DMac_new_1_wShg.h"

namespace ap_rtl {

struct Conv1DMac_new_1 : public sc_module {
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
    sc_signal< sc_lv<8> > ap_var_for_const0;
    sc_signal< sc_lv<8> > ap_var_for_const1;
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
    sc_signal< sc_lv<8> > ap_var_for_const38;
    sc_signal< sc_lv<8> > ap_var_for_const39;


    // Module declarations
    Conv1DMac_new_1(sc_module_name name);
    SC_HAS_PROCESS(Conv1DMac_new_1);

    ~Conv1DMac_new_1();

    sc_trace_file* mVcdFile;

    Conv1DMac_new_1_wPgM* weights15_m_weights_3_U;
    Conv1DMac_new_1_wQgW* weights15_m_weights_2_U;
    Conv1DMac_new_1_wRg6* weights15_m_weights_1_U;
    Conv1DMac_new_1_wShg* weights15_m_weights_s_U;
    computeS3_mux_646yd2_x_x_x_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_x_x_x_x_U107;
    computeS3_mux_646yd2_x_x_x_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_x_x_x_x_U108;
    computeS3_mux_646yd2_x_x_x_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_x_x_x_x_U109;
    computeS3_mux_646yd2_x_x_x_x<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_x_x_x_x_U110;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<14> > weights15_m_weights_3_address0;
    sc_signal< sc_logic > weights15_m_weights_3_ce0;
    sc_signal< sc_lv<6> > weights15_m_weights_3_q0;
    sc_signal< sc_lv<14> > weights15_m_weights_2_address0;
    sc_signal< sc_logic > weights15_m_weights_2_ce0;
    sc_signal< sc_lv<7> > weights15_m_weights_2_q0;
    sc_signal< sc_lv<14> > weights15_m_weights_1_address0;
    sc_signal< sc_logic > weights15_m_weights_1_ce0;
    sc_signal< sc_lv<6> > weights15_m_weights_1_q0;
    sc_signal< sc_lv<14> > weights15_m_weights_s_address0;
    sc_signal< sc_logic > weights15_m_weights_s_ce0;
    sc_signal< sc_lv<6> > weights15_m_weights_s_q0;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1527;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1527_pp0_iter1_reg;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > tmp_249_reg_1554;
    sc_signal< sc_lv<1> > tmp_249_reg_1554_pp0_iter3_reg;
    sc_signal< sc_lv<25> > indvar_flatten3_reg_291;
    sc_signal< sc_lv<16> > indvar_flatten_reg_302;
    sc_signal< sc_lv<7> > nm_reg_313;
    sc_signal< sc_lv<9> > sf_reg_324;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_367_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<25> > indvar_flatten_next1_fu_373_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > nm_t_mid2_fu_467_p3;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1536;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1536_pp0_iter1_reg;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1536_pp0_iter2_reg;
    sc_signal< sc_lv<7> > nm_mid2_fu_475_p3;
    sc_signal< sc_lv<14> > tmp_229_fu_487_p2;
    sc_signal< sc_lv<14> > tmp_229_reg_1549;
    sc_signal< sc_lv<1> > tmp_249_fu_493_p2;
    sc_signal< sc_lv<1> > tmp_249_reg_1554_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_249_reg_1554_pp0_iter2_reg;
    sc_signal< sc_lv<9> > sf_2_fu_499_p2;
    sc_signal< sc_lv<16> > indvar_flatten_next_fu_511_p3;
    sc_signal< sc_lv<7> > tmp_164_reg_1588;
    sc_signal< sc_lv<1> > tmp_1011_reg_1593;
    sc_signal< sc_lv<1> > tmp_235_fu_598_p2;
    sc_signal< sc_lv<1> > tmp_235_reg_1598;
    sc_signal< sc_lv<8> > tmp_167_reg_1603;
    sc_signal< sc_lv<1> > tmp_1014_reg_1608;
    sc_signal< sc_lv<1> > tmp_279_1_fu_668_p2;
    sc_signal< sc_lv<1> > tmp_279_1_reg_1613;
    sc_signal< sc_lv<7> > tmp_169_reg_1618;
    sc_signal< sc_lv<1> > tmp_1017_reg_1623;
    sc_signal< sc_lv<1> > tmp_279_2_fu_738_p2;
    sc_signal< sc_lv<1> > tmp_279_2_reg_1628;
    sc_signal< sc_lv<7> > tmp_172_reg_1633;
    sc_signal< sc_lv<1> > tmp_1020_reg_1638;
    sc_signal< sc_lv<1> > tmp_279_3_fu_808_p2;
    sc_signal< sc_lv<1> > tmp_279_3_reg_1643;
    sc_signal< sc_lv<8> > p_Val2_s_fu_1067_p2;
    sc_signal< sc_lv<8> > p_Val2_s_reg_1648;
    sc_signal< sc_lv<8> > p_Val2_23_1_fu_1206_p2;
    sc_signal< sc_lv<8> > p_Val2_23_1_reg_1653;
    sc_signal< sc_lv<8> > p_Val2_23_2_fu_1345_p2;
    sc_signal< sc_lv<8> > p_Val2_23_2_reg_1658;
    sc_signal< sc_lv<8> > p_Val2_23_3_fu_1484_p2;
    sc_signal< sc_lv<8> > p_Val2_23_3_reg_1663;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > tmp_230_fu_519_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > macRegisters_0_V_8_fu_210;
    sc_signal< sc_lv<8> > macRegisters_0_V_fu_843_p2;
    sc_signal< sc_lv<8> > macRegisters_1_V_8_fu_214;
    sc_signal< sc_lv<8> > macRegisters_1_V_fu_863_p2;
    sc_signal< sc_lv<8> > macRegisters_2_V_8_fu_218;
    sc_signal< sc_lv<8> > macRegisters_2_V_fu_885_p2;
    sc_signal< sc_lv<8> > macRegisters_3_V_8_fu_222;
    sc_signal< sc_lv<8> > macRegisters_3_V_fu_908_p2;
    sc_signal< sc_lv<6> > tmp_fu_355_p1;
    sc_signal< sc_lv<1> > exitcond_flatten3_fu_379_p2;
    sc_signal< sc_lv<14> > tmp_s_fu_359_p3;
    sc_signal< sc_lv<1> > tmp_888_fu_415_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_409_p2;
    sc_signal< sc_lv<7> > nm_mid_fu_385_p3;
    sc_signal< sc_lv<1> > tmp_259_mid_fu_421_p2;
    sc_signal< sc_lv<1> > tmp_865_fu_433_p2;
    sc_signal< sc_lv<7> > nm_2_fu_427_p2;
    sc_signal< sc_lv<6> > tmp_1009_fu_447_p1;
    sc_signal< sc_lv<14> > tmp_258_mid1_fu_451_p3;
    sc_signal< sc_lv<14> > tmp_258_mid_fu_393_p3;
    sc_signal< sc_lv<6> > nm_t_mid_fu_401_p3;
    sc_signal< sc_lv<9> > sf_mid2_fu_439_p3;
    sc_signal< sc_lv<14> > sf_cast1_fu_483_p1;
    sc_signal< sc_lv<14> > tmp_258_mid2_fu_459_p3;
    sc_signal< sc_lv<16> > indvar_flatten_op_fu_505_p2;
    sc_signal< sc_lv<8> > p_08_cast4_fu_526_p0;
    sc_signal< sc_lv<8> > p_08_cast4_cast_fu_530_p0;
    sc_signal< sc_lv<6> > p_Val2_s_187_fu_538_p0;
    sc_signal< sc_lv<8> > p_Val2_s_187_fu_538_p1;
    sc_signal< sc_lv<14> > p_08_cast4_cast_fu_530_p1;
    sc_signal< sc_lv<14> > p_Val2_s_187_fu_538_p2;
    sc_signal< sc_lv<1> > tmp_1012_fu_570_p1;
    sc_signal< sc_lv<1> > tmp_1010_fu_544_p3;
    sc_signal< sc_lv<5> > tmp_233_fu_580_p4;
    sc_signal< sc_lv<1> > tmp_232_fu_574_p2;
    sc_signal< sc_lv<6> > tmp_234_fu_590_p3;
    sc_signal< sc_lv<7> > p_Val2_1_fu_608_p0;
    sc_signal< sc_lv<8> > p_Val2_1_fu_608_p1;
    sc_signal< sc_lv<15> > p_Val2_1_fu_608_p2;
    sc_signal< sc_lv<1> > tmp_1015_fu_640_p1;
    sc_signal< sc_lv<1> > tmp_1013_fu_614_p3;
    sc_signal< sc_lv<5> > tmp_239_fu_650_p4;
    sc_signal< sc_lv<1> > tmp_238_fu_644_p2;
    sc_signal< sc_lv<6> > tmp_240_fu_660_p3;
    sc_signal< sc_lv<6> > p_Val2_2_fu_678_p0;
    sc_signal< sc_lv<8> > p_Val2_2_fu_678_p1;
    sc_signal< sc_lv<14> > p_Val2_2_fu_678_p2;
    sc_signal< sc_lv<1> > tmp_1018_fu_710_p1;
    sc_signal< sc_lv<1> > tmp_1016_fu_684_p3;
    sc_signal< sc_lv<5> > tmp_243_fu_720_p4;
    sc_signal< sc_lv<1> > tmp_242_fu_714_p2;
    sc_signal< sc_lv<6> > tmp_244_fu_730_p3;
    sc_signal< sc_lv<6> > p_Val2_3_fu_748_p0;
    sc_signal< sc_lv<8> > p_Val2_3_fu_748_p1;
    sc_signal< sc_lv<14> > p_Val2_3_fu_748_p2;
    sc_signal< sc_lv<1> > tmp_1021_fu_780_p1;
    sc_signal< sc_lv<1> > tmp_1019_fu_754_p3;
    sc_signal< sc_lv<5> > tmp_247_fu_790_p4;
    sc_signal< sc_lv<1> > tmp_246_fu_784_p2;
    sc_signal< sc_lv<6> > tmp_248_fu_800_p3;
    sc_signal< sc_lv<1> > qb_assign_2_fu_829_p2;
    sc_signal< sc_lv<8> > tmp_236_fu_833_p1;
    sc_signal< sc_lv<8> > tmp_165_fu_826_p1;
    sc_signal< sc_lv<8> > tmp1_fu_837_p2;
    sc_signal< sc_lv<1> > qb_assign_2_1_fu_849_p2;
    sc_signal< sc_lv<8> > tmp_280_1_fu_853_p1;
    sc_signal< sc_lv<8> > tmp2_fu_857_p2;
    sc_signal< sc_lv<1> > qb_assign_2_2_fu_871_p2;
    sc_signal< sc_lv<8> > tmp_280_2_fu_875_p1;
    sc_signal< sc_lv<8> > tmp_170_fu_868_p1;
    sc_signal< sc_lv<8> > tmp3_fu_879_p2;
    sc_signal< sc_lv<1> > qb_assign_2_3_fu_894_p2;
    sc_signal< sc_lv<8> > tmp_280_3_fu_898_p1;
    sc_signal< sc_lv<8> > tmp_173_fu_891_p1;
    sc_signal< sc_lv<8> > tmp4_fu_902_p2;
    sc_signal< sc_lv<8> > tmp_174_fu_934_p66;
    sc_signal< sc_lv<8> > tmp_175_fu_1073_p66;
    sc_signal< sc_lv<8> > tmp_176_fu_1212_p66;
    sc_signal< sc_lv<8> > tmp_177_fu_1351_p66;
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
    static const sc_lv<25> ap_const_lv25_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<25> ap_const_lv25_1000000;
    static const sc_lv<25> ap_const_lv25_1;
    static const sc_lv<16> ap_const_lv16_4000;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<9> ap_const_lv9_FF;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_F9;
    static const sc_lv<8> ap_const_lv8_FB;
    static const sc_lv<8> ap_const_lv8_17;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_F8;
    static const sc_lv<8> ap_const_lv8_F0;
    static const sc_lv<8> ap_const_lv8_2B;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_1E;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_FD;
    static const sc_lv<8> ap_const_lv8_1C;
    static const sc_lv<8> ap_const_lv8_11;
    static const sc_lv<8> ap_const_lv8_F7;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<8> ap_const_lv8_F4;
    static const sc_lv<8> ap_const_lv8_F1;
    static const sc_lv<8> ap_const_lv8_F5;
    static const sc_lv<8> ap_const_lv8_1A;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<8> ap_const_lv8_FC;
    static const sc_lv<8> ap_const_lv8_A;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_22;
    static const sc_lv<8> ap_const_lv8_F6;
    static const sc_lv<8> ap_const_lv8_18;
    static const sc_lv<8> ap_const_lv8_19;
    static const sc_lv<8> ap_const_lv8_21;
    static const sc_lv<8> ap_const_lv8_23;
    static const sc_lv<8> ap_const_lv8_1F;
    static const sc_lv<8> ap_const_lv8_13;
    static const sc_lv<8> ap_const_lv8_14;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
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
    void thread_ap_var_for_const38();
    void thread_ap_var_for_const39();
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
    void thread_exitcond_flatten3_fu_379_p2();
    void thread_exitcond_flatten_fu_367_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next1_fu_373_p2();
    void thread_indvar_flatten_next_fu_511_p3();
    void thread_indvar_flatten_op_fu_505_p2();
    void thread_internal_ap_ready();
    void thread_macRegisters_0_V_fu_843_p2();
    void thread_macRegisters_1_V_fu_863_p2();
    void thread_macRegisters_2_V_fu_885_p2();
    void thread_macRegisters_3_V_fu_908_p2();
    void thread_nm_2_fu_427_p2();
    void thread_nm_mid2_fu_475_p3();
    void thread_nm_mid_fu_385_p3();
    void thread_nm_t_mid2_fu_467_p3();
    void thread_nm_t_mid_fu_401_p3();
    void thread_not_exitcond_flatten_fu_409_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_08_cast4_cast_fu_530_p0();
    void thread_p_08_cast4_cast_fu_530_p1();
    void thread_p_08_cast4_fu_526_p0();
    void thread_p_Val2_1_fu_608_p0();
    void thread_p_Val2_1_fu_608_p1();
    void thread_p_Val2_1_fu_608_p2();
    void thread_p_Val2_23_1_fu_1206_p2();
    void thread_p_Val2_23_2_fu_1345_p2();
    void thread_p_Val2_23_3_fu_1484_p2();
    void thread_p_Val2_2_fu_678_p0();
    void thread_p_Val2_2_fu_678_p1();
    void thread_p_Val2_2_fu_678_p2();
    void thread_p_Val2_3_fu_748_p0();
    void thread_p_Val2_3_fu_748_p1();
    void thread_p_Val2_3_fu_748_p2();
    void thread_p_Val2_s_187_fu_538_p0();
    void thread_p_Val2_s_187_fu_538_p1();
    void thread_p_Val2_s_187_fu_538_p2();
    void thread_p_Val2_s_fu_1067_p2();
    void thread_qb_assign_2_1_fu_849_p2();
    void thread_qb_assign_2_2_fu_871_p2();
    void thread_qb_assign_2_3_fu_894_p2();
    void thread_qb_assign_2_fu_829_p2();
    void thread_real_start();
    void thread_sf_2_fu_499_p2();
    void thread_sf_cast1_fu_483_p1();
    void thread_sf_mid2_fu_439_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_fu_837_p2();
    void thread_tmp2_fu_857_p2();
    void thread_tmp3_fu_879_p2();
    void thread_tmp4_fu_902_p2();
    void thread_tmp_1009_fu_447_p1();
    void thread_tmp_1010_fu_544_p3();
    void thread_tmp_1012_fu_570_p1();
    void thread_tmp_1013_fu_614_p3();
    void thread_tmp_1015_fu_640_p1();
    void thread_tmp_1016_fu_684_p3();
    void thread_tmp_1018_fu_710_p1();
    void thread_tmp_1019_fu_754_p3();
    void thread_tmp_1021_fu_780_p1();
    void thread_tmp_165_fu_826_p1();
    void thread_tmp_170_fu_868_p1();
    void thread_tmp_173_fu_891_p1();
    void thread_tmp_229_fu_487_p2();
    void thread_tmp_230_fu_519_p1();
    void thread_tmp_232_fu_574_p2();
    void thread_tmp_233_fu_580_p4();
    void thread_tmp_234_fu_590_p3();
    void thread_tmp_235_fu_598_p2();
    void thread_tmp_236_fu_833_p1();
    void thread_tmp_238_fu_644_p2();
    void thread_tmp_239_fu_650_p4();
    void thread_tmp_240_fu_660_p3();
    void thread_tmp_242_fu_714_p2();
    void thread_tmp_243_fu_720_p4();
    void thread_tmp_244_fu_730_p3();
    void thread_tmp_246_fu_784_p2();
    void thread_tmp_247_fu_790_p4();
    void thread_tmp_248_fu_800_p3();
    void thread_tmp_249_fu_493_p2();
    void thread_tmp_258_mid1_fu_451_p3();
    void thread_tmp_258_mid2_fu_459_p3();
    void thread_tmp_258_mid_fu_393_p3();
    void thread_tmp_259_mid_fu_421_p2();
    void thread_tmp_279_1_fu_668_p2();
    void thread_tmp_279_2_fu_738_p2();
    void thread_tmp_279_3_fu_808_p2();
    void thread_tmp_280_1_fu_853_p1();
    void thread_tmp_280_2_fu_875_p1();
    void thread_tmp_280_3_fu_898_p1();
    void thread_tmp_865_fu_433_p2();
    void thread_tmp_888_fu_415_p2();
    void thread_tmp_fu_355_p1();
    void thread_tmp_s_fu_359_p3();
    void thread_weights15_m_weights_1_address0();
    void thread_weights15_m_weights_1_ce0();
    void thread_weights15_m_weights_2_address0();
    void thread_weights15_m_weights_2_ce0();
    void thread_weights15_m_weights_3_address0();
    void thread_weights15_m_weights_3_ce0();
    void thread_weights15_m_weights_s_address0();
    void thread_weights15_m_weights_s_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
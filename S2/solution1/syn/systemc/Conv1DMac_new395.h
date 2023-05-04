// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DMac_new395_HH_
#define _Conv1DMac_new395_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "computeS2_mux_325yd2.h"
#include "Conv1DMac_new395_udo.h"
#include "Conv1DMac_new395_vdy.h"
#include "Conv1DMac_new395_wdI.h"
#include "Conv1DMac_new395_xdS.h"

namespace ap_rtl {

struct Conv1DMac_new395 : public sc_module {
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
    sc_signal< sc_lv<8> > ap_var_for_const2;
    sc_signal< sc_lv<8> > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const3;


    // Module declarations
    Conv1DMac_new395(sc_module_name name);
    SC_HAS_PROCESS(Conv1DMac_new395);

    ~Conv1DMac_new395();

    sc_trace_file* mVcdFile;

    Conv1DMac_new395_udo* weights6_m_weights_V_U;
    Conv1DMac_new395_vdy* weights6_m_weights_V_1_U;
    Conv1DMac_new395_wdI* weights6_m_weights_V_2_U;
    Conv1DMac_new395_xdS* weights6_m_weights_V_3_U;
    computeS2_mux_325yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* computeS2_mux_325yd2_U29;
    computeS2_mux_325yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* computeS2_mux_325yd2_U30;
    computeS2_mux_325yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* computeS2_mux_325yd2_U31;
    computeS2_mux_325yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* computeS2_mux_325yd2_U32;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<12> > weights6_m_weights_V_address0;
    sc_signal< sc_logic > weights6_m_weights_V_ce0;
    sc_signal< sc_lv<6> > weights6_m_weights_V_q0;
    sc_signal< sc_lv<12> > weights6_m_weights_V_1_address0;
    sc_signal< sc_logic > weights6_m_weights_V_1_ce0;
    sc_signal< sc_lv<7> > weights6_m_weights_V_1_q0;
    sc_signal< sc_lv<12> > weights6_m_weights_V_2_address0;
    sc_signal< sc_logic > weights6_m_weights_V_2_ce0;
    sc_signal< sc_lv<7> > weights6_m_weights_V_2_q0;
    sc_signal< sc_lv<12> > weights6_m_weights_V_3_address0;
    sc_signal< sc_logic > weights6_m_weights_V_3_ce0;
    sc_signal< sc_lv<7> > weights6_m_weights_V_3_q0;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten5_reg_1189;
    sc_signal< sc_lv<1> > exitcond_flatten5_reg_1189_pp0_iter1_reg;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > tmp_82_reg_1216;
    sc_signal< sc_lv<1> > tmp_82_reg_1216_pp0_iter3_reg;
    sc_signal< sc_lv<24> > indvar_flatten5_reg_217;
    sc_signal< sc_lv<14> > indvar_flatten_reg_228;
    sc_signal< sc_lv<6> > nm_reg_239;
    sc_signal< sc_lv<8> > sf_reg_250;
    sc_signal< sc_lv<1> > exitcond_flatten5_fu_293_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<24> > indvar_flatten_next5_fu_299_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<5> > nm_t_mid2_fu_393_p3;
    sc_signal< sc_lv<5> > nm_t_mid2_reg_1198;
    sc_signal< sc_lv<5> > nm_t_mid2_reg_1198_pp0_iter1_reg;
    sc_signal< sc_lv<5> > nm_t_mid2_reg_1198_pp0_iter2_reg;
    sc_signal< sc_lv<6> > nm_mid2_fu_401_p3;
    sc_signal< sc_lv<12> > tmp_68_fu_413_p2;
    sc_signal< sc_lv<12> > tmp_68_reg_1211;
    sc_signal< sc_lv<1> > tmp_82_fu_419_p2;
    sc_signal< sc_lv<1> > tmp_82_reg_1216_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_82_reg_1216_pp0_iter2_reg;
    sc_signal< sc_lv<8> > sf_1_fu_425_p2;
    sc_signal< sc_lv<14> > indvar_flatten_next_fu_437_p3;
    sc_signal< sc_lv<7> > tmp_s_reg_1250;
    sc_signal< sc_lv<1> > tmp_341_reg_1255;
    sc_signal< sc_lv<1> > tmp_74_fu_524_p2;
    sc_signal< sc_lv<1> > tmp_74_reg_1260;
    sc_signal< sc_lv<8> > tmp_90_reg_1265;
    sc_signal< sc_lv<1> > tmp_344_reg_1270;
    sc_signal< sc_lv<1> > tmp_203_1_fu_594_p2;
    sc_signal< sc_lv<1> > tmp_203_1_reg_1275;
    sc_signal< sc_lv<8> > tmp_91_reg_1280;
    sc_signal< sc_lv<1> > tmp_347_reg_1285;
    sc_signal< sc_lv<1> > tmp_203_2_fu_664_p2;
    sc_signal< sc_lv<1> > tmp_203_2_reg_1290;
    sc_signal< sc_lv<8> > tmp_92_reg_1295;
    sc_signal< sc_lv<1> > tmp_350_reg_1300;
    sc_signal< sc_lv<1> > tmp_203_3_fu_734_p2;
    sc_signal< sc_lv<1> > tmp_203_3_reg_1305;
    sc_signal< sc_lv<8> > p_Val2_7_fu_921_p2;
    sc_signal< sc_lv<8> > p_Val2_7_reg_1310;
    sc_signal< sc_lv<8> > p_Val2_20_1_fu_996_p2;
    sc_signal< sc_lv<8> > p_Val2_20_1_reg_1315;
    sc_signal< sc_lv<8> > p_Val2_20_2_fu_1071_p2;
    sc_signal< sc_lv<8> > p_Val2_20_2_reg_1320;
    sc_signal< sc_lv<8> > p_Val2_20_3_fu_1146_p2;
    sc_signal< sc_lv<8> > p_Val2_20_3_reg_1325;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > tmp_69_fu_445_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > macRegisters_0_V_3_fu_136;
    sc_signal< sc_lv<8> > macRegisters_0_V_fu_769_p2;
    sc_signal< sc_lv<8> > macRegisters_1_V_3_fu_140;
    sc_signal< sc_lv<8> > macRegisters_1_V_fu_789_p2;
    sc_signal< sc_lv<8> > macRegisters_2_V_3_fu_144;
    sc_signal< sc_lv<8> > macRegisters_2_V_fu_808_p2;
    sc_signal< sc_lv<8> > macRegisters_3_V_3_fu_148;
    sc_signal< sc_lv<8> > macRegisters_3_V_fu_827_p2;
    sc_signal< sc_lv<5> > tmp_fu_281_p1;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_305_p2;
    sc_signal< sc_lv<12> > tmp_65_fu_285_p3;
    sc_signal< sc_lv<1> > tmp_291_fu_341_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_335_p2;
    sc_signal< sc_lv<6> > nm_mid_fu_311_p3;
    sc_signal< sc_lv<1> > tmp_66_mid_fu_347_p2;
    sc_signal< sc_lv<1> > tmp_274_fu_359_p2;
    sc_signal< sc_lv<6> > nm_1_fu_353_p2;
    sc_signal< sc_lv<5> > tmp_339_fu_373_p1;
    sc_signal< sc_lv<12> > tmp_65_mid1_fu_377_p3;
    sc_signal< sc_lv<12> > tmp_65_mid_fu_319_p3;
    sc_signal< sc_lv<5> > nm_t_mid_fu_327_p3;
    sc_signal< sc_lv<8> > sf_mid2_fu_365_p3;
    sc_signal< sc_lv<12> > sf_cast1_fu_409_p1;
    sc_signal< sc_lv<12> > tmp_65_mid2_fu_385_p3;
    sc_signal< sc_lv<14> > indvar_flatten_op_fu_431_p2;
    sc_signal< sc_lv<8> > p_08_cast4_fu_452_p0;
    sc_signal< sc_lv<8> > p_08_cast4_cast_fu_456_p0;
    sc_signal< sc_lv<6> > p_Val2_s_fu_464_p0;
    sc_signal< sc_lv<8> > p_Val2_s_fu_464_p1;
    sc_signal< sc_lv<14> > p_Val2_s_fu_464_p2;
    sc_signal< sc_lv<1> > tmp_342_fu_496_p1;
    sc_signal< sc_lv<1> > tmp_340_fu_470_p3;
    sc_signal< sc_lv<5> > tmp_72_fu_506_p4;
    sc_signal< sc_lv<1> > tmp_71_fu_500_p2;
    sc_signal< sc_lv<6> > tmp_73_fu_516_p3;
    sc_signal< sc_lv<7> > p_Val2_1_fu_534_p0;
    sc_signal< sc_lv<8> > p_Val2_1_fu_534_p1;
    sc_signal< sc_lv<15> > p_08_cast4_fu_452_p1;
    sc_signal< sc_lv<15> > p_Val2_1_fu_534_p2;
    sc_signal< sc_lv<1> > tmp_345_fu_566_p1;
    sc_signal< sc_lv<1> > tmp_343_fu_540_p3;
    sc_signal< sc_lv<5> > tmp_78_fu_576_p4;
    sc_signal< sc_lv<1> > tmp_77_fu_570_p2;
    sc_signal< sc_lv<6> > tmp_79_fu_586_p3;
    sc_signal< sc_lv<7> > p_Val2_2_fu_604_p0;
    sc_signal< sc_lv<8> > p_Val2_2_fu_604_p1;
    sc_signal< sc_lv<15> > p_Val2_2_fu_604_p2;
    sc_signal< sc_lv<1> > tmp_348_fu_636_p1;
    sc_signal< sc_lv<1> > tmp_346_fu_610_p3;
    sc_signal< sc_lv<5> > tmp_83_fu_646_p4;
    sc_signal< sc_lv<1> > tmp_81_fu_640_p2;
    sc_signal< sc_lv<6> > tmp_84_fu_656_p3;
    sc_signal< sc_lv<7> > p_Val2_3_fu_674_p0;
    sc_signal< sc_lv<8> > p_Val2_3_fu_674_p1;
    sc_signal< sc_lv<15> > p_Val2_3_fu_674_p2;
    sc_signal< sc_lv<1> > tmp_351_fu_706_p1;
    sc_signal< sc_lv<1> > tmp_349_fu_680_p3;
    sc_signal< sc_lv<5> > tmp_87_fu_716_p4;
    sc_signal< sc_lv<1> > tmp_86_fu_710_p2;
    sc_signal< sc_lv<6> > tmp_88_fu_726_p3;
    sc_signal< sc_lv<1> > qb_assign_1_fu_755_p2;
    sc_signal< sc_lv<8> > tmp_75_fu_759_p1;
    sc_signal< sc_lv<8> > tmp_89_fu_752_p1;
    sc_signal< sc_lv<8> > tmp1_fu_763_p2;
    sc_signal< sc_lv<1> > qb_assign_1_1_fu_775_p2;
    sc_signal< sc_lv<8> > tmp_204_1_fu_779_p1;
    sc_signal< sc_lv<8> > tmp2_fu_783_p2;
    sc_signal< sc_lv<1> > qb_assign_1_2_fu_794_p2;
    sc_signal< sc_lv<8> > tmp_204_2_fu_798_p1;
    sc_signal< sc_lv<8> > tmp3_fu_802_p2;
    sc_signal< sc_lv<1> > qb_assign_1_3_fu_813_p2;
    sc_signal< sc_lv<8> > tmp_204_3_fu_817_p1;
    sc_signal< sc_lv<8> > tmp4_fu_821_p2;
    sc_signal< sc_lv<8> > tmp_93_fu_852_p34;
    sc_signal< sc_lv<8> > tmp_94_fu_927_p34;
    sc_signal< sc_lv<8> > tmp_95_fu_1002_p34;
    sc_signal< sc_lv<8> > tmp_96_fu_1077_p34;
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
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<24> ap_const_lv24_800000;
    static const sc_lv<24> ap_const_lv24_1;
    static const sc_lv<14> ap_const_lv14_1000;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const3();
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
    void thread_exitcond_flatten5_fu_293_p2();
    void thread_exitcond_flatten_fu_305_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next5_fu_299_p2();
    void thread_indvar_flatten_next_fu_437_p3();
    void thread_indvar_flatten_op_fu_431_p2();
    void thread_internal_ap_ready();
    void thread_macRegisters_0_V_fu_769_p2();
    void thread_macRegisters_1_V_fu_789_p2();
    void thread_macRegisters_2_V_fu_808_p2();
    void thread_macRegisters_3_V_fu_827_p2();
    void thread_nm_1_fu_353_p2();
    void thread_nm_mid2_fu_401_p3();
    void thread_nm_mid_fu_311_p3();
    void thread_nm_t_mid2_fu_393_p3();
    void thread_nm_t_mid_fu_327_p3();
    void thread_not_exitcond_flatten_fu_335_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_08_cast4_cast_fu_456_p0();
    void thread_p_08_cast4_fu_452_p0();
    void thread_p_08_cast4_fu_452_p1();
    void thread_p_Val2_1_fu_534_p0();
    void thread_p_Val2_1_fu_534_p1();
    void thread_p_Val2_1_fu_534_p2();
    void thread_p_Val2_20_1_fu_996_p2();
    void thread_p_Val2_20_2_fu_1071_p2();
    void thread_p_Val2_20_3_fu_1146_p2();
    void thread_p_Val2_2_fu_604_p0();
    void thread_p_Val2_2_fu_604_p1();
    void thread_p_Val2_2_fu_604_p2();
    void thread_p_Val2_3_fu_674_p0();
    void thread_p_Val2_3_fu_674_p1();
    void thread_p_Val2_3_fu_674_p2();
    void thread_p_Val2_7_fu_921_p2();
    void thread_p_Val2_s_fu_464_p0();
    void thread_p_Val2_s_fu_464_p1();
    void thread_p_Val2_s_fu_464_p2();
    void thread_qb_assign_1_1_fu_775_p2();
    void thread_qb_assign_1_2_fu_794_p2();
    void thread_qb_assign_1_3_fu_813_p2();
    void thread_qb_assign_1_fu_755_p2();
    void thread_real_start();
    void thread_sf_1_fu_425_p2();
    void thread_sf_cast1_fu_409_p1();
    void thread_sf_mid2_fu_365_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_fu_763_p2();
    void thread_tmp2_fu_783_p2();
    void thread_tmp3_fu_802_p2();
    void thread_tmp4_fu_821_p2();
    void thread_tmp_203_1_fu_594_p2();
    void thread_tmp_203_2_fu_664_p2();
    void thread_tmp_203_3_fu_734_p2();
    void thread_tmp_204_1_fu_779_p1();
    void thread_tmp_204_2_fu_798_p1();
    void thread_tmp_204_3_fu_817_p1();
    void thread_tmp_274_fu_359_p2();
    void thread_tmp_291_fu_341_p2();
    void thread_tmp_339_fu_373_p1();
    void thread_tmp_340_fu_470_p3();
    void thread_tmp_342_fu_496_p1();
    void thread_tmp_343_fu_540_p3();
    void thread_tmp_345_fu_566_p1();
    void thread_tmp_346_fu_610_p3();
    void thread_tmp_348_fu_636_p1();
    void thread_tmp_349_fu_680_p3();
    void thread_tmp_351_fu_706_p1();
    void thread_tmp_65_fu_285_p3();
    void thread_tmp_65_mid1_fu_377_p3();
    void thread_tmp_65_mid2_fu_385_p3();
    void thread_tmp_65_mid_fu_319_p3();
    void thread_tmp_66_mid_fu_347_p2();
    void thread_tmp_68_fu_413_p2();
    void thread_tmp_69_fu_445_p1();
    void thread_tmp_71_fu_500_p2();
    void thread_tmp_72_fu_506_p4();
    void thread_tmp_73_fu_516_p3();
    void thread_tmp_74_fu_524_p2();
    void thread_tmp_75_fu_759_p1();
    void thread_tmp_77_fu_570_p2();
    void thread_tmp_78_fu_576_p4();
    void thread_tmp_79_fu_586_p3();
    void thread_tmp_81_fu_640_p2();
    void thread_tmp_82_fu_419_p2();
    void thread_tmp_83_fu_646_p4();
    void thread_tmp_84_fu_656_p3();
    void thread_tmp_86_fu_710_p2();
    void thread_tmp_87_fu_716_p4();
    void thread_tmp_88_fu_726_p3();
    void thread_tmp_89_fu_752_p1();
    void thread_tmp_fu_281_p1();
    void thread_weights6_m_weights_V_1_address0();
    void thread_weights6_m_weights_V_1_ce0();
    void thread_weights6_m_weights_V_2_address0();
    void thread_weights6_m_weights_V_2_ce0();
    void thread_weights6_m_weights_V_3_address0();
    void thread_weights6_m_weights_V_3_ce0();
    void thread_weights6_m_weights_V_address0();
    void thread_weights6_m_weights_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

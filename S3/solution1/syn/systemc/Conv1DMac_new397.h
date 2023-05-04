// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DMac_new397_HH_
#define _Conv1DMac_new397_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "computeS3_mux_646yd2.h"
#include "Conv1DMac_new397_udo.h"
#include "Conv1DMac_new397_vdy.h"
#include "Conv1DMac_new397_wdI.h"
#include "Conv1DMac_new397_xdS.h"

namespace ap_rtl {

struct Conv1DMac_new397 : public sc_module {
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


    // Module declarations
    Conv1DMac_new397(sc_module_name name);
    SC_HAS_PROCESS(Conv1DMac_new397);

    ~Conv1DMac_new397();

    sc_trace_file* mVcdFile;

    Conv1DMac_new397_udo* weights11_m_weights_3_U;
    Conv1DMac_new397_vdy* weights11_m_weights_2_U;
    Conv1DMac_new397_wdI* weights11_m_weights_1_U;
    Conv1DMac_new397_xdS* weights11_m_weights_s_U;
    computeS3_mux_646yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_U27;
    computeS3_mux_646yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_U28;
    computeS3_mux_646yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_U29;
    computeS3_mux_646yd2<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,6,8>* computeS3_mux_646yd2_U30;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<14> > weights11_m_weights_3_address0;
    sc_signal< sc_logic > weights11_m_weights_3_ce0;
    sc_signal< sc_lv<5> > weights11_m_weights_3_q0;
    sc_signal< sc_lv<14> > weights11_m_weights_2_address0;
    sc_signal< sc_logic > weights11_m_weights_2_ce0;
    sc_signal< sc_lv<5> > weights11_m_weights_2_q0;
    sc_signal< sc_lv<14> > weights11_m_weights_1_address0;
    sc_signal< sc_logic > weights11_m_weights_1_ce0;
    sc_signal< sc_lv<5> > weights11_m_weights_1_q0;
    sc_signal< sc_lv<14> > weights11_m_weights_s_address0;
    sc_signal< sc_logic > weights11_m_weights_s_ce0;
    sc_signal< sc_lv<5> > weights11_m_weights_s_q0;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1470;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1470_pp0_iter1_reg;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > tmp_226_reg_1497;
    sc_signal< sc_lv<1> > tmp_226_reg_1497_pp0_iter3_reg;
    sc_signal< sc_lv<25> > indvar_flatten2_reg_211;
    sc_signal< sc_lv<16> > indvar_flatten_reg_222;
    sc_signal< sc_lv<7> > nm_reg_233;
    sc_signal< sc_lv<9> > sf_reg_244;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_287_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_1470_pp0_iter2_reg;
    sc_signal< sc_lv<25> > indvar_flatten_next1_fu_293_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > nm_t_mid2_fu_387_p3;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1479;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1479_pp0_iter1_reg;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1479_pp0_iter2_reg;
    sc_signal< sc_lv<6> > nm_t_mid2_reg_1479_pp0_iter3_reg;
    sc_signal< sc_lv<7> > nm_mid2_fu_395_p3;
    sc_signal< sc_lv<14> > tmp_206_fu_407_p2;
    sc_signal< sc_lv<14> > tmp_206_reg_1492;
    sc_signal< sc_lv<1> > tmp_226_fu_413_p2;
    sc_signal< sc_lv<1> > tmp_226_reg_1497_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_226_reg_1497_pp0_iter2_reg;
    sc_signal< sc_lv<9> > sf_2_fu_419_p2;
    sc_signal< sc_lv<16> > indvar_flatten_next_fu_431_p3;
    sc_signal< sc_lv<8> > tmp_V_reg_1531;
    sc_signal< sc_lv<5> > weights11_m_weights_5_reg_1536;
    sc_signal< sc_lv<5> > weights11_m_weights_7_reg_1541;
    sc_signal< sc_lv<5> > weights11_m_weights_9_reg_1546;
    sc_signal< sc_lv<5> > weights11_m_weights_11_reg_1551;
    sc_signal< sc_lv<7> > tmp1_fu_532_p2;
    sc_signal< sc_lv<7> > tmp1_reg_1556;
    sc_signal< sc_lv<7> > tmp2_fu_621_p2;
    sc_signal< sc_lv<7> > tmp2_reg_1561;
    sc_signal< sc_lv<7> > tmp3_fu_710_p2;
    sc_signal< sc_lv<7> > tmp3_reg_1566;
    sc_signal< sc_lv<7> > tmp4_fu_799_p2;
    sc_signal< sc_lv<7> > tmp4_reg_1571;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > tmp_207_fu_439_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > macRegisters_0_V_7_fu_130;
    sc_signal< sc_lv<8> > macRegisters_0_V_fu_820_p2;
    sc_signal< sc_lv<8> > macRegisters_1_V_7_fu_134;
    sc_signal< sc_lv<8> > macRegisters_1_V_fu_829_p2;
    sc_signal< sc_lv<8> > macRegisters_2_V_7_fu_138;
    sc_signal< sc_lv<8> > macRegisters_2_V_fu_838_p2;
    sc_signal< sc_lv<8> > macRegisters_3_V_7_fu_142;
    sc_signal< sc_lv<8> > macRegisters_3_V_fu_847_p2;
    sc_signal< sc_lv<6> > tmp_fu_275_p1;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_299_p2;
    sc_signal< sc_lv<14> > tmp_s_fu_279_p3;
    sc_signal< sc_lv<1> > tmp_887_fu_335_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_329_p2;
    sc_signal< sc_lv<7> > nm_mid_fu_305_p3;
    sc_signal< sc_lv<1> > tmp_235_mid_fu_341_p2;
    sc_signal< sc_lv<1> > tmp_863_fu_353_p2;
    sc_signal< sc_lv<7> > nm_2_fu_347_p2;
    sc_signal< sc_lv<6> > tmp_992_fu_367_p1;
    sc_signal< sc_lv<14> > tmp_234_mid1_fu_371_p3;
    sc_signal< sc_lv<14> > tmp_234_mid_fu_313_p3;
    sc_signal< sc_lv<6> > nm_t_mid_fu_321_p3;
    sc_signal< sc_lv<9> > sf_mid2_fu_359_p3;
    sc_signal< sc_lv<14> > tmp_234_mid2_fu_379_p3;
    sc_signal< sc_lv<14> > sf_cast1_fu_403_p1;
    sc_signal< sc_lv<16> > indvar_flatten_op_fu_425_p2;
    sc_signal< sc_lv<8> > p_Val2_s_fu_452_p0;
    sc_signal< sc_lv<13> > p_08_cast_cast_fu_446_p1;
    sc_signal< sc_lv<5> > p_Val2_s_fu_452_p1;
    sc_signal< sc_lv<13> > p_Val2_s_fu_452_p2;
    sc_signal< sc_lv<6> > tmp_994_fu_466_p4;
    sc_signal< sc_lv<1> > tmp_996_fu_488_p1;
    sc_signal< sc_lv<1> > tmp_993_fu_458_p3;
    sc_signal< sc_lv<5> > tmp_210_fu_498_p4;
    sc_signal< sc_lv<1> > tmp_209_fu_492_p2;
    sc_signal< sc_lv<6> > tmp_211_fu_508_p3;
    sc_signal< sc_lv<1> > tmp_212_fu_516_p2;
    sc_signal< sc_lv<1> > tmp_995_fu_480_p3;
    sc_signal< sc_lv<1> > qb_assign_2_fu_522_p2;
    sc_signal< sc_lv<7> > p_Val2_cast_fu_476_p1;
    sc_signal< sc_lv<7> > tmp_213_cast_fu_528_p1;
    sc_signal< sc_lv<8> > p_Val2_1_fu_541_p0;
    sc_signal< sc_lv<5> > p_Val2_1_fu_541_p1;
    sc_signal< sc_lv<13> > p_Val2_1_fu_541_p2;
    sc_signal< sc_lv<6> > tmp_998_fu_555_p4;
    sc_signal< sc_lv<1> > tmp_1000_fu_577_p1;
    sc_signal< sc_lv<1> > tmp_997_fu_547_p3;
    sc_signal< sc_lv<5> > tmp_216_fu_587_p4;
    sc_signal< sc_lv<1> > tmp_215_fu_581_p2;
    sc_signal< sc_lv<6> > tmp_217_fu_597_p3;
    sc_signal< sc_lv<1> > tmp_279_1_fu_605_p2;
    sc_signal< sc_lv<1> > tmp_999_fu_569_p3;
    sc_signal< sc_lv<1> > qb_assign_2_1_fu_611_p2;
    sc_signal< sc_lv<7> > p_Val2_93_1_cast_fu_565_p1;
    sc_signal< sc_lv<7> > tmp_280_1_cast_fu_617_p1;
    sc_signal< sc_lv<8> > p_Val2_2_fu_630_p0;
    sc_signal< sc_lv<5> > p_Val2_2_fu_630_p1;
    sc_signal< sc_lv<13> > p_Val2_2_fu_630_p2;
    sc_signal< sc_lv<6> > tmp_1002_fu_644_p4;
    sc_signal< sc_lv<1> > tmp_1004_fu_666_p1;
    sc_signal< sc_lv<1> > tmp_1001_fu_636_p3;
    sc_signal< sc_lv<5> > tmp_220_fu_676_p4;
    sc_signal< sc_lv<1> > tmp_219_fu_670_p2;
    sc_signal< sc_lv<6> > tmp_221_fu_686_p3;
    sc_signal< sc_lv<1> > tmp_279_2_fu_694_p2;
    sc_signal< sc_lv<1> > tmp_1003_fu_658_p3;
    sc_signal< sc_lv<1> > qb_assign_2_2_fu_700_p2;
    sc_signal< sc_lv<7> > p_Val2_93_2_cast_fu_654_p1;
    sc_signal< sc_lv<7> > tmp_280_2_cast_fu_706_p1;
    sc_signal< sc_lv<8> > p_Val2_3_fu_719_p0;
    sc_signal< sc_lv<5> > p_Val2_3_fu_719_p1;
    sc_signal< sc_lv<13> > p_Val2_3_fu_719_p2;
    sc_signal< sc_lv<6> > tmp_1006_fu_733_p4;
    sc_signal< sc_lv<1> > tmp_1008_fu_755_p1;
    sc_signal< sc_lv<1> > tmp_1005_fu_725_p3;
    sc_signal< sc_lv<5> > tmp_224_fu_765_p4;
    sc_signal< sc_lv<1> > tmp_223_fu_759_p2;
    sc_signal< sc_lv<6> > tmp_225_fu_775_p3;
    sc_signal< sc_lv<1> > tmp_279_3_fu_783_p2;
    sc_signal< sc_lv<1> > tmp_1007_fu_747_p3;
    sc_signal< sc_lv<1> > qb_assign_2_3_fu_789_p2;
    sc_signal< sc_lv<7> > p_Val2_93_3_cast_fu_743_p1;
    sc_signal< sc_lv<7> > tmp_280_3_cast_fu_795_p1;
    sc_signal< sc_lv<8> > tmp1_cast_fu_817_p1;
    sc_signal< sc_lv<8> > tmp2_cast_fu_826_p1;
    sc_signal< sc_lv<8> > tmp3_cast_fu_835_p1;
    sc_signal< sc_lv<8> > tmp4_cast_fu_844_p1;
    sc_signal< sc_lv<8> > tmp_159_fu_873_p66;
    sc_signal< sc_lv<8> > tmp_160_fu_1012_p66;
    sc_signal< sc_lv<8> > tmp_161_fu_1151_p66;
    sc_signal< sc_lv<8> > tmp_162_fu_1290_p66;
    sc_signal< sc_lv<8> > p_Val2_23_3_fu_1423_p2;
    sc_signal< sc_lv<8> > p_Val2_23_2_fu_1284_p2;
    sc_signal< sc_lv<8> > p_Val2_23_1_fu_1145_p2;
    sc_signal< sc_lv<8> > p_Val2_4_fu_1006_p2;
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
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
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
    void thread_exitcond_flatten2_fu_299_p2();
    void thread_exitcond_flatten_fu_287_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next1_fu_293_p2();
    void thread_indvar_flatten_next_fu_431_p3();
    void thread_indvar_flatten_op_fu_425_p2();
    void thread_internal_ap_ready();
    void thread_macRegisters_0_V_fu_820_p2();
    void thread_macRegisters_1_V_fu_829_p2();
    void thread_macRegisters_2_V_fu_838_p2();
    void thread_macRegisters_3_V_fu_847_p2();
    void thread_nm_2_fu_347_p2();
    void thread_nm_mid2_fu_395_p3();
    void thread_nm_mid_fu_305_p3();
    void thread_nm_t_mid2_fu_387_p3();
    void thread_nm_t_mid_fu_321_p3();
    void thread_not_exitcond_flatten_fu_329_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_08_cast_cast_fu_446_p1();
    void thread_p_Val2_1_fu_541_p0();
    void thread_p_Val2_1_fu_541_p1();
    void thread_p_Val2_1_fu_541_p2();
    void thread_p_Val2_23_1_fu_1145_p2();
    void thread_p_Val2_23_2_fu_1284_p2();
    void thread_p_Val2_23_3_fu_1423_p2();
    void thread_p_Val2_2_fu_630_p0();
    void thread_p_Val2_2_fu_630_p1();
    void thread_p_Val2_2_fu_630_p2();
    void thread_p_Val2_3_fu_719_p0();
    void thread_p_Val2_3_fu_719_p1();
    void thread_p_Val2_3_fu_719_p2();
    void thread_p_Val2_4_fu_1006_p2();
    void thread_p_Val2_93_1_cast_fu_565_p1();
    void thread_p_Val2_93_2_cast_fu_654_p1();
    void thread_p_Val2_93_3_cast_fu_743_p1();
    void thread_p_Val2_cast_fu_476_p1();
    void thread_p_Val2_s_fu_452_p0();
    void thread_p_Val2_s_fu_452_p1();
    void thread_p_Val2_s_fu_452_p2();
    void thread_qb_assign_2_1_fu_611_p2();
    void thread_qb_assign_2_2_fu_700_p2();
    void thread_qb_assign_2_3_fu_789_p2();
    void thread_qb_assign_2_fu_522_p2();
    void thread_real_start();
    void thread_sf_2_fu_419_p2();
    void thread_sf_cast1_fu_403_p1();
    void thread_sf_mid2_fu_359_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_cast_fu_817_p1();
    void thread_tmp1_fu_532_p2();
    void thread_tmp2_cast_fu_826_p1();
    void thread_tmp2_fu_621_p2();
    void thread_tmp3_cast_fu_835_p1();
    void thread_tmp3_fu_710_p2();
    void thread_tmp4_cast_fu_844_p1();
    void thread_tmp4_fu_799_p2();
    void thread_tmp_1000_fu_577_p1();
    void thread_tmp_1001_fu_636_p3();
    void thread_tmp_1002_fu_644_p4();
    void thread_tmp_1003_fu_658_p3();
    void thread_tmp_1004_fu_666_p1();
    void thread_tmp_1005_fu_725_p3();
    void thread_tmp_1006_fu_733_p4();
    void thread_tmp_1007_fu_747_p3();
    void thread_tmp_1008_fu_755_p1();
    void thread_tmp_206_fu_407_p2();
    void thread_tmp_207_fu_439_p1();
    void thread_tmp_209_fu_492_p2();
    void thread_tmp_210_fu_498_p4();
    void thread_tmp_211_fu_508_p3();
    void thread_tmp_212_fu_516_p2();
    void thread_tmp_213_cast_fu_528_p1();
    void thread_tmp_215_fu_581_p2();
    void thread_tmp_216_fu_587_p4();
    void thread_tmp_217_fu_597_p3();
    void thread_tmp_219_fu_670_p2();
    void thread_tmp_220_fu_676_p4();
    void thread_tmp_221_fu_686_p3();
    void thread_tmp_223_fu_759_p2();
    void thread_tmp_224_fu_765_p4();
    void thread_tmp_225_fu_775_p3();
    void thread_tmp_226_fu_413_p2();
    void thread_tmp_234_mid1_fu_371_p3();
    void thread_tmp_234_mid2_fu_379_p3();
    void thread_tmp_234_mid_fu_313_p3();
    void thread_tmp_235_mid_fu_341_p2();
    void thread_tmp_279_1_fu_605_p2();
    void thread_tmp_279_2_fu_694_p2();
    void thread_tmp_279_3_fu_783_p2();
    void thread_tmp_280_1_cast_fu_617_p1();
    void thread_tmp_280_2_cast_fu_706_p1();
    void thread_tmp_280_3_cast_fu_795_p1();
    void thread_tmp_863_fu_353_p2();
    void thread_tmp_887_fu_335_p2();
    void thread_tmp_992_fu_367_p1();
    void thread_tmp_993_fu_458_p3();
    void thread_tmp_994_fu_466_p4();
    void thread_tmp_995_fu_480_p3();
    void thread_tmp_996_fu_488_p1();
    void thread_tmp_997_fu_547_p3();
    void thread_tmp_998_fu_555_p4();
    void thread_tmp_999_fu_569_p3();
    void thread_tmp_fu_275_p1();
    void thread_tmp_s_fu_279_p3();
    void thread_weights11_m_weights_1_address0();
    void thread_weights11_m_weights_1_ce0();
    void thread_weights11_m_weights_2_address0();
    void thread_weights11_m_weights_2_ce0();
    void thread_weights11_m_weights_3_address0();
    void thread_weights11_m_weights_3_ce0();
    void thread_weights11_m_weights_s_address0();
    void thread_weights11_m_weights_s_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
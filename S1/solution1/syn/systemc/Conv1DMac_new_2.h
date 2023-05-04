// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DMac_new_2_HH_
#define _Conv1DMac_new_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Conv1DMac_new_2_wcud.h"
#include "Conv1DMac_new_2_wdEe.h"
#include "Conv1DMac_new_2_weOg.h"
#include "Conv1DMac_new_2_wfYi.h"

namespace ap_rtl {

struct Conv1DMac_new_2 : public sc_module {
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


    // Module declarations
    Conv1DMac_new_2(sc_module_name name);
    SC_HAS_PROCESS(Conv1DMac_new_2);

    ~Conv1DMac_new_2();

    sc_trace_file* mVcdFile;

    Conv1DMac_new_2_wcud* weights0_m_weights_V_U;
    Conv1DMac_new_2_wdEe* weights0_m_weights_V_1_U;
    Conv1DMac_new_2_weOg* weights0_m_weights_V_2_U;
    Conv1DMac_new_2_wfYi* weights0_m_weights_V_3_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<5> > weights0_m_weights_V_address0;
    sc_signal< sc_logic > weights0_m_weights_V_ce0;
    sc_signal< sc_lv<6> > weights0_m_weights_V_q0;
    sc_signal< sc_lv<5> > weights0_m_weights_V_1_address0;
    sc_signal< sc_logic > weights0_m_weights_V_1_ce0;
    sc_signal< sc_lv<6> > weights0_m_weights_V_1_q0;
    sc_signal< sc_lv<5> > weights0_m_weights_V_2_address0;
    sc_signal< sc_logic > weights0_m_weights_V_2_ce0;
    sc_signal< sc_lv<6> > weights0_m_weights_V_2_q0;
    sc_signal< sc_lv<5> > weights0_m_weights_V_3_address0;
    sc_signal< sc_logic > weights0_m_weights_V_3_ce0;
    sc_signal< sc_lv<6> > weights0_m_weights_V_3_q0;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten6_reg_1530;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > tmp_106_reg_1569;
    sc_signal< sc_lv<1> > tmp_106_reg_1569_pp0_iter2_reg;
    sc_signal< sc_lv<14> > indvar_flatten6_reg_225;
    sc_signal< sc_lv<6> > indvar_flatten_reg_236;
    sc_signal< sc_lv<4> > nm_reg_247;
    sc_signal< sc_lv<2> > sf_reg_258;
    sc_signal< sc_lv<1> > exitcond_flatten6_fu_555_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten6_reg_1530_pp0_iter1_reg;
    sc_signal< sc_lv<14> > indvar_flatten_next6_fu_561_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<6> > newSel57_cast_mid2_fu_829_p3;
    sc_signal< sc_lv<6> > newSel57_cast_mid2_reg_1539;
    sc_signal< sc_lv<6> > newSel57_cast_mid2_reg_1539_pp0_iter1_reg;
    sc_signal< sc_lv<6> > newSel57_cast_mid2_reg_1539_pp0_iter2_reg;
    sc_signal< sc_lv<6> > newSel71_cast_mid2_fu_875_p3;
    sc_signal< sc_lv<6> > newSel71_cast_mid2_reg_1544;
    sc_signal< sc_lv<6> > newSel71_cast_mid2_reg_1544_pp0_iter1_reg;
    sc_signal< sc_lv<6> > newSel71_cast_mid2_reg_1544_pp0_iter2_reg;
    sc_signal< sc_lv<6> > newSel85_cast_mid2_fu_939_p3;
    sc_signal< sc_lv<6> > newSel85_cast_mid2_reg_1549;
    sc_signal< sc_lv<6> > newSel85_cast_mid2_reg_1549_pp0_iter1_reg;
    sc_signal< sc_lv<6> > newSel85_cast_mid2_reg_1549_pp0_iter2_reg;
    sc_signal< sc_lv<6> > newSel99_cast_mid2_fu_979_p3;
    sc_signal< sc_lv<6> > newSel99_cast_mid2_reg_1554;
    sc_signal< sc_lv<6> > newSel99_cast_mid2_reg_1554_pp0_iter1_reg;
    sc_signal< sc_lv<6> > newSel99_cast_mid2_reg_1554_pp0_iter2_reg;
    sc_signal< sc_lv<4> > nm_mid2_fu_987_p3;
    sc_signal< sc_lv<6> > tmp_104_fu_999_p2;
    sc_signal< sc_lv<6> > tmp_104_reg_1564;
    sc_signal< sc_lv<1> > tmp_106_fu_1005_p2;
    sc_signal< sc_lv<1> > tmp_106_reg_1569_pp0_iter1_reg;
    sc_signal< sc_lv<2> > sf_2_fu_1011_p2;
    sc_signal< sc_lv<6> > indvar_flatten_next_fu_1023_p3;
    sc_signal< sc_lv<8> > tmp_V_reg_1583;
    sc_signal< sc_lv<7> > tmp_115_reg_1608;
    sc_signal< sc_lv<1> > qb_assign_3_fu_1115_p2;
    sc_signal< sc_lv<1> > qb_assign_3_reg_1613;
    sc_signal< sc_lv<7> > tmp_123_reg_1618;
    sc_signal< sc_lv<1> > qb_assign_3_1_fu_1191_p2;
    sc_signal< sc_lv<1> > qb_assign_3_1_reg_1623;
    sc_signal< sc_lv<7> > tmp_129_reg_1628;
    sc_signal< sc_lv<1> > qb_assign_3_2_fu_1267_p2;
    sc_signal< sc_lv<1> > qb_assign_3_2_reg_1633;
    sc_signal< sc_lv<7> > tmp_135_reg_1638;
    sc_signal< sc_lv<1> > qb_assign_3_3_fu_1343_p2;
    sc_signal< sc_lv<1> > qb_assign_3_3_reg_1643;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<64> > tmp_105_fu_1034_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<8> > macRegisters_0_V_4_fu_144;
    sc_signal< sc_lv<8> > macRegisters_0_V_fu_1385_p2;
    sc_signal< sc_lv<8> > macRegisters_1_V_4_fu_148;
    sc_signal< sc_lv<8> > macRegisters_1_V_fu_1403_p2;
    sc_signal< sc_lv<8> > macRegisters_2_V_4_fu_152;
    sc_signal< sc_lv<8> > macRegisters_2_V_fu_1421_p2;
    sc_signal< sc_lv<8> > macRegisters_3_V_4_fu_156;
    sc_signal< sc_lv<8> > macRegisters_3_V_fu_1439_p2;
    sc_signal< sc_lv<3> > tmp_fu_293_p1;
    sc_signal< sc_lv<5> > p_shl_fu_297_p3;
    sc_signal< sc_lv<6> > p_shl_cast_fu_305_p1;
    sc_signal< sc_lv<6> > nm_cast1_fu_289_p1;
    sc_signal< sc_lv<1> > tmp_109_fu_351_p2;
    sc_signal< sc_lv<1> > tmp_108_fu_345_p2;
    sc_signal< sc_lv<1> > tmp_107_fu_339_p2;
    sc_signal< sc_lv<1> > tmp_102_fu_333_p2;
    sc_signal< sc_lv<1> > tmp_101_fu_327_p2;
    sc_signal< sc_lv<1> > tmp_100_fu_321_p2;
    sc_signal< sc_lv<1> > tmp_99_fu_315_p2;
    sc_signal< sc_lv<1> > tmp_110_fu_357_p2;
    sc_signal< sc_lv<6> > newSel_fu_375_p3;
    sc_signal< sc_lv<6> > newSel1_fu_383_p3;
    sc_signal< sc_lv<1> > tmp_111_fu_363_p2;
    sc_signal< sc_lv<1> > tmp_112_fu_369_p2;
    sc_signal< sc_lv<6> > newSel2_fu_391_p3;
    sc_signal< sc_lv<6> > newSel3_fu_399_p3;
    sc_signal< sc_lv<1> > or_cond_fu_415_p2;
    sc_signal< sc_lv<6> > newSel4_fu_407_p3;
    sc_signal< sc_lv<6> > newSel5_fu_421_p3;
    sc_signal< sc_lv<6> > newSel7_fu_437_p3;
    sc_signal< sc_lv<1> > tmp_113_fu_453_p2;
    sc_signal< sc_lv<6> > newSel8_fu_445_p3;
    sc_signal< sc_lv<6> > newSel9_fu_459_p3;
    sc_signal< sc_lv<6> > newSel11_fu_475_p3;
    sc_signal< sc_lv<6> > newSel12_fu_483_p3;
    sc_signal< sc_lv<6> > newSel13_fu_491_p3;
    sc_signal< sc_lv<6> > newSel14_fu_499_p3;
    sc_signal< sc_lv<6> > newSel15_fu_507_p3;
    sc_signal< sc_lv<6> > newSel16_fu_515_p3;
    sc_signal< sc_lv<6> > newSel18_fu_531_p3;
    sc_signal< sc_lv<6> > newSel93_cast_cast_fu_539_p3;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_567_p2;
    sc_signal< sc_lv<6> > tmp_s_fu_309_p2;
    sc_signal< sc_lv<6> > newSel6_fu_429_p3;
    sc_signal< sc_lv<6> > newSel10_fu_467_p3;
    sc_signal< sc_lv<6> > newSel17_fu_523_p3;
    sc_signal< sc_lv<1> > tmp_633_fu_621_p2;
    sc_signal< sc_lv<6> > newSel20_fu_613_p3;
    sc_signal< sc_lv<6> > newSel19_fu_547_p3;
    sc_signal< sc_lv<1> > tmp_357_fu_641_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_635_p2;
    sc_signal< sc_lv<4> > nm_mid_fu_573_p3;
    sc_signal< sc_lv<1> > tmp_103_mid_fu_647_p2;
    sc_signal< sc_lv<1> > tmp_358_fu_659_p2;
    sc_signal< sc_lv<4> > nm_2_fu_653_p2;
    sc_signal< sc_lv<3> > tmp_634_fu_677_p1;
    sc_signal< sc_lv<5> > p_shl_mid1_fu_681_p3;
    sc_signal< sc_lv<6> > p_shl_cast_mid1_fu_689_p1;
    sc_signal< sc_lv<6> > nm_cast1_mid1_fu_673_p1;
    sc_signal< sc_lv<6> > tmp_102_mid1_fu_693_p2;
    sc_signal< sc_lv<6> > tmp_102_mid_fu_581_p3;
    sc_signal< sc_lv<1> > tmp_292_mid1_fu_743_p2;
    sc_signal< sc_lv<1> > tmp_291_mid1_fu_737_p2;
    sc_signal< sc_lv<1> > tmp_290_mid1_fu_731_p2;
    sc_signal< sc_lv<1> > tmp_289_mid1_fu_725_p2;
    sc_signal< sc_lv<1> > tmp_288_mid1_fu_719_p2;
    sc_signal< sc_lv<1> > tmp_287_mid1_fu_713_p2;
    sc_signal< sc_lv<1> > tmp_286_mid1_fu_707_p2;
    sc_signal< sc_lv<1> > tmp_293_mid1_fu_749_p2;
    sc_signal< sc_lv<6> > newSel_mid1_fu_767_p3;
    sc_signal< sc_lv<6> > newSel1_mid1_fu_775_p3;
    sc_signal< sc_lv<1> > tmp_294_mid1_fu_755_p2;
    sc_signal< sc_lv<1> > tmp_295_mid1_fu_761_p2;
    sc_signal< sc_lv<6> > newSel2_mid1_fu_783_p3;
    sc_signal< sc_lv<6> > newSel3_mid1_fu_791_p3;
    sc_signal< sc_lv<1> > or_cond_mid1_fu_807_p2;
    sc_signal< sc_lv<6> > newSel4_mid1_fu_799_p3;
    sc_signal< sc_lv<6> > newSel5_mid1_fu_813_p3;
    sc_signal< sc_lv<6> > newSel6_mid1_fu_821_p3;
    sc_signal< sc_lv<6> > newSel57_cast_mid_fu_589_p3;
    sc_signal< sc_lv<6> > newSel7_mid1_fu_837_p3;
    sc_signal< sc_lv<1> > tmp_308_mid1_fu_853_p2;
    sc_signal< sc_lv<6> > newSel8_mid1_fu_845_p3;
    sc_signal< sc_lv<6> > newSel9_mid1_fu_859_p3;
    sc_signal< sc_lv<6> > newSel10_mid1_fu_867_p3;
    sc_signal< sc_lv<6> > newSel71_cast_mid_fu_597_p3;
    sc_signal< sc_lv<6> > newSel11_mid1_fu_883_p3;
    sc_signal< sc_lv<6> > newSel12_mid1_fu_891_p3;
    sc_signal< sc_lv<6> > newSel13_mid1_fu_899_p3;
    sc_signal< sc_lv<6> > newSel14_mid1_fu_907_p3;
    sc_signal< sc_lv<6> > newSel15_mid1_fu_915_p3;
    sc_signal< sc_lv<6> > newSel16_mid1_fu_923_p3;
    sc_signal< sc_lv<6> > newSel17_mid1_fu_931_p3;
    sc_signal< sc_lv<6> > newSel85_cast_mid_fu_605_p3;
    sc_signal< sc_lv<6> > newSel18_mid1_fu_947_p3;
    sc_signal< sc_lv<6> > newSel93_cast_mid1_c_fu_955_p3;
    sc_signal< sc_lv<6> > newSel19_mid1_fu_963_p3;
    sc_signal< sc_lv<6> > newSel20_mid1_fu_971_p3;
    sc_signal< sc_lv<6> > newSel99_cast_mid_fu_627_p3;
    sc_signal< sc_lv<2> > sf_mid2_fu_665_p3;
    sc_signal< sc_lv<6> > sf_cast_fu_995_p1;
    sc_signal< sc_lv<6> > tmp_102_mid2_fu_699_p3;
    sc_signal< sc_lv<6> > indvar_flatten_op_fu_1017_p2;
    sc_signal< sc_lv<32> > tmp_104_cast_fu_1031_p1;
    sc_signal< sc_lv<6> > p_Val2_s_142_fu_1049_p0;
    sc_signal< sc_lv<8> > p_Val2_s_142_fu_1049_p1;
    sc_signal< sc_lv<14> > p_08_cast_cast_fu_1042_p1;
    sc_signal< sc_lv<14> > p_Val2_s_142_fu_1049_p2;
    sc_signal< sc_lv<1> > tmp_637_fu_1081_p1;
    sc_signal< sc_lv<1> > tmp_635_fu_1055_p3;
    sc_signal< sc_lv<5> > tmp_119_fu_1091_p4;
    sc_signal< sc_lv<1> > tmp_118_fu_1085_p2;
    sc_signal< sc_lv<6> > tmp_120_fu_1101_p3;
    sc_signal< sc_lv<1> > tmp_121_fu_1109_p2;
    sc_signal< sc_lv<1> > tmp_636_fu_1073_p3;
    sc_signal< sc_lv<6> > p_Val2_1_fu_1125_p0;
    sc_signal< sc_lv<8> > p_Val2_1_fu_1125_p1;
    sc_signal< sc_lv<14> > p_Val2_1_fu_1125_p2;
    sc_signal< sc_lv<1> > tmp_640_fu_1157_p1;
    sc_signal< sc_lv<1> > tmp_638_fu_1131_p3;
    sc_signal< sc_lv<5> > tmp_127_fu_1167_p4;
    sc_signal< sc_lv<1> > tmp_126_fu_1161_p2;
    sc_signal< sc_lv<6> > tmp_128_fu_1177_p3;
    sc_signal< sc_lv<1> > tmp_251_1_fu_1185_p2;
    sc_signal< sc_lv<1> > tmp_639_fu_1149_p3;
    sc_signal< sc_lv<6> > p_Val2_2_fu_1201_p0;
    sc_signal< sc_lv<8> > p_Val2_2_fu_1201_p1;
    sc_signal< sc_lv<14> > p_Val2_2_fu_1201_p2;
    sc_signal< sc_lv<1> > tmp_643_fu_1233_p1;
    sc_signal< sc_lv<1> > tmp_641_fu_1207_p3;
    sc_signal< sc_lv<5> > tmp_133_fu_1243_p4;
    sc_signal< sc_lv<1> > tmp_132_fu_1237_p2;
    sc_signal< sc_lv<6> > tmp_134_fu_1253_p3;
    sc_signal< sc_lv<1> > tmp_251_2_fu_1261_p2;
    sc_signal< sc_lv<1> > tmp_642_fu_1225_p3;
    sc_signal< sc_lv<6> > p_Val2_3_fu_1277_p0;
    sc_signal< sc_lv<8> > p_Val2_3_fu_1277_p1;
    sc_signal< sc_lv<14> > p_Val2_3_fu_1277_p2;
    sc_signal< sc_lv<1> > tmp_646_fu_1309_p1;
    sc_signal< sc_lv<1> > tmp_644_fu_1283_p3;
    sc_signal< sc_lv<5> > tmp_139_fu_1319_p4;
    sc_signal< sc_lv<1> > tmp_138_fu_1313_p2;
    sc_signal< sc_lv<6> > tmp_140_fu_1329_p3;
    sc_signal< sc_lv<1> > tmp_251_3_fu_1337_p2;
    sc_signal< sc_lv<1> > tmp_645_fu_1301_p3;
    sc_signal< sc_lv<8> > tmp_122_fu_1376_p1;
    sc_signal< sc_lv<8> > tmp_116_fu_1373_p1;
    sc_signal< sc_lv<8> > tmp43_fu_1379_p2;
    sc_signal< sc_lv<8> > tmp_252_1_fu_1394_p1;
    sc_signal< sc_lv<8> > tmp_124_fu_1391_p1;
    sc_signal< sc_lv<8> > tmp44_fu_1397_p2;
    sc_signal< sc_lv<8> > tmp_252_2_fu_1412_p1;
    sc_signal< sc_lv<8> > tmp_130_fu_1409_p1;
    sc_signal< sc_lv<8> > tmp45_fu_1415_p2;
    sc_signal< sc_lv<8> > tmp_252_3_fu_1430_p1;
    sc_signal< sc_lv<8> > tmp_136_fu_1427_p1;
    sc_signal< sc_lv<8> > tmp46_fu_1433_p2;
    sc_signal< sc_lv<8> > newSel57_cast_mid2_c_fu_1361_p1;
    sc_signal< sc_lv<8> > newSel71_cast_mid2_c_fu_1364_p1;
    sc_signal< sc_lv<8> > newSel85_cast_mid2_c_fu_1367_p1;
    sc_signal< sc_lv<8> > newSel99_cast_mid2_c_fu_1370_p1;
    sc_signal< sc_lv<8> > p_Val2_24_3_fu_1483_p2;
    sc_signal< sc_lv<8> > p_Val2_24_2_fu_1477_p2;
    sc_signal< sc_lv<8> > p_Val2_24_1_fu_1471_p2;
    sc_signal< sc_lv<8> > p_Val2_s_fu_1465_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<6> ap_const_lv6_23;
    static const sc_lv<6> ap_const_lv6_21;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_24;
    static const sc_lv<6> ap_const_lv6_25;
    static const sc_lv<6> ap_const_lv6_1D;
    static const sc_lv<14> ap_const_lv14_3000;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_exitcond_flatten6_fu_555_p2();
    void thread_exitcond_flatten_fu_567_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next6_fu_561_p2();
    void thread_indvar_flatten_next_fu_1023_p3();
    void thread_indvar_flatten_op_fu_1017_p2();
    void thread_internal_ap_ready();
    void thread_macRegisters_0_V_fu_1385_p2();
    void thread_macRegisters_1_V_fu_1403_p2();
    void thread_macRegisters_2_V_fu_1421_p2();
    void thread_macRegisters_3_V_fu_1439_p2();
    void thread_newSel10_fu_467_p3();
    void thread_newSel10_mid1_fu_867_p3();
    void thread_newSel11_fu_475_p3();
    void thread_newSel11_mid1_fu_883_p3();
    void thread_newSel12_fu_483_p3();
    void thread_newSel12_mid1_fu_891_p3();
    void thread_newSel13_fu_491_p3();
    void thread_newSel13_mid1_fu_899_p3();
    void thread_newSel14_fu_499_p3();
    void thread_newSel14_mid1_fu_907_p3();
    void thread_newSel15_fu_507_p3();
    void thread_newSel15_mid1_fu_915_p3();
    void thread_newSel16_fu_515_p3();
    void thread_newSel16_mid1_fu_923_p3();
    void thread_newSel17_fu_523_p3();
    void thread_newSel17_mid1_fu_931_p3();
    void thread_newSel18_fu_531_p3();
    void thread_newSel18_mid1_fu_947_p3();
    void thread_newSel19_fu_547_p3();
    void thread_newSel19_mid1_fu_963_p3();
    void thread_newSel1_fu_383_p3();
    void thread_newSel1_mid1_fu_775_p3();
    void thread_newSel20_fu_613_p3();
    void thread_newSel20_mid1_fu_971_p3();
    void thread_newSel2_fu_391_p3();
    void thread_newSel2_mid1_fu_783_p3();
    void thread_newSel3_fu_399_p3();
    void thread_newSel3_mid1_fu_791_p3();
    void thread_newSel4_fu_407_p3();
    void thread_newSel4_mid1_fu_799_p3();
    void thread_newSel57_cast_mid2_c_fu_1361_p1();
    void thread_newSel57_cast_mid2_fu_829_p3();
    void thread_newSel57_cast_mid_fu_589_p3();
    void thread_newSel5_fu_421_p3();
    void thread_newSel5_mid1_fu_813_p3();
    void thread_newSel6_fu_429_p3();
    void thread_newSel6_mid1_fu_821_p3();
    void thread_newSel71_cast_mid2_c_fu_1364_p1();
    void thread_newSel71_cast_mid2_fu_875_p3();
    void thread_newSel71_cast_mid_fu_597_p3();
    void thread_newSel7_fu_437_p3();
    void thread_newSel7_mid1_fu_837_p3();
    void thread_newSel85_cast_mid2_c_fu_1367_p1();
    void thread_newSel85_cast_mid2_fu_939_p3();
    void thread_newSel85_cast_mid_fu_605_p3();
    void thread_newSel8_fu_445_p3();
    void thread_newSel8_mid1_fu_845_p3();
    void thread_newSel93_cast_cast_fu_539_p3();
    void thread_newSel93_cast_mid1_c_fu_955_p3();
    void thread_newSel99_cast_mid2_c_fu_1370_p1();
    void thread_newSel99_cast_mid2_fu_979_p3();
    void thread_newSel99_cast_mid_fu_627_p3();
    void thread_newSel9_fu_459_p3();
    void thread_newSel9_mid1_fu_859_p3();
    void thread_newSel_fu_375_p3();
    void thread_newSel_mid1_fu_767_p3();
    void thread_nm_2_fu_653_p2();
    void thread_nm_cast1_fu_289_p1();
    void thread_nm_cast1_mid1_fu_673_p1();
    void thread_nm_mid2_fu_987_p3();
    void thread_nm_mid_fu_573_p3();
    void thread_not_exitcond_flatten_fu_635_p2();
    void thread_or_cond_fu_415_p2();
    void thread_or_cond_mid1_fu_807_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_08_cast_cast_fu_1042_p1();
    void thread_p_Val2_1_fu_1125_p0();
    void thread_p_Val2_1_fu_1125_p1();
    void thread_p_Val2_1_fu_1125_p2();
    void thread_p_Val2_24_1_fu_1471_p2();
    void thread_p_Val2_24_2_fu_1477_p2();
    void thread_p_Val2_24_3_fu_1483_p2();
    void thread_p_Val2_2_fu_1201_p0();
    void thread_p_Val2_2_fu_1201_p1();
    void thread_p_Val2_2_fu_1201_p2();
    void thread_p_Val2_3_fu_1277_p0();
    void thread_p_Val2_3_fu_1277_p1();
    void thread_p_Val2_3_fu_1277_p2();
    void thread_p_Val2_s_142_fu_1049_p0();
    void thread_p_Val2_s_142_fu_1049_p1();
    void thread_p_Val2_s_142_fu_1049_p2();
    void thread_p_Val2_s_fu_1465_p2();
    void thread_p_shl_cast_fu_305_p1();
    void thread_p_shl_cast_mid1_fu_689_p1();
    void thread_p_shl_fu_297_p3();
    void thread_p_shl_mid1_fu_681_p3();
    void thread_qb_assign_3_1_fu_1191_p2();
    void thread_qb_assign_3_2_fu_1267_p2();
    void thread_qb_assign_3_3_fu_1343_p2();
    void thread_qb_assign_3_fu_1115_p2();
    void thread_real_start();
    void thread_sf_2_fu_1011_p2();
    void thread_sf_cast_fu_995_p1();
    void thread_sf_mid2_fu_665_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp43_fu_1379_p2();
    void thread_tmp44_fu_1397_p2();
    void thread_tmp45_fu_1415_p2();
    void thread_tmp46_fu_1433_p2();
    void thread_tmp_100_fu_321_p2();
    void thread_tmp_101_fu_327_p2();
    void thread_tmp_102_fu_333_p2();
    void thread_tmp_102_mid1_fu_693_p2();
    void thread_tmp_102_mid2_fu_699_p3();
    void thread_tmp_102_mid_fu_581_p3();
    void thread_tmp_103_mid_fu_647_p2();
    void thread_tmp_104_cast_fu_1031_p1();
    void thread_tmp_104_fu_999_p2();
    void thread_tmp_105_fu_1034_p1();
    void thread_tmp_106_fu_1005_p2();
    void thread_tmp_107_fu_339_p2();
    void thread_tmp_108_fu_345_p2();
    void thread_tmp_109_fu_351_p2();
    void thread_tmp_110_fu_357_p2();
    void thread_tmp_111_fu_363_p2();
    void thread_tmp_112_fu_369_p2();
    void thread_tmp_113_fu_453_p2();
    void thread_tmp_116_fu_1373_p1();
    void thread_tmp_118_fu_1085_p2();
    void thread_tmp_119_fu_1091_p4();
    void thread_tmp_120_fu_1101_p3();
    void thread_tmp_121_fu_1109_p2();
    void thread_tmp_122_fu_1376_p1();
    void thread_tmp_124_fu_1391_p1();
    void thread_tmp_126_fu_1161_p2();
    void thread_tmp_127_fu_1167_p4();
    void thread_tmp_128_fu_1177_p3();
    void thread_tmp_130_fu_1409_p1();
    void thread_tmp_132_fu_1237_p2();
    void thread_tmp_133_fu_1243_p4();
    void thread_tmp_134_fu_1253_p3();
    void thread_tmp_136_fu_1427_p1();
    void thread_tmp_138_fu_1313_p2();
    void thread_tmp_139_fu_1319_p4();
    void thread_tmp_140_fu_1329_p3();
    void thread_tmp_251_1_fu_1185_p2();
    void thread_tmp_251_2_fu_1261_p2();
    void thread_tmp_251_3_fu_1337_p2();
    void thread_tmp_252_1_fu_1394_p1();
    void thread_tmp_252_2_fu_1412_p1();
    void thread_tmp_252_3_fu_1430_p1();
    void thread_tmp_286_mid1_fu_707_p2();
    void thread_tmp_287_mid1_fu_713_p2();
    void thread_tmp_288_mid1_fu_719_p2();
    void thread_tmp_289_mid1_fu_725_p2();
    void thread_tmp_290_mid1_fu_731_p2();
    void thread_tmp_291_mid1_fu_737_p2();
    void thread_tmp_292_mid1_fu_743_p2();
    void thread_tmp_293_mid1_fu_749_p2();
    void thread_tmp_294_mid1_fu_755_p2();
    void thread_tmp_295_mid1_fu_761_p2();
    void thread_tmp_308_mid1_fu_853_p2();
    void thread_tmp_357_fu_641_p2();
    void thread_tmp_358_fu_659_p2();
    void thread_tmp_633_fu_621_p2();
    void thread_tmp_634_fu_677_p1();
    void thread_tmp_635_fu_1055_p3();
    void thread_tmp_636_fu_1073_p3();
    void thread_tmp_637_fu_1081_p1();
    void thread_tmp_638_fu_1131_p3();
    void thread_tmp_639_fu_1149_p3();
    void thread_tmp_640_fu_1157_p1();
    void thread_tmp_641_fu_1207_p3();
    void thread_tmp_642_fu_1225_p3();
    void thread_tmp_643_fu_1233_p1();
    void thread_tmp_644_fu_1283_p3();
    void thread_tmp_645_fu_1301_p3();
    void thread_tmp_646_fu_1309_p1();
    void thread_tmp_99_fu_315_p2();
    void thread_tmp_fu_293_p1();
    void thread_tmp_s_fu_309_p2();
    void thread_weights0_m_weights_V_1_address0();
    void thread_weights0_m_weights_V_1_ce0();
    void thread_weights0_m_weights_V_2_address0();
    void thread_weights0_m_weights_V_2_ce0();
    void thread_weights0_m_weights_V_3_address0();
    void thread_weights0_m_weights_V_3_ce0();
    void thread_weights0_m_weights_V_address0();
    void thread_weights0_m_weights_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
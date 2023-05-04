// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DBuffer_new402_HH_
#define _Conv1DBuffer_new402_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Conv1DBuffer_new3tde.h"

namespace ap_rtl {

struct Conv1DBuffer_new402 : public sc_module {
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
    sc_out< sc_lv<8> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;


    // Module declarations
    Conv1DBuffer_new402(sc_module_name name);
    SC_HAS_PROCESS(Conv1DBuffer_new402);

    ~Conv1DBuffer_new402();

    sc_trace_file* mVcdFile;

    Conv1DBuffer_new3tde* inputBuf_0_V_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_reg_388;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > or_cond_mid2_reg_411;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_lv<1> > exitcond_flatten8_reg_397;
    sc_signal< sc_lv<8> > ptr_simd_reg_135;
    sc_signal< sc_lv<20> > indvar_flatten8_reg_147;
    sc_signal< sc_lv<8> > op1_assign_reg_158;
    sc_signal< sc_lv<14> > indvar_flatten_reg_169;
    sc_signal< sc_lv<6> > nm_reg_180;
    sc_signal< sc_lv<8> > ptr_simd4_reg_191;
    sc_signal< sc_lv<1> > tmp_fu_202_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<8> > ptr_simd_1_fu_208_p2;
    sc_signal< sc_lv<8> > ptr_simd_1_reg_392;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten8_fu_237_p2;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<20> > indvar_flatten_next8_fu_243_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<8> > op1_assign_mid2_fu_307_p3;
    sc_signal< sc_lv<1> > or_cond_mid2_fu_347_p3;
    sc_signal< sc_lv<6> > nm_mid2_fu_355_p3;
    sc_signal< sc_lv<7> > inputBuf_0_V_addr_1_reg_420;
    sc_signal< sc_lv<8> > ptr_simd_2_fu_368_p2;
    sc_signal< sc_lv<14> > indvar_flatten_next_fu_380_p3;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state5;
    sc_signal< sc_lv<7> > inputBuf_0_V_address0;
    sc_signal< sc_logic > inputBuf_0_V_ce0;
    sc_signal< sc_logic > inputBuf_0_V_we0;
    sc_signal< sc_lv<8> > inputBuf_0_V_q0;
    sc_signal< sc_logic > inputBuf_0_V_ce1;
    sc_signal< sc_logic > inputBuf_0_V_we1;
    sc_signal< sc_lv<8> > ap_phi_mux_ptr_simd_phi_fu_139_p4;
    sc_signal< sc_lv<64> > tmp_s_fu_214_p1;
    sc_signal< sc_lv<64> > tmp_124_fu_363_p1;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<1> > tmp_120_fu_219_p2;
    sc_signal< sc_lv<1> > tmp_122_fu_225_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_255_p2;
    sc_signal< sc_lv<8> > ofm_iter_fu_249_p2;
    sc_signal< sc_lv<1> > tmp_120_mid1_fu_269_p2;
    sc_signal< sc_lv<1> > or_cond_fu_231_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_283_p2;
    sc_signal< sc_lv<1> > tmp_293_fu_295_p2;
    sc_signal< sc_lv<6> > nm_mid_fu_261_p3;
    sc_signal< sc_lv<1> > tmp_123_mid_fu_301_p2;
    sc_signal< sc_lv<1> > tmp_280_fu_321_p2;
    sc_signal< sc_lv<6> > nm_3_fu_315_p2;
    sc_signal< sc_lv<1> > tmp_120_mid2_fu_275_p3;
    sc_signal< sc_lv<1> > tmp_122_mid1_fu_335_p2;
    sc_signal< sc_lv<1> > or_cond_mid1_fu_341_p2;
    sc_signal< sc_lv<1> > or_cond_mid_fu_289_p2;
    sc_signal< sc_lv<8> > ptr_simd4_mid2_fu_327_p3;
    sc_signal< sc_lv<14> > indvar_flatten_op_fu_374_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_pp1_stage0;
    static const sc_lv<5> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<20> ap_const_lv20_80000;
    static const sc_lv<20> ap_const_lv20_1;
    static const sc_lv<14> ap_const_lv14_1000;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state5_pp1_stage0_iter0();
    void thread_ap_block_state6_pp1_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_ptr_simd_phi_fu_139_p4();
    void thread_ap_ready();
    void thread_exitcond_flatten8_fu_237_p2();
    void thread_exitcond_flatten_fu_255_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next8_fu_243_p2();
    void thread_indvar_flatten_next_fu_380_p3();
    void thread_indvar_flatten_op_fu_374_p2();
    void thread_inputBuf_0_V_address0();
    void thread_inputBuf_0_V_ce0();
    void thread_inputBuf_0_V_ce1();
    void thread_inputBuf_0_V_we0();
    void thread_inputBuf_0_V_we1();
    void thread_internal_ap_ready();
    void thread_nm_3_fu_315_p2();
    void thread_nm_mid2_fu_355_p3();
    void thread_nm_mid_fu_261_p3();
    void thread_not_exitcond_flatten_fu_283_p2();
    void thread_ofm_iter_fu_249_p2();
    void thread_op1_assign_mid2_fu_307_p3();
    void thread_or_cond_fu_231_p2();
    void thread_or_cond_mid1_fu_341_p2();
    void thread_or_cond_mid2_fu_347_p3();
    void thread_or_cond_mid_fu_289_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_ptr_simd4_mid2_fu_327_p3();
    void thread_ptr_simd_1_fu_208_p2();
    void thread_ptr_simd_2_fu_368_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_120_fu_219_p2();
    void thread_tmp_120_mid1_fu_269_p2();
    void thread_tmp_120_mid2_fu_275_p3();
    void thread_tmp_122_fu_225_p2();
    void thread_tmp_122_mid1_fu_335_p2();
    void thread_tmp_123_mid_fu_301_p2();
    void thread_tmp_124_fu_363_p1();
    void thread_tmp_280_fu_321_p2();
    void thread_tmp_293_fu_295_p2();
    void thread_tmp_fu_202_p2();
    void thread_tmp_s_fu_214_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

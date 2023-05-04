// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Conv1DBuffer_new412_HH_
#define _Conv1DBuffer_new412_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Conv1DBuffer_new3tde.h"

namespace ap_rtl {

struct Conv1DBuffer_new412 : public sc_module {
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
    Conv1DBuffer_new412(sc_module_name name);
    SC_HAS_PROCESS(Conv1DBuffer_new412);

    ~Conv1DBuffer_new412();

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
    sc_signal< sc_lv<1> > tmp_reg_386;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > or_cond_mid2_reg_409;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_395;
    sc_signal< sc_lv<9> > ptr_simd_reg_133;
    sc_signal< sc_lv<21> > indvar_flatten7_reg_145;
    sc_signal< sc_lv<7> > op1_assign_reg_156;
    sc_signal< sc_lv<16> > indvar_flatten_reg_167;
    sc_signal< sc_lv<7> > nm_reg_178;
    sc_signal< sc_lv<9> > ptr_simd4_reg_189;
    sc_signal< sc_lv<1> > tmp_fu_200_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > ptr_simd_1_fu_206_p2;
    sc_signal< sc_lv<9> > ptr_simd_1_reg_390;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_235_p2;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<21> > indvar_flatten_next1_fu_241_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<7> > op1_assign_mid2_fu_305_p3;
    sc_signal< sc_lv<1> > or_cond_mid2_fu_345_p3;
    sc_signal< sc_lv<7> > nm_mid2_fu_353_p3;
    sc_signal< sc_lv<8> > inputBuf_0_V_addr_3_reg_418;
    sc_signal< sc_lv<9> > ptr_simd_2_fu_366_p2;
    sc_signal< sc_lv<16> > indvar_flatten_next_fu_378_p3;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state5;
    sc_signal< sc_lv<8> > inputBuf_0_V_address0;
    sc_signal< sc_logic > inputBuf_0_V_ce0;
    sc_signal< sc_logic > inputBuf_0_V_we0;
    sc_signal< sc_lv<8> > inputBuf_0_V_q0;
    sc_signal< sc_logic > inputBuf_0_V_ce1;
    sc_signal< sc_logic > inputBuf_0_V_we1;
    sc_signal< sc_lv<9> > ap_phi_mux_ptr_simd_phi_fu_137_p4;
    sc_signal< sc_lv<64> > tmp_s_fu_212_p1;
    sc_signal< sc_lv<64> > tmp_266_fu_361_p1;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<1> > tmp_263_fu_217_p2;
    sc_signal< sc_lv<1> > tmp_264_fu_223_p2;
    sc_signal< sc_lv<1> > exitcond_flatten7_fu_253_p2;
    sc_signal< sc_lv<7> > ofm_iter_fu_247_p2;
    sc_signal< sc_lv<1> > tmp_286_mid1_fu_267_p2;
    sc_signal< sc_lv<1> > or_cond_fu_229_p2;
    sc_signal< sc_lv<1> > not_exitcond_flatten_fu_281_p2;
    sc_signal< sc_lv<1> > tmp_891_fu_293_p2;
    sc_signal< sc_lv<7> > nm_mid_fu_259_p3;
    sc_signal< sc_lv<1> > tmp_289_mid_fu_299_p2;
    sc_signal< sc_lv<1> > tmp_871_fu_319_p2;
    sc_signal< sc_lv<7> > nm_3_fu_313_p2;
    sc_signal< sc_lv<1> > tmp_286_mid2_fu_273_p3;
    sc_signal< sc_lv<1> > tmp_288_mid1_fu_333_p2;
    sc_signal< sc_lv<1> > or_cond_mid1_fu_339_p2;
    sc_signal< sc_lv<1> > or_cond_mid_fu_287_p2;
    sc_signal< sc_lv<9> > ptr_simd4_mid2_fu_325_p3;
    sc_signal< sc_lv<16> > indvar_flatten_op_fu_372_p2;
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
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<7> ap_const_lv7_3F;
    static const sc_lv<21> ap_const_lv21_100000;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<16> ap_const_lv16_4000;
    static const sc_lv<16> ap_const_lv16_1;
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
    void thread_ap_phi_mux_ptr_simd_phi_fu_137_p4();
    void thread_ap_ready();
    void thread_exitcond_flatten7_fu_253_p2();
    void thread_exitcond_flatten_fu_235_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next1_fu_241_p2();
    void thread_indvar_flatten_next_fu_378_p3();
    void thread_indvar_flatten_op_fu_372_p2();
    void thread_inputBuf_0_V_address0();
    void thread_inputBuf_0_V_ce0();
    void thread_inputBuf_0_V_ce1();
    void thread_inputBuf_0_V_we0();
    void thread_inputBuf_0_V_we1();
    void thread_internal_ap_ready();
    void thread_nm_3_fu_313_p2();
    void thread_nm_mid2_fu_353_p3();
    void thread_nm_mid_fu_259_p3();
    void thread_not_exitcond_flatten_fu_281_p2();
    void thread_ofm_iter_fu_247_p2();
    void thread_op1_assign_mid2_fu_305_p3();
    void thread_or_cond_fu_229_p2();
    void thread_or_cond_mid1_fu_339_p2();
    void thread_or_cond_mid2_fu_345_p3();
    void thread_or_cond_mid_fu_287_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_ptr_simd4_mid2_fu_325_p3();
    void thread_ptr_simd_1_fu_206_p2();
    void thread_ptr_simd_2_fu_366_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_263_fu_217_p2();
    void thread_tmp_264_fu_223_p2();
    void thread_tmp_266_fu_361_p1();
    void thread_tmp_286_mid1_fu_267_p2();
    void thread_tmp_286_mid2_fu_273_p3();
    void thread_tmp_288_mid1_fu_333_p2();
    void thread_tmp_289_mid_fu_299_p2();
    void thread_tmp_871_fu_319_p2();
    void thread_tmp_891_fu_293_p2();
    void thread_tmp_fu_200_p2();
    void thread_tmp_s_fu_212_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

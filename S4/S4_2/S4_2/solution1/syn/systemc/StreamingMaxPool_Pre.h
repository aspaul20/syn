// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _StreamingMaxPool_Pre_HH_
#define _StreamingMaxPool_Pre_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "StreamingMaxPool_ibs.h"

namespace ap_rtl {

struct StreamingMaxPool_Pre : public sc_module {
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
    sc_signal< sc_lv<8> > ap_var_for_const0;


    // Module declarations
    StreamingMaxPool_Pre(sc_module_name name);
    SC_HAS_PROCESS(StreamingMaxPool_Pre);

    ~StreamingMaxPool_Pre();

    sc_trace_file* mVcdFile;

    StreamingMaxPool_ibs* buf_0_V_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_299;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<1> > tmp_8_reg_322;
    sc_signal< sc_lv<13> > indvar_flatten_reg_160;
    sc_signal< sc_lv<9> > ch4_reg_171;
    sc_signal< sc_lv<9> > ch6_reg_182;
    sc_signal< sc_lv<9> > ch_1_fu_199_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_3_fu_210_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > xp_1_fu_216_p2;
    sc_signal< sc_lv<6> > xp_1_reg_294;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_222_p2;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<13> > indvar_flatten_next_fu_228_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<8> > buf_0_V_addr_2_reg_308;
    sc_signal< sc_lv<9> > ch_3_fu_253_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_265_p2;
    sc_signal< bool > ap_block_state8_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp2_stage0_iter1;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<9> > ch_2_fu_271_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<8> > buf_0_V_addr_1_reg_331;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state8;
    sc_signal< sc_lv<8> > buf_0_V_address0;
    sc_signal< sc_logic > buf_0_V_ce0;
    sc_signal< sc_logic > buf_0_V_we0;
    sc_signal< sc_lv<8> > buf_0_V_q0;
    sc_signal< sc_lv<8> > buf_0_V_address1;
    sc_signal< sc_logic > buf_0_V_ce1;
    sc_signal< sc_logic > buf_0_V_we1;
    sc_signal< sc_lv<8> > buf_0_V_q1;
    sc_signal< sc_lv<9> > ch_reg_138;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > tmp_fu_193_p2;
    sc_signal< sc_lv<6> > xp_reg_149;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_1_fu_205_p1;
    sc_signal< sc_lv<64> > tmp_4_fu_248_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_277_p1;
    sc_signal< bool > ap_block_pp2_stage0_01001;
    sc_signal< sc_lv<1> > tmp_9_fu_259_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_234_p2;
    sc_signal< sc_lv<9> > ch4_mid2_fu_240_p3;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_pp1_stage0;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_pp2_stage0;
    static const sc_lv<8> ap_ST_fsm_state10;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<13> ap_const_lv13_1000;
    static const sc_lv<13> ap_const_lv13_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_01001();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state5_pp1_stage0_iter0();
    void thread_ap_block_state6_pp1_stage0_iter1();
    void thread_ap_block_state8_pp2_stage0_iter0();
    void thread_ap_block_state9_pp2_stage0_iter1();
    void thread_ap_condition_pp1_exit_iter0_state5();
    void thread_ap_condition_pp2_exit_iter0_state8();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_ready();
    void thread_buf_0_V_address0();
    void thread_buf_0_V_address1();
    void thread_buf_0_V_ce0();
    void thread_buf_0_V_ce1();
    void thread_buf_0_V_we0();
    void thread_buf_0_V_we1();
    void thread_ch4_mid2_fu_240_p3();
    void thread_ch_1_fu_199_p2();
    void thread_ch_2_fu_271_p2();
    void thread_ch_3_fu_253_p2();
    void thread_exitcond_flatten_fu_222_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_indvar_flatten_next_fu_228_p2();
    void thread_internal_ap_ready();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_1_fu_205_p1();
    void thread_tmp_2_fu_234_p2();
    void thread_tmp_3_fu_210_p2();
    void thread_tmp_4_fu_248_p1();
    void thread_tmp_8_fu_265_p2();
    void thread_tmp_9_fu_259_p2();
    void thread_tmp_fu_193_p2();
    void thread_tmp_s_fu_277_p1();
    void thread_xp_1_fu_216_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

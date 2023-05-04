// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _StreamingDataWidthCo_2_HH_
#define _StreamingDataWidthCo_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct StreamingDataWidthCo_2 : public sc_module {
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
    sc_in< sc_lv<32> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<8> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;


    // Module declarations
    StreamingDataWidthCo_2(sc_module_name name);
    SC_HAS_PROCESS(StreamingDataWidthCo_2);

    ~StreamingDataWidthCo_2();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_reg_189;
    sc_signal< sc_lv<1> > tmp_reg_198;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_lv<24> > p_1_reg_87;
    sc_signal< sc_lv<32> > o_reg_99;
    sc_signal< sc_lv<19> > t_reg_110;
    sc_signal< sc_lv<1> > exitcond_fu_131_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op23_read_state3;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<19> > t_1_fu_137_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_fu_143_p2;
    sc_signal< sc_lv<32> > p_s_fu_161_p3;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_lv<32> > ap_phi_mux_p_Val2_s_phi_fu_124_p4;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_p_Val2_s_reg_121;
    sc_signal< sc_lv<32> > p_1_cast_fu_169_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > o_1_fu_149_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_155_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_70;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<19> ap_const_lv19_0;
    static const sc_lv<19> ap_const_lv19_40000;
    static const sc_lv<19> ap_const_lv19_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_70();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_p_Val2_s_phi_fu_124_p4();
    void thread_ap_phi_reg_pp0_iter1_p_Val2_s_reg_121();
    void thread_ap_predicate_op23_read_state3();
    void thread_ap_ready();
    void thread_exitcond_fu_131_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_internal_ap_ready();
    void thread_o_1_fu_149_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_p_1_cast_fu_169_p1();
    void thread_p_s_fu_161_p3();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_t_1_fu_137_p2();
    void thread_tmp_fu_143_p2();
    void thread_tmp_s_fu_155_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

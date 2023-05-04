// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ResizeStream_HH_
#define _ResizeStream_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct ResizeStream : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_out< sc_lv<64> > out_V_V_TDATA;
    sc_out< sc_logic > out_V_V_TVALID;
    sc_in< sc_logic > out_V_V_TREADY;


    // Module declarations
    ResizeStream(sc_module_name name);
    SC_HAS_PROCESS(ResizeStream);

    ~ResizeStream();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > out_V_V_1_data_out;
    sc_signal< sc_logic > out_V_V_1_vld_in;
    sc_signal< sc_logic > out_V_V_1_vld_out;
    sc_signal< sc_logic > out_V_V_1_ack_in;
    sc_signal< sc_logic > out_V_V_1_ack_out;
    sc_signal< sc_lv<64> > out_V_V_1_payload_A;
    sc_signal< sc_lv<64> > out_V_V_1_payload_B;
    sc_signal< sc_logic > out_V_V_1_sel_rd;
    sc_signal< sc_logic > out_V_V_1_sel_wr;
    sc_signal< sc_logic > out_V_V_1_sel;
    sc_signal< sc_logic > out_V_V_1_load_A;
    sc_signal< sc_logic > out_V_V_1_load_B;
    sc_signal< sc_lv<2> > out_V_V_1_state;
    sc_signal< sc_logic > out_V_V_1_state_cmp_full;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_72_p2;
    sc_signal< sc_logic > out_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<9> > i_1_fu_78_p2;
    sc_signal< sc_lv<9> > i_1_reg_92;
    sc_signal< bool > ap_block_state2;
    sc_signal< bool > ap_block_state2_io;
    sc_signal< sc_lv<64> > outWrite_V_fu_84_p1;
    sc_signal< sc_lv<9> > i_reg_61;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state2_io();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_1_fu_78_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_outWrite_V_fu_84_p1();
    void thread_out_V_V_1_ack_in();
    void thread_out_V_V_1_ack_out();
    void thread_out_V_V_1_data_out();
    void thread_out_V_V_1_load_A();
    void thread_out_V_V_1_load_B();
    void thread_out_V_V_1_sel();
    void thread_out_V_V_1_state_cmp_full();
    void thread_out_V_V_1_vld_in();
    void thread_out_V_V_1_vld_out();
    void thread_out_V_V_TDATA();
    void thread_out_V_V_TDATA_blk_n();
    void thread_out_V_V_TVALID();
    void thread_tmp_fu_72_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

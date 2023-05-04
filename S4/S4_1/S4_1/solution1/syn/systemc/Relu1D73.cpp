// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Relu1D73.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Relu1D73::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Relu1D73::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Relu1D73::ap_ST_fsm_state1 = "1";
const sc_lv<3> Relu1D73::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> Relu1D73::ap_ST_fsm_state4 = "100";
const bool Relu1D73::ap_const_boolean_1 = true;
const sc_lv<32> Relu1D73::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Relu1D73::ap_const_lv32_1 = "1";
const bool Relu1D73::ap_const_boolean_0 = false;
const sc_lv<1> Relu1D73::ap_const_lv1_0 = "0";
const sc_lv<1> Relu1D73::ap_const_lv1_1 = "1";
const sc_lv<16> Relu1D73::ap_const_lv16_0 = "0000000000000000";
const sc_lv<16> Relu1D73::ap_const_lv16_8000 = "1000000000000000";
const sc_lv<16> Relu1D73::ap_const_lv16_1 = "1";
const sc_lv<32> Relu1D73::ap_const_lv32_1F = "11111";
const sc_lv<31> Relu1D73::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<32> Relu1D73::ap_const_lv32_2 = "10";

Relu1D73::Relu1D73(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( tmp_fu_96_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_i_2_fu_102_p2);
    sensitive << ( i_reg_85 );

    SC_METHOD(thread_in_V_V_blk_n);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_in_V_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_out_V_V_blk_n);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( tmp_reg_133 );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( tmp_V_5_fu_120_p3 );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( tmp_reg_133 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_tmp_4_fu_108_p1);
    sensitive << ( in_V_V_dout );

    SC_METHOD(thread_tmp_5_fu_112_p3);
    sensitive << ( in_V_V_dout );

    SC_METHOD(thread_tmp_V_5_fu_120_p3);
    sensitive << ( tmp_5_fu_112_p3 );
    sensitive << ( tmp_4_fu_108_p1 );

    SC_METHOD(thread_tmp_fu_96_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_reg_85 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_fu_96_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Relu1D73_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, in_V_V_dout, "(port)in_V_V_dout");
    sc_trace(mVcdFile, in_V_V_empty_n, "(port)in_V_V_empty_n");
    sc_trace(mVcdFile, in_V_V_read, "(port)in_V_V_read");
    sc_trace(mVcdFile, out_V_V_din, "(port)out_V_V_din");
    sc_trace(mVcdFile, out_V_V_full_n, "(port)out_V_V_full_n");
    sc_trace(mVcdFile, out_V_V_write, "(port)out_V_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, in_V_V_blk_n, "in_V_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, tmp_reg_133, "tmp_reg_133");
    sc_trace(mVcdFile, out_V_V_blk_n, "out_V_V_blk_n");
    sc_trace(mVcdFile, i_reg_85, "i_reg_85");
    sc_trace(mVcdFile, tmp_fu_96_p2, "tmp_fu_96_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_2_fu_102_p2, "i_2_fu_102_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, tmp_5_fu_112_p3, "tmp_5_fu_112_p3");
    sc_trace(mVcdFile, tmp_4_fu_108_p1, "tmp_4_fu_108_p1");
    sc_trace(mVcdFile, tmp_V_5_fu_120_p3, "tmp_V_5_fu_120_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

Relu1D73::~Relu1D73() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Relu1D73::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read())) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_fu_96_p2.read()))) {
        i_reg_85 = i_2_fu_102_p2.read();
    } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        i_reg_85 = ap_const_lv16_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        tmp_reg_133 = tmp_fu_96_p2.read();
    }
}

void Relu1D73::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Relu1D73::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Relu1D73::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void Relu1D73::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Relu1D73::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void Relu1D73::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void Relu1D73::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read())) || 
  (esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void Relu1D73::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Relu1D73::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Relu1D73::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read())) || (esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read())));
}

void Relu1D73::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(tmp_fu_96_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void Relu1D73::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Relu1D73::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Relu1D73::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Relu1D73::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Relu1D73::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void Relu1D73::thread_i_2_fu_102_p2() {
    i_2_fu_102_p2 = (!i_reg_85.read().is_01() || !ap_const_lv16_1.is_01())? sc_lv<16>(): (sc_biguint<16>(i_reg_85.read()) + sc_biguint<16>(ap_const_lv16_1));
}

void Relu1D73::thread_in_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0))) {
        in_V_V_blk_n = in_V_V_empty_n.read();
    } else {
        in_V_V_blk_n = ap_const_logic_1;
    }
}

void Relu1D73::thread_in_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        in_V_V_read = ap_const_logic_1;
    } else {
        in_V_V_read = ap_const_logic_0;
    }
}

void Relu1D73::thread_internal_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void Relu1D73::thread_out_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0))) {
        out_V_V_blk_n = out_V_V_full_n.read();
    } else {
        out_V_V_blk_n = ap_const_logic_1;
    }
}

void Relu1D73::thread_out_V_V_din() {
    out_V_V_din = esl_zext<32,31>(tmp_V_5_fu_120_p3.read());
}

void Relu1D73::thread_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(tmp_reg_133.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        out_V_V_write = ap_const_logic_1;
    } else {
        out_V_V_write = ap_const_logic_0;
    }
}

void Relu1D73::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void Relu1D73::thread_start_out() {
    start_out = real_start.read();
}

void Relu1D73::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void Relu1D73::thread_tmp_4_fu_108_p1() {
    tmp_4_fu_108_p1 = in_V_V_dout.read().range(31-1, 0);
}

void Relu1D73::thread_tmp_5_fu_112_p3() {
    tmp_5_fu_112_p3 = in_V_V_dout.read().range(31, 31);
}

void Relu1D73::thread_tmp_V_5_fu_120_p3() {
    tmp_V_5_fu_120_p3 = (!tmp_5_fu_112_p3.read()[0].is_01())? sc_lv<31>(): ((tmp_5_fu_112_p3.read()[0].to_bool())? ap_const_lv31_0: tmp_4_fu_108_p1.read());
}

void Relu1D73::thread_tmp_fu_96_p2() {
    tmp_fu_96_p2 = (!i_reg_85.read().is_01() || !ap_const_lv16_8000.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_85.read() == ap_const_lv16_8000);
}

void Relu1D73::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && esl_seteq<1,1,1>(tmp_fu_96_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()) && esl_seteq<1,1,1>(tmp_fu_96_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}


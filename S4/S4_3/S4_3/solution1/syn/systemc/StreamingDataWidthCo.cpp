// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "StreamingDataWidthCo.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic StreamingDataWidthCo::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic StreamingDataWidthCo::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> StreamingDataWidthCo::ap_ST_fsm_state1 = "1";
const sc_lv<3> StreamingDataWidthCo::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> StreamingDataWidthCo::ap_ST_fsm_state4 = "100";
const bool StreamingDataWidthCo::ap_const_boolean_1 = true;
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_1 = "1";
const bool StreamingDataWidthCo::ap_const_boolean_0 = false;
const sc_lv<1> StreamingDataWidthCo::ap_const_lv1_0 = "0";
const sc_lv<1> StreamingDataWidthCo::ap_const_lv1_1 = "1";
const sc_lv<24> StreamingDataWidthCo::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<14> StreamingDataWidthCo::ap_const_lv14_0 = "00000000000000";
const sc_lv<14> StreamingDataWidthCo::ap_const_lv14_2000 = "10000000000000";
const sc_lv<14> StreamingDataWidthCo::ap_const_lv14_1 = "1";
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_4 = "100";
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_8 = "1000";
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_1F = "11111";
const sc_lv<32> StreamingDataWidthCo::ap_const_lv32_2 = "10";

StreamingDataWidthCo::StreamingDataWidthCo(sc_module_name name) : sc_module(name), mVcdFile(0) {

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
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_predicate_op23_read_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_predicate_op23_read_state3 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_predicate_op23_read_state3 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_full_n );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_predicate_op23_read_state3 );

    SC_METHOD(thread_ap_condition_70);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_reg_189 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( exitcond_fu_131_p2 );

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

    SC_METHOD(thread_ap_phi_mux_p_Val2_s_phi_fu_124_p4);
    sensitive << ( in_V_V_dout );
    sensitive << ( tmp_reg_198 );
    sensitive << ( ap_phi_reg_pp0_iter1_p_Val2_s_reg_121 );
    sensitive << ( p_1_cast_fu_169_p1 );
    sensitive << ( ap_condition_70 );

    SC_METHOD(thread_ap_phi_reg_pp0_iter1_p_Val2_s_reg_121);

    SC_METHOD(thread_ap_predicate_op23_read_state3);
    sensitive << ( exitcond_reg_189 );
    sensitive << ( tmp_reg_198 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_exitcond_fu_131_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( t_reg_110 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_in_V_V_blk_n);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( tmp_reg_198 );

    SC_METHOD(thread_in_V_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_predicate_op23_read_state3 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_o_1_fu_149_p2);
    sensitive << ( o_reg_99 );

    SC_METHOD(thread_out_V_V_blk_n);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( exitcond_reg_189 );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_phi_mux_p_Val2_s_phi_fu_124_p4 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exitcond_reg_189 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_p_1_cast_fu_169_p1);
    sensitive << ( p_1_reg_87 );

    SC_METHOD(thread_p_s_fu_161_p3);
    sensitive << ( o_1_fu_149_p2 );
    sensitive << ( tmp_s_fu_155_p2 );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_t_1_fu_137_p2);
    sensitive << ( t_reg_110 );

    SC_METHOD(thread_tmp_fu_143_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( o_reg_99 );
    sensitive << ( exitcond_fu_131_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_tmp_s_fu_155_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( exitcond_fu_131_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( o_1_fu_149_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( exitcond_fu_131_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "StreamingDataWidthCo_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, exitcond_reg_189, "exitcond_reg_189");
    sc_trace(mVcdFile, tmp_reg_198, "tmp_reg_198");
    sc_trace(mVcdFile, out_V_V_blk_n, "out_V_V_blk_n");
    sc_trace(mVcdFile, p_1_reg_87, "p_1_reg_87");
    sc_trace(mVcdFile, o_reg_99, "o_reg_99");
    sc_trace(mVcdFile, t_reg_110, "t_reg_110");
    sc_trace(mVcdFile, exitcond_fu_131_p2, "exitcond_fu_131_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_predicate_op23_read_state3, "ap_predicate_op23_read_state3");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, t_1_fu_137_p2, "t_1_fu_137_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, tmp_fu_143_p2, "tmp_fu_143_p2");
    sc_trace(mVcdFile, p_s_fu_161_p3, "p_s_fu_161_p3");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_phi_mux_p_Val2_s_phi_fu_124_p4, "ap_phi_mux_p_Val2_s_phi_fu_124_p4");
    sc_trace(mVcdFile, ap_phi_reg_pp0_iter1_p_Val2_s_reg_121, "ap_phi_reg_pp0_iter1_p_Val2_s_reg_121");
    sc_trace(mVcdFile, p_1_cast_fu_169_p1, "p_1_cast_fu_169_p1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, o_1_fu_149_p2, "o_1_fu_149_p2");
    sc_trace(mVcdFile, tmp_s_fu_155_p2, "tmp_s_fu_155_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, ap_condition_70, "ap_condition_70");
#endif

    }
}

StreamingDataWidthCo::~StreamingDataWidthCo() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void StreamingDataWidthCo::thread_ap_clk_no_reset_() {
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
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()) && 
             esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()))) {
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
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_131_p2.read()))) {
        o_reg_99 = p_s_fu_161_p3.read();
    } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        o_reg_99 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_1_reg_87 = ap_phi_mux_p_Val2_s_phi_fu_124_p4.read().range(31, 8);
    } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        p_1_reg_87 = ap_const_lv24_0;
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
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_131_p2.read()))) {
        t_reg_110 = t_1_fu_137_p2.read();
    } else if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        t_reg_110 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exitcond_reg_189 = exitcond_fu_131_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_131_p2.read()))) {
        tmp_reg_198 = tmp_fu_143_p2.read();
    }
}

void StreamingDataWidthCo::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void StreamingDataWidthCo::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void StreamingDataWidthCo::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void StreamingDataWidthCo::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void StreamingDataWidthCo::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && 
   esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op23_read_state3.read())) || 
  (esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void StreamingDataWidthCo::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && 
   esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op23_read_state3.read())) || 
  (esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void StreamingDataWidthCo::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && 
   esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op23_read_state3.read())) || 
  (esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read()))));
}

void StreamingDataWidthCo::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void StreamingDataWidthCo::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void StreamingDataWidthCo::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(ap_const_logic_0, in_V_V_empty_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op23_read_state3.read())) || (esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_full_n.read())));
}

void StreamingDataWidthCo::thread_ap_condition_70() {
    ap_condition_70 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0));
}

void StreamingDataWidthCo::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(exitcond_fu_131_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void StreamingDataWidthCo::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void StreamingDataWidthCo::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_ap_phi_mux_p_Val2_s_phi_fu_124_p4() {
    if (esl_seteq<1,1,1>(ap_condition_70.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_198.read())) {
            ap_phi_mux_p_Val2_s_phi_fu_124_p4 = p_1_cast_fu_169_p1.read();
        } else if (esl_seteq<1,1,1>(tmp_reg_198.read(), ap_const_lv1_1)) {
            ap_phi_mux_p_Val2_s_phi_fu_124_p4 = in_V_V_dout.read();
        } else {
            ap_phi_mux_p_Val2_s_phi_fu_124_p4 = ap_phi_reg_pp0_iter1_p_Val2_s_reg_121.read();
        }
    } else {
        ap_phi_mux_p_Val2_s_phi_fu_124_p4 = ap_phi_reg_pp0_iter1_p_Val2_s_reg_121.read();
    }
}

void StreamingDataWidthCo::thread_ap_phi_reg_pp0_iter1_p_Val2_s_reg_121() {
    ap_phi_reg_pp0_iter1_p_Val2_s_reg_121 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
}

void StreamingDataWidthCo::thread_ap_predicate_op23_read_state3() {
    ap_predicate_op23_read_state3 = (esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(tmp_reg_198.read(), ap_const_lv1_1));
}

void StreamingDataWidthCo::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void StreamingDataWidthCo::thread_exitcond_fu_131_p2() {
    exitcond_fu_131_p2 = (!t_reg_110.read().is_01() || !ap_const_lv14_2000.is_01())? sc_lv<1>(): sc_lv<1>(t_reg_110.read() == ap_const_lv14_2000);
}

void StreamingDataWidthCo::thread_in_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(tmp_reg_198.read(), ap_const_lv1_1))) {
        in_V_V_blk_n = in_V_V_empty_n.read();
    } else {
        in_V_V_blk_n = ap_const_logic_1;
    }
}

void StreamingDataWidthCo::thread_in_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op23_read_state3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        in_V_V_read = ap_const_logic_1;
    } else {
        in_V_V_read = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_internal_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_o_1_fu_149_p2() {
    o_1_fu_149_p2 = (!ap_const_lv32_1.is_01() || !o_reg_99.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_1) + sc_biguint<32>(o_reg_99.read()));
}

void StreamingDataWidthCo::thread_out_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0))) {
        out_V_V_blk_n = out_V_V_full_n.read();
    } else {
        out_V_V_blk_n = ap_const_logic_1;
    }
}

void StreamingDataWidthCo::thread_out_V_V_din() {
    out_V_V_din = ap_phi_mux_p_Val2_s_phi_fu_124_p4.read().range(8-1, 0);
}

void StreamingDataWidthCo::thread_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(exitcond_reg_189.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        out_V_V_write = ap_const_logic_1;
    } else {
        out_V_V_write = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_p_1_cast_fu_169_p1() {
    p_1_cast_fu_169_p1 = esl_zext<32,24>(p_1_reg_87.read());
}

void StreamingDataWidthCo::thread_p_s_fu_161_p3() {
    p_s_fu_161_p3 = (!tmp_s_fu_155_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_s_fu_155_p2.read()[0].to_bool())? ap_const_lv32_0: o_1_fu_149_p2.read());
}

void StreamingDataWidthCo::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void StreamingDataWidthCo::thread_start_out() {
    start_out = real_start.read();
}

void StreamingDataWidthCo::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void StreamingDataWidthCo::thread_t_1_fu_137_p2() {
    t_1_fu_137_p2 = (!t_reg_110.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(t_reg_110.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void StreamingDataWidthCo::thread_tmp_fu_143_p2() {
    tmp_fu_143_p2 = (!o_reg_99.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): sc_lv<1>(o_reg_99.read() == ap_const_lv32_0);
}

void StreamingDataWidthCo::thread_tmp_s_fu_155_p2() {
    tmp_s_fu_155_p2 = (!o_1_fu_149_p2.read().is_01() || !ap_const_lv32_4.is_01())? sc_lv<1>(): sc_lv<1>(o_1_fu_149_p2.read() == ap_const_lv32_4);
}

void StreamingDataWidthCo::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(real_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(exitcond_fu_131_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(exitcond_fu_131_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_pp0_stage0_subdone.read()))) {
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


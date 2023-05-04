// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ResizeStream.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ResizeStream::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ResizeStream::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> ResizeStream::ap_ST_fsm_state1 = "1";
const sc_lv<3> ResizeStream::ap_ST_fsm_state2 = "10";
const sc_lv<3> ResizeStream::ap_ST_fsm_state3 = "100";
const sc_lv<32> ResizeStream::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool ResizeStream::ap_const_boolean_1 = true;
const sc_lv<1> ResizeStream::ap_const_lv1_0 = "0";
const sc_lv<1> ResizeStream::ap_const_lv1_1 = "1";
const sc_lv<2> ResizeStream::ap_const_lv2_0 = "00";
const sc_lv<2> ResizeStream::ap_const_lv2_2 = "10";
const sc_lv<2> ResizeStream::ap_const_lv2_3 = "11";
const sc_lv<2> ResizeStream::ap_const_lv2_1 = "1";
const sc_lv<32> ResizeStream::ap_const_lv32_1 = "1";
const sc_lv<32> ResizeStream::ap_const_lv32_2 = "10";
const sc_lv<18> ResizeStream::ap_const_lv18_0 = "000000000000000000";
const sc_lv<18> ResizeStream::ap_const_lv18_20000 = "100000000000000000";
const sc_lv<18> ResizeStream::ap_const_lv18_1 = "1";

ResizeStream::ResizeStream(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( tmp_fu_72_p2 );

    SC_METHOD(thread_ap_block_state2_io);
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( tmp_fu_72_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_block_state2_io );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_block_state2_io );

    SC_METHOD(thread_i_1_fu_78_p2);
    sensitive << ( i_reg_61 );

    SC_METHOD(thread_in_V_V_blk_n);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );

    SC_METHOD(thread_in_V_V_read);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_block_state2_io );

    SC_METHOD(thread_outWrite_V_fu_84_p1);
    sensitive << ( in_V_V_dout );

    SC_METHOD(thread_out_V_V_1_ack_in);
    sensitive << ( out_V_V_1_state );

    SC_METHOD(thread_out_V_V_1_ack_out);
    sensitive << ( out_V_V_TREADY );

    SC_METHOD(thread_out_V_V_1_data_out);
    sensitive << ( out_V_V_1_payload_A );
    sensitive << ( out_V_V_1_payload_B );
    sensitive << ( out_V_V_1_sel );

    SC_METHOD(thread_out_V_V_1_load_A);
    sensitive << ( out_V_V_1_sel_wr );
    sensitive << ( out_V_V_1_state_cmp_full );

    SC_METHOD(thread_out_V_V_1_load_B);
    sensitive << ( out_V_V_1_sel_wr );
    sensitive << ( out_V_V_1_state_cmp_full );

    SC_METHOD(thread_out_V_V_1_sel);
    sensitive << ( out_V_V_1_sel_rd );

    SC_METHOD(thread_out_V_V_1_state_cmp_full);
    sensitive << ( out_V_V_1_state );

    SC_METHOD(thread_out_V_V_1_vld_in);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_block_state2_io );

    SC_METHOD(thread_out_V_V_1_vld_out);
    sensitive << ( out_V_V_1_state );

    SC_METHOD(thread_out_V_V_TDATA);
    sensitive << ( out_V_V_1_data_out );

    SC_METHOD(thread_out_V_V_TDATA_blk_n);
    sensitive << ( out_V_V_1_state );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_out_V_V_TVALID);
    sensitive << ( out_V_V_1_state );

    SC_METHOD(thread_tmp_fu_72_p2);
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_block_state2_io );
    sensitive << ( i_reg_61 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_V_V_empty_n );
    sensitive << ( out_V_V_1_ack_in );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_72_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_block_state2_io );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    out_V_V_1_sel_rd = SC_LOGIC_0;
    out_V_V_1_sel_wr = SC_LOGIC_0;
    out_V_V_1_state = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ResizeStream_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_V_V_dout, "(port)in_V_V_dout");
    sc_trace(mVcdFile, in_V_V_empty_n, "(port)in_V_V_empty_n");
    sc_trace(mVcdFile, in_V_V_read, "(port)in_V_V_read");
    sc_trace(mVcdFile, out_V_V_TDATA, "(port)out_V_V_TDATA");
    sc_trace(mVcdFile, out_V_V_TVALID, "(port)out_V_V_TVALID");
    sc_trace(mVcdFile, out_V_V_TREADY, "(port)out_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, out_V_V_1_data_out, "out_V_V_1_data_out");
    sc_trace(mVcdFile, out_V_V_1_vld_in, "out_V_V_1_vld_in");
    sc_trace(mVcdFile, out_V_V_1_vld_out, "out_V_V_1_vld_out");
    sc_trace(mVcdFile, out_V_V_1_ack_in, "out_V_V_1_ack_in");
    sc_trace(mVcdFile, out_V_V_1_ack_out, "out_V_V_1_ack_out");
    sc_trace(mVcdFile, out_V_V_1_payload_A, "out_V_V_1_payload_A");
    sc_trace(mVcdFile, out_V_V_1_payload_B, "out_V_V_1_payload_B");
    sc_trace(mVcdFile, out_V_V_1_sel_rd, "out_V_V_1_sel_rd");
    sc_trace(mVcdFile, out_V_V_1_sel_wr, "out_V_V_1_sel_wr");
    sc_trace(mVcdFile, out_V_V_1_sel, "out_V_V_1_sel");
    sc_trace(mVcdFile, out_V_V_1_load_A, "out_V_V_1_load_A");
    sc_trace(mVcdFile, out_V_V_1_load_B, "out_V_V_1_load_B");
    sc_trace(mVcdFile, out_V_V_1_state, "out_V_V_1_state");
    sc_trace(mVcdFile, out_V_V_1_state_cmp_full, "out_V_V_1_state_cmp_full");
    sc_trace(mVcdFile, in_V_V_blk_n, "in_V_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_72_p2, "tmp_fu_72_p2");
    sc_trace(mVcdFile, out_V_V_TDATA_blk_n, "out_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, i_1_fu_78_p2, "i_1_fu_78_p2");
    sc_trace(mVcdFile, i_1_reg_92, "i_1_reg_92");
    sc_trace(mVcdFile, ap_block_state2, "ap_block_state2");
    sc_trace(mVcdFile, ap_block_state2_io, "ap_block_state2_io");
    sc_trace(mVcdFile, outWrite_V_fu_84_p1, "outWrite_V_fu_84_p1");
    sc_trace(mVcdFile, i_reg_61, "i_reg_61");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

ResizeStream::~ResizeStream() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void ResizeStream::thread_ap_clk_no_reset_() {
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
        } else if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && 
                    esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_1) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ((esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        i_reg_61 = i_1_reg_92.read();
    } else if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        i_reg_61 = ap_const_lv18_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        out_V_V_1_sel_rd = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_ack_out.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_vld_out.read()))) {
            out_V_V_1_sel_rd =  (sc_logic) (~out_V_V_1_sel_rd.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        out_V_V_1_sel_wr = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_vld_in.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_ack_in.read()))) {
            out_V_V_1_sel_wr =  (sc_logic) (~out_V_V_1_sel_wr.read());
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        out_V_V_1_state = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_vld_in.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_ack_out.read()) && 
              esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_3)) || 
             (esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_vld_in.read()) && 
              esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_2)))) {
            out_V_V_1_state = ap_const_lv2_2;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_vld_in.read()) && 
                     esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_3)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_1)))) {
            out_V_V_1_state = ap_const_lv2_1;
        } else if (((esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_vld_in.read()) && 
                     esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_2)) || 
                    (esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_ack_out.read()) && 
                     esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_1)) || 
                    (esl_seteq<1,2,2>(out_V_V_1_state.read(), ap_const_lv2_3) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_ack_out.read())) && 
                     !(esl_seteq<1,1,1>(ap_const_logic_0, out_V_V_1_vld_in.read()) && esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_ack_out.read()))))) {
            out_V_V_1_state = ap_const_lv2_3;
        } else {
            out_V_V_1_state = ap_const_lv2_2;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))))) {
        i_1_reg_92 = i_1_fu_78_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_load_A.read())) {
        out_V_V_1_payload_A = outWrite_V_fu_84_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_load_B.read())) {
        out_V_V_1_payload_B = outWrite_V_fu_84_p1.read();
    }
}

void ResizeStream::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void ResizeStream::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void ResizeStream::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void ResizeStream::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void ResizeStream::thread_ap_block_state2() {
    ap_block_state2 = ((esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0)) || esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0));
}

void ResizeStream::thread_ap_block_state2_io() {
    ap_block_state2_io = (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0));
}

void ResizeStream::thread_ap_done() {
    if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && 
         esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void ResizeStream::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ResizeStream::thread_ap_ready() {
    if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && 
         esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ResizeStream::thread_i_1_fu_78_p2() {
    i_1_fu_78_p2 = (!i_reg_61.read().is_01() || !ap_const_lv18_1.is_01())? sc_lv<18>(): (sc_biguint<18>(i_reg_61.read()) + sc_biguint<18>(ap_const_lv18_1));
}

void ResizeStream::thread_in_V_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0))) {
        in_V_V_blk_n = in_V_V_empty_n.read();
    } else {
        in_V_V_blk_n = ap_const_logic_1;
    }
}

void ResizeStream::thread_in_V_V_read() {
    if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && 
         esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        in_V_V_read = ap_const_logic_1;
    } else {
        in_V_V_read = ap_const_logic_0;
    }
}

void ResizeStream::thread_outWrite_V_fu_84_p1() {
    outWrite_V_fu_84_p1 = esl_zext<64,8>(in_V_V_dout.read());
}

void ResizeStream::thread_out_V_V_1_ack_in() {
    out_V_V_1_ack_in = out_V_V_1_state.read()[1];
}

void ResizeStream::thread_out_V_V_1_ack_out() {
    out_V_V_1_ack_out = out_V_V_TREADY.read();
}

void ResizeStream::thread_out_V_V_1_data_out() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, out_V_V_1_sel.read())) {
        out_V_V_1_data_out = out_V_V_1_payload_B.read();
    } else {
        out_V_V_1_data_out = out_V_V_1_payload_A.read();
    }
}

void ResizeStream::thread_out_V_V_1_load_A() {
    out_V_V_1_load_A = (out_V_V_1_state_cmp_full.read() & ~out_V_V_1_sel_wr.read());
}

void ResizeStream::thread_out_V_V_1_load_B() {
    out_V_V_1_load_B = (out_V_V_1_sel_wr.read() & out_V_V_1_state_cmp_full.read());
}

void ResizeStream::thread_out_V_V_1_sel() {
    out_V_V_1_sel = out_V_V_1_sel_rd.read();
}

void ResizeStream::thread_out_V_V_1_state_cmp_full() {
    out_V_V_1_state_cmp_full =  (sc_logic) ((!out_V_V_1_state.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(out_V_V_1_state.read() != ap_const_lv2_1))[0];
}

void ResizeStream::thread_out_V_V_1_vld_in() {
    if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && 
         esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        out_V_V_1_vld_in = ap_const_logic_1;
    } else {
        out_V_V_1_vld_in = ap_const_logic_0;
    }
}

void ResizeStream::thread_out_V_V_1_vld_out() {
    out_V_V_1_vld_out = out_V_V_1_state.read()[0];
}

void ResizeStream::thread_out_V_V_TDATA() {
    out_V_V_TDATA = out_V_V_1_data_out.read();
}

void ResizeStream::thread_out_V_V_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        out_V_V_TDATA_blk_n = out_V_V_1_state.read()[1];
    } else {
        out_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void ResizeStream::thread_out_V_V_TVALID() {
    out_V_V_TVALID = out_V_V_1_state.read()[0];
}

void ResizeStream::thread_tmp_fu_72_p2() {
    tmp_fu_72_p2 = (!i_reg_61.read().is_01() || !ap_const_lv18_20000.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_61.read() == ap_const_lv18_20000);
}

void ResizeStream::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!(esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((!(esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state2_io.read()) || (esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(in_V_V_empty_n.read(), ap_const_logic_0))) && esl_seteq<1,1,1>(tmp_fu_72_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(out_V_V_1_ack_in.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}


// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "get_random.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic get_random::ap_const_logic_1 = sc_dt::Log_1;
const bool get_random::ap_const_boolean_1 = true;
const sc_lv<32> get_random::ap_const_lv32_1 = "1";
const sc_lv<32> get_random::ap_const_lv32_1F = "11111";
const sc_lv<31> get_random::ap_const_lv31_69 = "1101001";
const sc_lv<31> get_random::ap_const_lv31_0 = "0000000000000000000000000000000";
const sc_lv<32> get_random::ap_const_lv32_C = "1100";
const sc_lv<12> get_random::ap_const_lv12_69 = "1101001";
const sc_lv<12> get_random::ap_const_lv12_0 = "000000000000";
const sc_lv<31> get_random::ap_const_lv31_36 = "110110";
const sc_lv<12> get_random::ap_const_lv12_36 = "110110";
const sc_logic get_random::ap_const_logic_0 = sc_dt::Log_0;

get_random::get_random(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_ready);

    SC_METHOD(thread_ap_return_0);
    sensitive << ( tmp_cast_32_fu_160_p1 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( lfsr_write_assign_i5_fu_138_p1 );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( lfsr_write_assign_i_s_fu_88_p1 );

    SC_METHOD(thread_feedback_1_fu_92_p1);
    sensitive << ( lfsr31_read );

    SC_METHOD(thread_feedback_fu_42_p1);
    sensitive << ( lfsr32_read );

    SC_METHOD(thread_lfsr31_val_fu_132_p2);
    sensitive << ( tmp_2_i4_cast_cast_c_fu_106_p3 );
    sensitive << ( tmp_i2_cast_fu_96_p4 );

    SC_METHOD(thread_lfsr32_val_fu_82_p2);
    sensitive << ( tmp_2_i_cast_cast_ca_fu_56_p3 );
    sensitive << ( tmp_i_cast_fu_46_p4 );

    SC_METHOD(thread_lfsr_write_assign_i5_fu_138_p1);
    sensitive << ( lfsr31_val_fu_132_p2 );

    SC_METHOD(thread_lfsr_write_assign_i_s_fu_88_p1);
    sensitive << ( lfsr32_val_fu_82_p2 );

    SC_METHOD(thread_p_cast2_cast_fu_74_p3);
    sensitive << ( feedback_fu_42_p1 );

    SC_METHOD(thread_p_cast_cast_fu_124_p3);
    sensitive << ( feedback_1_fu_92_p1 );

    SC_METHOD(thread_tmp1_fu_148_p2);
    sensitive << ( tmp_s_fu_64_p4 );
    sensitive << ( p_cast2_cast_fu_74_p3 );

    SC_METHOD(thread_tmp_22_fu_114_p4);
    sensitive << ( lfsr31_read );

    SC_METHOD(thread_tmp_2_i4_cast_cast_c_fu_106_p3);
    sensitive << ( feedback_1_fu_92_p1 );

    SC_METHOD(thread_tmp_2_i_cast_cast_ca_fu_56_p3);
    sensitive << ( feedback_fu_42_p1 );

    SC_METHOD(thread_tmp_cast_32_fu_160_p1);
    sensitive << ( tmp_cast_fu_154_p2 );

    SC_METHOD(thread_tmp_cast_fu_154_p2);
    sensitive << ( tmp1_fu_148_p2 );
    sensitive << ( tmp_fu_142_p2 );

    SC_METHOD(thread_tmp_fu_142_p2);
    sensitive << ( p_cast_cast_fu_124_p3 );
    sensitive << ( tmp_22_fu_114_p4 );

    SC_METHOD(thread_tmp_i2_cast_fu_96_p4);
    sensitive << ( lfsr31_read );

    SC_METHOD(thread_tmp_i_cast_fu_46_p4);
    sensitive << ( lfsr32_read );

    SC_METHOD(thread_tmp_s_fu_64_p4);
    sensitive << ( lfsr32_read );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "get_random_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, lfsr31_read, "(port)lfsr31_read");
    sc_trace(mVcdFile, lfsr32_read, "(port)lfsr32_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, feedback_fu_42_p1, "feedback_fu_42_p1");
    sc_trace(mVcdFile, tmp_2_i_cast_cast_ca_fu_56_p3, "tmp_2_i_cast_cast_ca_fu_56_p3");
    sc_trace(mVcdFile, tmp_i_cast_fu_46_p4, "tmp_i_cast_fu_46_p4");
    sc_trace(mVcdFile, lfsr32_val_fu_82_p2, "lfsr32_val_fu_82_p2");
    sc_trace(mVcdFile, feedback_1_fu_92_p1, "feedback_1_fu_92_p1");
    sc_trace(mVcdFile, tmp_2_i4_cast_cast_c_fu_106_p3, "tmp_2_i4_cast_cast_c_fu_106_p3");
    sc_trace(mVcdFile, tmp_i2_cast_fu_96_p4, "tmp_i2_cast_fu_96_p4");
    sc_trace(mVcdFile, lfsr31_val_fu_132_p2, "lfsr31_val_fu_132_p2");
    sc_trace(mVcdFile, p_cast_cast_fu_124_p3, "p_cast_cast_fu_124_p3");
    sc_trace(mVcdFile, tmp_22_fu_114_p4, "tmp_22_fu_114_p4");
    sc_trace(mVcdFile, tmp_s_fu_64_p4, "tmp_s_fu_64_p4");
    sc_trace(mVcdFile, p_cast2_cast_fu_74_p3, "p_cast2_cast_fu_74_p3");
    sc_trace(mVcdFile, tmp1_fu_148_p2, "tmp1_fu_148_p2");
    sc_trace(mVcdFile, tmp_fu_142_p2, "tmp_fu_142_p2");
    sc_trace(mVcdFile, tmp_cast_fu_154_p2, "tmp_cast_fu_154_p2");
    sc_trace(mVcdFile, tmp_cast_32_fu_160_p1, "tmp_cast_32_fu_160_p1");
    sc_trace(mVcdFile, lfsr_write_assign_i5_fu_138_p1, "lfsr_write_assign_i5_fu_138_p1");
    sc_trace(mVcdFile, lfsr_write_assign_i_s_fu_88_p1, "lfsr_write_assign_i_s_fu_88_p1");
#endif

    }
}

get_random::~get_random() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void get_random::thread_ap_ready() {
    ap_ready = ap_const_logic_1;
}

void get_random::thread_ap_return_0() {
    ap_return_0 = tmp_cast_32_fu_160_p1.read();
}

void get_random::thread_ap_return_1() {
    ap_return_1 = lfsr_write_assign_i5_fu_138_p1.read();
}

void get_random::thread_ap_return_2() {
    ap_return_2 = lfsr_write_assign_i_s_fu_88_p1.read();
}

void get_random::thread_feedback_1_fu_92_p1() {
    feedback_1_fu_92_p1 = lfsr31_read.read().range(1-1, 0);
}

void get_random::thread_feedback_fu_42_p1() {
    feedback_fu_42_p1 = lfsr32_read.read().range(1-1, 0);
}

void get_random::thread_lfsr31_val_fu_132_p2() {
    lfsr31_val_fu_132_p2 = (tmp_2_i4_cast_cast_c_fu_106_p3.read() ^ tmp_i2_cast_fu_96_p4.read());
}

void get_random::thread_lfsr32_val_fu_82_p2() {
    lfsr32_val_fu_82_p2 = (tmp_2_i_cast_cast_ca_fu_56_p3.read() ^ tmp_i_cast_fu_46_p4.read());
}

void get_random::thread_lfsr_write_assign_i5_fu_138_p1() {
    lfsr_write_assign_i5_fu_138_p1 = esl_zext<32,31>(lfsr31_val_fu_132_p2.read());
}

void get_random::thread_lfsr_write_assign_i_s_fu_88_p1() {
    lfsr_write_assign_i_s_fu_88_p1 = esl_zext<32,31>(lfsr32_val_fu_82_p2.read());
}

void get_random::thread_p_cast2_cast_fu_74_p3() {
    p_cast2_cast_fu_74_p3 = (!feedback_fu_42_p1.read()[0].is_01())? sc_lv<12>(): ((feedback_fu_42_p1.read()[0].to_bool())? ap_const_lv12_69: ap_const_lv12_0);
}

void get_random::thread_p_cast_cast_fu_124_p3() {
    p_cast_cast_fu_124_p3 = (!feedback_1_fu_92_p1.read()[0].is_01())? sc_lv<12>(): ((feedback_1_fu_92_p1.read()[0].to_bool())? ap_const_lv12_36: ap_const_lv12_0);
}

void get_random::thread_tmp1_fu_148_p2() {
    tmp1_fu_148_p2 = (tmp_s_fu_64_p4.read() ^ p_cast2_cast_fu_74_p3.read());
}

void get_random::thread_tmp_22_fu_114_p4() {
    tmp_22_fu_114_p4 = lfsr31_read.read().range(12, 1);
}

void get_random::thread_tmp_2_i4_cast_cast_c_fu_106_p3() {
    tmp_2_i4_cast_cast_c_fu_106_p3 = (!feedback_1_fu_92_p1.read()[0].is_01())? sc_lv<31>(): ((feedback_1_fu_92_p1.read()[0].to_bool())? ap_const_lv31_36: ap_const_lv31_0);
}

void get_random::thread_tmp_2_i_cast_cast_ca_fu_56_p3() {
    tmp_2_i_cast_cast_ca_fu_56_p3 = (!feedback_fu_42_p1.read()[0].is_01())? sc_lv<31>(): ((feedback_fu_42_p1.read()[0].to_bool())? ap_const_lv31_69: ap_const_lv31_0);
}

void get_random::thread_tmp_cast_32_fu_160_p1() {
    tmp_cast_32_fu_160_p1 = esl_zext<32,12>(tmp_cast_fu_154_p2.read());
}

void get_random::thread_tmp_cast_fu_154_p2() {
    tmp_cast_fu_154_p2 = (tmp1_fu_148_p2.read() ^ tmp_fu_142_p2.read());
}

void get_random::thread_tmp_fu_142_p2() {
    tmp_fu_142_p2 = (p_cast_cast_fu_124_p3.read() ^ tmp_22_fu_114_p4.read());
}

void get_random::thread_tmp_i2_cast_fu_96_p4() {
    tmp_i2_cast_fu_96_p4 = lfsr31_read.read().range(31, 1);
}

void get_random::thread_tmp_i_cast_fu_46_p4() {
    tmp_i_cast_fu_46_p4 = lfsr32_read.read().range(31, 1);
}

void get_random::thread_tmp_s_fu_64_p4() {
    tmp_s_fu_64_p4 = lfsr32_read.read().range(12, 1);
}

}


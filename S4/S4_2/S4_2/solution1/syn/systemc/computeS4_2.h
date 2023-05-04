// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _computeS4_2_HH_
#define _computeS4_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ResizeStream_1.h"
#include "Conv1DBuffer_new.h"
#include "Conv1DMac_new.h"
#include "Relu1D.h"
#include "StreamingDataWidthCo.h"
#include "StreamingMaxPool_Pre.h"
#include "ResizeStream.h"
#include "fifo_w8_d2_A.h"
#include "fifo_w32_d2_A.h"
#include "start_for_Conv1DBjbC.h"
#include "start_for_Conv1DMkbM.h"
#include "start_for_Relu1D_U0.h"
#include "start_for_StreamilbW.h"
#include "start_for_Streamimb6.h"
#include "start_for_ResizeSncg.h"

namespace ap_rtl {

struct computeS4_2 : public sc_module {
    // Port declarations 12
    sc_in< sc_lv<64> > input1_V_V_TDATA;
    sc_out< sc_lv<64> > output1_V_V_TDATA;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > input1_V_V_TVALID;
    sc_out< sc_logic > input1_V_V_TREADY;
    sc_out< sc_logic > output1_V_V_TVALID;
    sc_in< sc_logic > output1_V_V_TREADY;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    computeS4_2(sc_module_name name);
    SC_HAS_PROCESS(computeS4_2);

    ~computeS4_2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    ResizeStream_1* ResizeStream_1_U0;
    Conv1DBuffer_new* Conv1DBuffer_new_U0;
    Conv1DMac_new* Conv1DMac_new_U0;
    Relu1D* Relu1D_U0;
    StreamingDataWidthCo* StreamingDataWidthCo_U0;
    StreamingMaxPool_Pre* StreamingMaxPool_Pre_U0;
    ResizeStream* ResizeStream_U0;
    fifo_w8_d2_A* cnv_95_V_V_U;
    fifo_w8_d2_A* cnv_96_V_V_U;
    fifo_w32_d2_A* cnv_97PRL_V_V_U;
    fifo_w32_d2_A* cnv_98PRL_V_V_U;
    fifo_w8_d2_A* cnv_99_V_V_U;
    fifo_w8_d2_A* outStr_V_V_U;
    start_for_Conv1DBjbC* start_for_Conv1DBjbC_U;
    start_for_Conv1DMkbM* start_for_Conv1DMkbM_U;
    start_for_Relu1D_U0* start_for_Relu1D_U0_U;
    start_for_StreamilbW* start_for_StreamilbW_U;
    start_for_Streamimb6* start_for_Streamimb6_U;
    start_for_ResizeSncg* start_for_ResizeSncg_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ResizeStream_1_U0_ap_start;
    sc_signal< sc_logic > ResizeStream_1_U0_ap_done;
    sc_signal< sc_logic > ResizeStream_1_U0_ap_continue;
    sc_signal< sc_logic > ResizeStream_1_U0_ap_idle;
    sc_signal< sc_logic > ResizeStream_1_U0_ap_ready;
    sc_signal< sc_logic > ResizeStream_1_U0_start_out;
    sc_signal< sc_logic > ResizeStream_1_U0_start_write;
    sc_signal< sc_logic > ResizeStream_1_U0_in_V_V_TREADY;
    sc_signal< sc_lv<8> > ResizeStream_1_U0_out_V_V_din;
    sc_signal< sc_logic > ResizeStream_1_U0_out_V_V_write;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_ap_start;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_ap_done;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_ap_continue;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_ap_idle;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_ap_ready;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_start_out;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_start_write;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_in_V_V_read;
    sc_signal< sc_lv<8> > Conv1DBuffer_new_U0_out_V_V_din;
    sc_signal< sc_logic > Conv1DBuffer_new_U0_out_V_V_write;
    sc_signal< sc_logic > Conv1DMac_new_U0_ap_start;
    sc_signal< sc_logic > Conv1DMac_new_U0_ap_done;
    sc_signal< sc_logic > Conv1DMac_new_U0_ap_continue;
    sc_signal< sc_logic > Conv1DMac_new_U0_ap_idle;
    sc_signal< sc_logic > Conv1DMac_new_U0_ap_ready;
    sc_signal< sc_logic > Conv1DMac_new_U0_start_out;
    sc_signal< sc_logic > Conv1DMac_new_U0_start_write;
    sc_signal< sc_logic > Conv1DMac_new_U0_in_V_V_read;
    sc_signal< sc_lv<32> > Conv1DMac_new_U0_out_V_V_din;
    sc_signal< sc_logic > Conv1DMac_new_U0_out_V_V_write;
    sc_signal< sc_logic > Relu1D_U0_ap_start;
    sc_signal< sc_logic > Relu1D_U0_ap_done;
    sc_signal< sc_logic > Relu1D_U0_ap_continue;
    sc_signal< sc_logic > Relu1D_U0_ap_idle;
    sc_signal< sc_logic > Relu1D_U0_ap_ready;
    sc_signal< sc_logic > Relu1D_U0_start_out;
    sc_signal< sc_logic > Relu1D_U0_start_write;
    sc_signal< sc_logic > Relu1D_U0_in_V_V_read;
    sc_signal< sc_lv<32> > Relu1D_U0_out_V_V_din;
    sc_signal< sc_logic > Relu1D_U0_out_V_V_write;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_ap_start;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_ap_done;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_ap_continue;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_ap_idle;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_ap_ready;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_start_out;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_start_write;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_in_V_V_read;
    sc_signal< sc_lv<8> > StreamingDataWidthCo_U0_out_V_V_din;
    sc_signal< sc_logic > StreamingDataWidthCo_U0_out_V_V_write;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_ap_start;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_ap_done;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_ap_continue;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_ap_idle;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_ap_ready;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_start_out;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_start_write;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_in_V_V_read;
    sc_signal< sc_lv<8> > StreamingMaxPool_Pre_U0_out_V_V_din;
    sc_signal< sc_logic > StreamingMaxPool_Pre_U0_out_V_V_write;
    sc_signal< sc_logic > ResizeStream_U0_ap_start;
    sc_signal< sc_logic > ResizeStream_U0_ap_done;
    sc_signal< sc_logic > ResizeStream_U0_ap_continue;
    sc_signal< sc_logic > ResizeStream_U0_ap_idle;
    sc_signal< sc_logic > ResizeStream_U0_ap_ready;
    sc_signal< sc_logic > ResizeStream_U0_in_V_V_read;
    sc_signal< sc_lv<64> > ResizeStream_U0_out_V_V_TDATA;
    sc_signal< sc_logic > ResizeStream_U0_out_V_V_TVALID;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > cnv_95_V_V_full_n;
    sc_signal< sc_lv<8> > cnv_95_V_V_dout;
    sc_signal< sc_logic > cnv_95_V_V_empty_n;
    sc_signal< sc_logic > cnv_96_V_V_full_n;
    sc_signal< sc_lv<8> > cnv_96_V_V_dout;
    sc_signal< sc_logic > cnv_96_V_V_empty_n;
    sc_signal< sc_logic > cnv_97PRL_V_V_full_n;
    sc_signal< sc_lv<32> > cnv_97PRL_V_V_dout;
    sc_signal< sc_logic > cnv_97PRL_V_V_empty_n;
    sc_signal< sc_logic > cnv_98PRL_V_V_full_n;
    sc_signal< sc_lv<32> > cnv_98PRL_V_V_dout;
    sc_signal< sc_logic > cnv_98PRL_V_V_empty_n;
    sc_signal< sc_logic > cnv_99_V_V_full_n;
    sc_signal< sc_lv<8> > cnv_99_V_V_dout;
    sc_signal< sc_logic > cnv_99_V_V_empty_n;
    sc_signal< sc_logic > outStr_V_V_full_n;
    sc_signal< sc_lv<8> > outStr_V_V_dout;
    sc_signal< sc_logic > outStr_V_V_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_Conv1DBuffer_new_U0_din;
    sc_signal< sc_logic > start_for_Conv1DBuffer_new_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Conv1DBuffer_new_U0_dout;
    sc_signal< sc_logic > start_for_Conv1DBuffer_new_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Conv1DMac_new_U0_din;
    sc_signal< sc_logic > start_for_Conv1DMac_new_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Conv1DMac_new_U0_dout;
    sc_signal< sc_logic > start_for_Conv1DMac_new_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Relu1D_U0_din;
    sc_signal< sc_logic > start_for_Relu1D_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Relu1D_U0_dout;
    sc_signal< sc_logic > start_for_Relu1D_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_StreamingDataWidthCo_U0_din;
    sc_signal< sc_logic > start_for_StreamingDataWidthCo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_StreamingDataWidthCo_U0_dout;
    sc_signal< sc_logic > start_for_StreamingDataWidthCo_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_StreamingMaxPool_Pre_U0_din;
    sc_signal< sc_logic > start_for_StreamingMaxPool_Pre_U0_full_n;
    sc_signal< sc_lv<1> > start_for_StreamingMaxPool_Pre_U0_dout;
    sc_signal< sc_logic > start_for_StreamingMaxPool_Pre_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_ResizeStream_U0_din;
    sc_signal< sc_logic > start_for_ResizeStream_U0_full_n;
    sc_signal< sc_lv<1> > start_for_ResizeStream_U0_dout;
    sc_signal< sc_logic > start_for_ResizeStream_U0_empty_n;
    sc_signal< sc_logic > ResizeStream_U0_start_full_n;
    sc_signal< sc_logic > ResizeStream_U0_start_write;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_Conv1DBuffer_new_U0_ap_continue();
    void thread_Conv1DBuffer_new_U0_ap_start();
    void thread_Conv1DMac_new_U0_ap_continue();
    void thread_Conv1DMac_new_U0_ap_start();
    void thread_Relu1D_U0_ap_continue();
    void thread_Relu1D_U0_ap_start();
    void thread_ResizeStream_1_U0_ap_continue();
    void thread_ResizeStream_1_U0_ap_start();
    void thread_ResizeStream_U0_ap_continue();
    void thread_ResizeStream_U0_ap_start();
    void thread_ResizeStream_U0_start_full_n();
    void thread_ResizeStream_U0_start_write();
    void thread_StreamingDataWidthCo_U0_ap_continue();
    void thread_StreamingDataWidthCo_U0_ap_start();
    void thread_StreamingMaxPool_Pre_U0_ap_continue();
    void thread_StreamingMaxPool_Pre_U0_ap_start();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_input1_V_V_TREADY();
    void thread_output1_V_V_TDATA();
    void thread_output1_V_V_TVALID();
    void thread_start_for_Conv1DBuffer_new_U0_din();
    void thread_start_for_Conv1DMac_new_U0_din();
    void thread_start_for_Relu1D_U0_din();
    void thread_start_for_ResizeStream_U0_din();
    void thread_start_for_StreamingDataWidthCo_U0_din();
    void thread_start_for_StreamingMaxPool_Pre_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

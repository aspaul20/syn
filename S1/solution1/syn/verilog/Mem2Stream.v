// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Mem2Stream (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_in_V_AWVALID,
        m_axi_in_V_AWREADY,
        m_axi_in_V_AWADDR,
        m_axi_in_V_AWID,
        m_axi_in_V_AWLEN,
        m_axi_in_V_AWSIZE,
        m_axi_in_V_AWBURST,
        m_axi_in_V_AWLOCK,
        m_axi_in_V_AWCACHE,
        m_axi_in_V_AWPROT,
        m_axi_in_V_AWQOS,
        m_axi_in_V_AWREGION,
        m_axi_in_V_AWUSER,
        m_axi_in_V_WVALID,
        m_axi_in_V_WREADY,
        m_axi_in_V_WDATA,
        m_axi_in_V_WSTRB,
        m_axi_in_V_WLAST,
        m_axi_in_V_WID,
        m_axi_in_V_WUSER,
        m_axi_in_V_ARVALID,
        m_axi_in_V_ARREADY,
        m_axi_in_V_ARADDR,
        m_axi_in_V_ARID,
        m_axi_in_V_ARLEN,
        m_axi_in_V_ARSIZE,
        m_axi_in_V_ARBURST,
        m_axi_in_V_ARLOCK,
        m_axi_in_V_ARCACHE,
        m_axi_in_V_ARPROT,
        m_axi_in_V_ARQOS,
        m_axi_in_V_ARREGION,
        m_axi_in_V_ARUSER,
        m_axi_in_V_RVALID,
        m_axi_in_V_RREADY,
        m_axi_in_V_RDATA,
        m_axi_in_V_RLAST,
        m_axi_in_V_RID,
        m_axi_in_V_RUSER,
        m_axi_in_V_RRESP,
        m_axi_in_V_BVALID,
        m_axi_in_V_BREADY,
        m_axi_in_V_BRESP,
        m_axi_in_V_BID,
        m_axi_in_V_BUSER,
        in_V_offset,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_pp0_stage0 = 9'd128;
parameter    ap_ST_fsm_state11 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_in_V_AWVALID;
input   m_axi_in_V_AWREADY;
output  [31:0] m_axi_in_V_AWADDR;
output  [0:0] m_axi_in_V_AWID;
output  [31:0] m_axi_in_V_AWLEN;
output  [2:0] m_axi_in_V_AWSIZE;
output  [1:0] m_axi_in_V_AWBURST;
output  [1:0] m_axi_in_V_AWLOCK;
output  [3:0] m_axi_in_V_AWCACHE;
output  [2:0] m_axi_in_V_AWPROT;
output  [3:0] m_axi_in_V_AWQOS;
output  [3:0] m_axi_in_V_AWREGION;
output  [0:0] m_axi_in_V_AWUSER;
output   m_axi_in_V_WVALID;
input   m_axi_in_V_WREADY;
output  [63:0] m_axi_in_V_WDATA;
output  [7:0] m_axi_in_V_WSTRB;
output   m_axi_in_V_WLAST;
output  [0:0] m_axi_in_V_WID;
output  [0:0] m_axi_in_V_WUSER;
output   m_axi_in_V_ARVALID;
input   m_axi_in_V_ARREADY;
output  [31:0] m_axi_in_V_ARADDR;
output  [0:0] m_axi_in_V_ARID;
output  [31:0] m_axi_in_V_ARLEN;
output  [2:0] m_axi_in_V_ARSIZE;
output  [1:0] m_axi_in_V_ARBURST;
output  [1:0] m_axi_in_V_ARLOCK;
output  [3:0] m_axi_in_V_ARCACHE;
output  [2:0] m_axi_in_V_ARPROT;
output  [3:0] m_axi_in_V_ARQOS;
output  [3:0] m_axi_in_V_ARREGION;
output  [0:0] m_axi_in_V_ARUSER;
input   m_axi_in_V_RVALID;
output   m_axi_in_V_RREADY;
input  [63:0] m_axi_in_V_RDATA;
input   m_axi_in_V_RLAST;
input  [0:0] m_axi_in_V_RID;
input  [0:0] m_axi_in_V_RUSER;
input  [1:0] m_axi_in_V_RRESP;
input   m_axi_in_V_BVALID;
output   m_axi_in_V_BREADY;
input  [1:0] m_axi_in_V_BRESP;
input  [0:0] m_axi_in_V_BID;
input  [0:0] m_axi_in_V_BUSER;
input  [31:0] in_V_offset;
output  [63:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_in_V_ARVALID;
reg m_axi_in_V_RREADY;
reg out_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    in_V_blk_n_AR;
reg    in_V_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_reg_147;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] tmp_reg_147_pp0_iter1_reg;
reg   [10:0] i_reg_97;
reg    ap_block_state1;
reg    ap_sig_ioackin_m_axi_in_V_ARREADY;
wire   [0:0] tmp_fu_129_p2;
wire    ap_block_state8_pp0_stage0_iter0;
reg    ap_block_state9_pp0_stage0_iter1;
reg    ap_block_state10_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] i_5_fu_135_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [63:0] e_V_reg_156;
wire    ap_CS_fsm_state7;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state8;
wire   [63:0] tmp_112_fu_118_p1;
reg    ap_reg_ioackin_m_axi_in_V_ARREADY;
reg    ap_block_pp0_stage0_01001;
wire   [28:0] in_V_offset1_fu_108_p4;
wire    ap_CS_fsm_state11;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_290;
reg    ap_condition_144;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_reg_ioackin_m_axi_in_V_ARREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state8) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state8)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state8);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_in_V_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state1)) begin
            if ((1'b1 == ap_condition_144)) begin
                ap_reg_ioackin_m_axi_in_V_ARREADY <= 1'b0;
            end else if ((1'b1 == ap_condition_290)) begin
                ap_reg_ioackin_m_axi_in_V_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_129_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_97 <= i_5_fu_135_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_97 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_147 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        e_V_reg_156 <= m_axi_in_V_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_147 <= tmp_fu_129_p2;
        tmp_reg_147_pp0_iter1_reg <= tmp_reg_147;
    end
end

always @ (*) begin
    if ((tmp_fu_129_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_in_V_ARREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_in_V_ARREADY = m_axi_in_V_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_in_V_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        in_V_blk_n_AR = m_axi_in_V_ARREADY;
    end else begin
        in_V_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_147 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        in_V_blk_n_R = m_axi_in_V_RVALID;
    end else begin
        in_V_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_reg_ioackin_m_axi_in_V_ARREADY == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        m_axi_in_V_ARVALID = 1'b1;
    end else begin
        m_axi_in_V_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_147 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_in_V_RREADY = 1'b1;
    end else begin
        m_axi_in_V_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_147_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_147_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_sig_ioackin_m_axi_in_V_ARREADY == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_fu_129_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_fu_129_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_reg_147_pp0_iter1_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_reg_147 == 1'd0) & (m_axi_in_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_reg_147_pp0_iter1_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_reg_147 == 1'd0) & (m_axi_in_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_reg_147_pp0_iter1_reg == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((tmp_reg_147 == 1'd0) & (m_axi_in_V_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter2 = ((tmp_reg_147_pp0_iter1_reg == 1'd0) & (out_V_V_full_n == 1'b0));
end

assign ap_block_state8_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp0_stage0_iter1 = ((tmp_reg_147 == 1'd0) & (m_axi_in_V_RVALID == 1'b0));
end

always @ (*) begin
    ap_condition_144 = ~((real_start == 1'b0) | (ap_sig_ioackin_m_axi_in_V_ARREADY == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_condition_290 = (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (m_axi_in_V_ARREADY == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign i_5_fu_135_p2 = (i_reg_97 + 11'd1);

assign in_V_offset1_fu_108_p4 = {{in_V_offset[31:3]}};

assign m_axi_in_V_ARADDR = tmp_112_fu_118_p1;

assign m_axi_in_V_ARBURST = 2'd0;

assign m_axi_in_V_ARCACHE = 4'd0;

assign m_axi_in_V_ARID = 1'd0;

assign m_axi_in_V_ARLEN = 32'd1536;

assign m_axi_in_V_ARLOCK = 2'd0;

assign m_axi_in_V_ARPROT = 3'd0;

assign m_axi_in_V_ARQOS = 4'd0;

assign m_axi_in_V_ARREGION = 4'd0;

assign m_axi_in_V_ARSIZE = 3'd0;

assign m_axi_in_V_ARUSER = 1'd0;

assign m_axi_in_V_AWADDR = 32'd0;

assign m_axi_in_V_AWBURST = 2'd0;

assign m_axi_in_V_AWCACHE = 4'd0;

assign m_axi_in_V_AWID = 1'd0;

assign m_axi_in_V_AWLEN = 32'd0;

assign m_axi_in_V_AWLOCK = 2'd0;

assign m_axi_in_V_AWPROT = 3'd0;

assign m_axi_in_V_AWQOS = 4'd0;

assign m_axi_in_V_AWREGION = 4'd0;

assign m_axi_in_V_AWSIZE = 3'd0;

assign m_axi_in_V_AWUSER = 1'd0;

assign m_axi_in_V_AWVALID = 1'b0;

assign m_axi_in_V_BREADY = 1'b0;

assign m_axi_in_V_WDATA = 64'd0;

assign m_axi_in_V_WID = 1'd0;

assign m_axi_in_V_WLAST = 1'b0;

assign m_axi_in_V_WSTRB = 8'd0;

assign m_axi_in_V_WUSER = 1'd0;

assign m_axi_in_V_WVALID = 1'b0;

assign out_V_V_din = e_V_reg_156;

assign start_out = real_start;

assign tmp_112_fu_118_p1 = in_V_offset1_fu_108_p4;

assign tmp_fu_129_p2 = ((i_reg_97 == 11'd1536) ? 1'b1 : 1'b0);

endmodule //Mem2Stream

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingMaxPool_Pre (
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
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_pp2_stage0 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

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
input  [7:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;
output  [7:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg in_V_V_read;
reg out_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond_flatten_reg_299;
reg    out_V_V_blk_n;
wire    ap_CS_fsm_pp2_stage0;
reg    ap_enable_reg_pp2_iter1;
wire    ap_block_pp2_stage0;
reg   [0:0] tmp_51_reg_322;
reg   [12:0] indvar_flatten_reg_160;
reg   [8:0] ch4_reg_171;
reg   [8:0] ch6_reg_182;
wire   [8:0] ch_1_fu_199_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_49_fu_210_p2;
wire    ap_CS_fsm_state4;
wire   [6:0] xp_1_fu_216_p2;
reg   [6:0] xp_1_reg_294;
wire   [0:0] exitcond_flatten_fu_222_p2;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [12:0] indvar_flatten_next_fu_228_p2;
reg    ap_enable_reg_pp1_iter0;
reg   [7:0] buf_0_V_addr_2_reg_308;
wire   [8:0] ch_3_fu_253_p2;
wire   [0:0] tmp_51_fu_265_p2;
wire    ap_block_state8_pp2_stage0_iter0;
reg    ap_block_state9_pp2_stage0_iter1;
reg    ap_block_pp2_stage0_11001;
wire   [8:0] ch_2_fu_271_p2;
reg    ap_enable_reg_pp2_iter0;
reg   [7:0] buf_0_V_addr_1_reg_331;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
wire    ap_CS_fsm_state7;
reg    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state8;
reg   [7:0] buf_0_V_address0;
reg    buf_0_V_ce0;
reg    buf_0_V_we0;
wire   [7:0] buf_0_V_q0;
reg   [7:0] buf_0_V_address1;
reg    buf_0_V_ce1;
reg    buf_0_V_we1;
wire   [7:0] buf_0_V_q1;
reg   [8:0] ch_reg_138;
reg    ap_block_state1;
wire   [0:0] tmp_fu_193_p2;
reg   [6:0] xp_reg_149;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state3;
wire   [63:0] tmp_s_fu_205_p1;
wire   [63:0] tmp_52_fu_248_p1;
wire   [63:0] tmp_53_fu_277_p1;
reg    ap_block_pp2_stage0_01001;
wire   [0:0] tmp_54_fu_259_p2;
wire   [0:0] tmp_880_fu_234_p2;
wire   [8:0] ch4_mid2_fu_240_p3;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
end

StreamingMaxPool_Thq #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
buf_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_0_V_address0),
    .ce0(buf_0_V_ce0),
    .we0(buf_0_V_we0),
    .d0(8'd0),
    .q0(buf_0_V_q0),
    .address1(buf_0_V_address1),
    .ce1(buf_0_V_ce1),
    .we1(buf_0_V_we1),
    .d1(in_V_V_dout),
    .q1(buf_0_V_q1)
);

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
        end else if (((tmp_49_fu_210_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((tmp_49_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((tmp_49_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp2_stage0) & (1'b1 == ap_condition_pp2_exit_iter0_state8) & (1'b0 == ap_block_pp2_stage0_subdone))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp2_exit_iter0_state8) & (1'b0 == ap_block_pp2_stage0_subdone))) begin
            ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state8);
        end else if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter1 <= 1'b0;
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
    if (((tmp_49_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ch4_reg_171 <= 9'd0;
    end else if (((exitcond_flatten_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        ch4_reg_171 <= ch_3_fu_253_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ch6_reg_182 <= 9'd0;
    end else if (((tmp_51_fu_265_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        ch6_reg_182 <= ch_2_fu_271_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ch_reg_138 <= ch_1_fu_199_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ch_reg_138 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_49_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        indvar_flatten_reg_160 <= 13'd0;
    end else if (((exitcond_flatten_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten_reg_160 <= indvar_flatten_next_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xp_reg_149 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        xp_reg_149 <= xp_1_reg_294;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_51_fu_265_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        buf_0_V_addr_1_reg_331 <= tmp_53_fu_277_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_222_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        buf_0_V_addr_2_reg_308 <= tmp_52_fu_248_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_299 <= exitcond_flatten_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
        tmp_51_reg_322 <= tmp_51_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        xp_1_reg_294 <= xp_1_fu_216_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_222_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((tmp_51_fu_265_p2 == 1'd1)) begin
        ap_condition_pp2_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_49_fu_210_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        buf_0_V_address0 = buf_0_V_addr_1_reg_331;
    end else if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buf_0_V_address0 = tmp_52_fu_248_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_V_address0 = tmp_s_fu_205_p1;
    end else begin
        buf_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        buf_0_V_address1 = tmp_53_fu_277_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buf_0_V_address1 = buf_0_V_addr_2_reg_308;
    end else begin
        buf_0_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        buf_0_V_ce0 = 1'b1;
    end else begin
        buf_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (1'b0 == ap_block_pp2_stage0_11001)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        buf_0_V_ce1 = 1'b1;
    end else begin
        buf_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_51_reg_322 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001)))) begin
        buf_0_V_we0 = 1'b1;
    end else begin
        buf_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (tmp_54_fu_259_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        buf_0_V_we1 = 1'b1;
    end else begin
        buf_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_299 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_299 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_49_fu_210_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (tmp_51_reg_322 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_51_reg_322 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (1'b0 == ap_block_pp2_stage0_11001))) begin
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
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_193_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_49_fu_210_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_flatten_fu_222_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_flatten_fu_222_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if (~((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b0 == ap_block_pp2_stage0_subdone) & (tmp_51_fu_265_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if (((ap_enable_reg_pp2_iter0 == 1'b1) & (1'b0 == ap_block_pp2_stage0_subdone) & (tmp_51_fu_265_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((exitcond_flatten_reg_299 == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((exitcond_flatten_reg_299 == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp2_stage0_01001 = ((tmp_51_reg_322 == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp2_stage0_11001 = ((tmp_51_reg_322 == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp2_stage0_subdone = ((tmp_51_reg_322 == 1'd0) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = ((exitcond_flatten_reg_299 == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign ap_block_state8_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp2_stage0_iter1 = ((tmp_51_reg_322 == 1'd0) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign ch4_mid2_fu_240_p3 = ((tmp_880_fu_234_p2[0:0] === 1'b1) ? 9'd0 : ch4_reg_171);

assign ch_1_fu_199_p2 = (ch_reg_138 + 9'd1);

assign ch_2_fu_271_p2 = (ch6_reg_182 + 9'd1);

assign ch_3_fu_253_p2 = (ch4_mid2_fu_240_p3 + 9'd1);

assign exitcond_flatten_fu_222_p2 = ((indvar_flatten_reg_160 == 13'd4096) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_228_p2 = (indvar_flatten_reg_160 + 13'd1);

assign out_V_V_din = buf_0_V_q1;

assign start_out = real_start;

assign tmp_49_fu_210_p2 = ((xp_reg_149 == 7'd64) ? 1'b1 : 1'b0);

assign tmp_51_fu_265_p2 = ((ch6_reg_182 == 9'd256) ? 1'b1 : 1'b0);

assign tmp_52_fu_248_p1 = ch4_mid2_fu_240_p3;

assign tmp_53_fu_277_p1 = ch6_reg_182;

assign tmp_54_fu_259_p2 = ((in_V_V_dout > buf_0_V_q0) ? 1'b1 : 1'b0);

assign tmp_880_fu_234_p2 = ((ch4_reg_171 == 9'd256) ? 1'b1 : 1'b0);

assign tmp_fu_193_p2 = ((ch_reg_138 == 9'd256) ? 1'b1 : 1'b0);

assign tmp_s_fu_205_p1 = ch_reg_138;

assign xp_1_fu_216_p2 = (xp_reg_149 + 7'd1);

endmodule //StreamingMaxPool_Pre

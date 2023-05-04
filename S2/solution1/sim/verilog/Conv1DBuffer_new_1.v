// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Conv1DBuffer_new_1 (
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

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_pp0_stage0 = 5'd2;
parameter    ap_ST_fsm_state4 = 5'd4;
parameter    ap_ST_fsm_pp1_stage0 = 5'd8;
parameter    ap_ST_fsm_state7 = 5'd16;

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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_reg_388;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] or_cond_mid2_reg_411;
reg    out_V_V_blk_n;
reg   [0:0] exitcond_flatten_reg_397;
reg   [7:0] ptr_simd_reg_135;
reg   [19:0] indvar_flatten2_reg_147;
reg   [7:0] op1_assign_reg_158;
reg   [13:0] indvar_flatten_reg_169;
reg   [5:0] nm_reg_180;
reg   [7:0] ptr_simd4_reg_191;
wire   [0:0] tmp_fu_202_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] ptr_simd_3_fu_208_p2;
reg   [7:0] ptr_simd_3_reg_392;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] exitcond_flatten_fu_237_p2;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [19:0] indvar_flatten_next1_fu_243_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [7:0] op1_assign_mid2_fu_307_p3;
wire   [0:0] or_cond_mid2_fu_347_p3;
wire   [5:0] nm_mid2_fu_355_p3;
reg   [6:0] inputBuf_0_V_addr_3_reg_420;
wire   [7:0] ptr_simd_4_fu_368_p2;
wire   [13:0] indvar_flatten_next_fu_380_p3;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_CS_fsm_state4;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg   [6:0] inputBuf_0_V_address0;
reg    inputBuf_0_V_ce0;
reg    inputBuf_0_V_we0;
wire   [7:0] inputBuf_0_V_q0;
reg    inputBuf_0_V_ce1;
reg    inputBuf_0_V_we1;
reg   [7:0] ap_phi_mux_ptr_simd_phi_fu_139_p4;
wire   [63:0] tmp_s_fu_214_p1;
wire   [63:0] tmp_130_fu_363_p1;
reg    ap_block_pp1_stage0_01001;
wire   [0:0] tmp_126_fu_219_p2;
wire   [0:0] tmp_128_fu_225_p2;
wire   [0:0] exitcond_flatten2_fu_255_p2;
wire   [7:0] ofm_iter_fu_249_p2;
wire   [0:0] tmp_126_mid1_fu_269_p2;
wire   [0:0] or_cond_fu_231_p2;
wire   [0:0] not_exitcond_flatten_fu_283_p2;
wire   [0:0] tmp_296_fu_295_p2;
wire   [5:0] nm_mid_fu_261_p3;
wire   [0:0] tmp_129_mid_fu_301_p2;
wire   [0:0] tmp_283_fu_321_p2;
wire   [5:0] nm_4_fu_315_p2;
wire   [0:0] tmp_126_mid2_fu_275_p3;
wire   [0:0] tmp_128_mid1_fu_335_p2;
wire   [0:0] or_cond_mid1_fu_341_p2;
wire   [0:0] or_cond_mid_fu_289_p2;
wire   [7:0] ptr_simd4_mid2_fu_327_p3;
wire   [13:0] indvar_flatten_op_fu_374_p2;
wire    ap_CS_fsm_state7;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

Conv1DBuffer_new3tde #(
    .DataWidth( 8 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
inputBuf_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(inputBuf_0_V_address0),
    .ce0(inputBuf_0_V_ce0),
    .we0(inputBuf_0_V_we0),
    .d0(in_V_V_dout),
    .q0(inputBuf_0_V_q0),
    .address1(inputBuf_0_V_addr_3_reg_420),
    .ce1(inputBuf_0_V_ce1),
    .we1(inputBuf_0_V_we1),
    .d1(in_V_V_dout)
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
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
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
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        indvar_flatten2_reg_147 <= 20'd0;
    end else if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_147 <= indvar_flatten_next1_fu_243_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        indvar_flatten_reg_169 <= 14'd0;
    end else if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten_reg_169 <= indvar_flatten_next_fu_380_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nm_reg_180 <= 6'd0;
    end else if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        nm_reg_180 <= nm_mid2_fu_355_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        op1_assign_reg_158 <= 8'd0;
    end else if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        op1_assign_reg_158 <= op1_assign_mid2_fu_307_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ptr_simd4_reg_191 <= 8'd0;
    end else if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        ptr_simd4_reg_191 <= ptr_simd_4_fu_368_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ptr_simd_reg_135 <= 8'd0;
    end else if (((tmp_reg_388 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ptr_simd_reg_135 <= ptr_simd_3_reg_392;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_397 <= exitcond_flatten_fu_237_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_237_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        inputBuf_0_V_addr_3_reg_420 <= tmp_130_fu_363_p1;
        or_cond_mid2_reg_411 <= or_cond_mid2_fu_347_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ptr_simd_3_reg_392 <= ptr_simd_3_fu_208_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_388 <= tmp_fu_202_p2;
    end
end

always @ (*) begin
    if ((tmp_fu_202_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_237_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((tmp_reg_388 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_ptr_simd_phi_fu_139_p4 = ptr_simd_3_reg_392;
    end else begin
        ap_phi_mux_ptr_simd_phi_fu_139_p4 = ptr_simd_reg_135;
    end
end

always @ (*) begin
    if ((((or_cond_mid2_reg_411 == 1'd1) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((tmp_reg_388 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((or_cond_mid2_reg_411 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((tmp_reg_388 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        inputBuf_0_V_address0 = tmp_130_fu_363_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inputBuf_0_V_address0 = tmp_s_fu_214_p1;
    end else begin
        inputBuf_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        inputBuf_0_V_ce0 = 1'b1;
    end else begin
        inputBuf_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        inputBuf_0_V_ce1 = 1'b1;
    end else begin
        inputBuf_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_388 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        inputBuf_0_V_we0 = 1'b1;
    end else begin
        inputBuf_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond_mid2_reg_411 == 1'd1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        inputBuf_0_V_we1 = 1'b1;
    end else begin
        inputBuf_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_397 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_397 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((tmp_fu_202_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((tmp_fu_202_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((exitcond_flatten_fu_237_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((exitcond_flatten_fu_237_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((tmp_reg_388 == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((tmp_reg_388 == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_flatten_reg_397 == 1'd0) & (out_V_V_full_n == 1'b0)) | ((or_cond_mid2_reg_411 == 1'd1) & (in_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_flatten_reg_397 == 1'd0) & (out_V_V_full_n == 1'b0)) | ((or_cond_mid2_reg_411 == 1'd1) & (in_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_flatten_reg_397 == 1'd0) & (out_V_V_full_n == 1'b0)) | ((or_cond_mid2_reg_411 == 1'd1) & (in_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((tmp_reg_388 == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = (((exitcond_flatten_reg_397 == 1'd0) & (out_V_V_full_n == 1'b0)) | ((or_cond_mid2_reg_411 == 1'd1) & (in_V_V_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond_flatten2_fu_255_p2 = ((indvar_flatten_reg_169 == 14'd4096) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_237_p2 = ((indvar_flatten2_reg_147 == 20'd524288) ? 1'b1 : 1'b0);

assign indvar_flatten_next1_fu_243_p2 = (indvar_flatten2_reg_147 + 20'd1);

assign indvar_flatten_next_fu_380_p3 = ((exitcond_flatten2_fu_255_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten_op_fu_374_p2);

assign indvar_flatten_op_fu_374_p2 = (indvar_flatten_reg_169 + 14'd1);

assign nm_4_fu_315_p2 = (nm_mid_fu_261_p3 + 6'd1);

assign nm_mid2_fu_355_p3 = ((tmp_129_mid_fu_301_p2[0:0] === 1'b1) ? nm_4_fu_315_p2 : nm_mid_fu_261_p3);

assign nm_mid_fu_261_p3 = ((exitcond_flatten2_fu_255_p2[0:0] === 1'b1) ? 6'd0 : nm_reg_180);

assign not_exitcond_flatten_fu_283_p2 = (exitcond_flatten2_fu_255_p2 ^ 1'd1);

assign ofm_iter_fu_249_p2 = (op1_assign_reg_158 + 8'd1);

assign op1_assign_mid2_fu_307_p3 = ((exitcond_flatten2_fu_255_p2[0:0] === 1'b1) ? ofm_iter_fu_249_p2 : op1_assign_reg_158);

assign or_cond_fu_231_p2 = (tmp_128_fu_225_p2 & tmp_126_fu_219_p2);

assign or_cond_mid1_fu_341_p2 = (tmp_128_mid1_fu_335_p2 & tmp_126_mid2_fu_275_p3);

assign or_cond_mid2_fu_347_p3 = ((tmp_129_mid_fu_301_p2[0:0] === 1'b1) ? or_cond_mid1_fu_341_p2 : or_cond_mid_fu_289_p2);

assign or_cond_mid_fu_289_p2 = (or_cond_fu_231_p2 & not_exitcond_flatten_fu_283_p2);

assign out_V_V_din = inputBuf_0_V_q0;

assign ptr_simd4_mid2_fu_327_p3 = ((tmp_283_fu_321_p2[0:0] === 1'b1) ? 8'd0 : ptr_simd4_reg_191);

assign ptr_simd_3_fu_208_p2 = (ap_phi_mux_ptr_simd_phi_fu_139_p4 + 8'd1);

assign ptr_simd_4_fu_368_p2 = (ptr_simd4_mid2_fu_327_p3 + 8'd1);

assign start_out = real_start;

assign tmp_126_fu_219_p2 = ((op1_assign_reg_158 < 8'd127) ? 1'b1 : 1'b0);

assign tmp_126_mid1_fu_269_p2 = ((ofm_iter_fu_249_p2 < 8'd127) ? 1'b1 : 1'b0);

assign tmp_126_mid2_fu_275_p3 = ((exitcond_flatten2_fu_255_p2[0:0] === 1'b1) ? tmp_126_mid1_fu_269_p2 : tmp_126_fu_219_p2);

assign tmp_128_fu_225_p2 = ((nm_reg_180 == 6'd31) ? 1'b1 : 1'b0);

assign tmp_128_mid1_fu_335_p2 = ((nm_4_fu_315_p2 == 6'd31) ? 1'b1 : 1'b0);

assign tmp_129_mid_fu_301_p2 = (tmp_296_fu_295_p2 & not_exitcond_flatten_fu_283_p2);

assign tmp_130_fu_363_p1 = ptr_simd4_mid2_fu_327_p3;

assign tmp_283_fu_321_p2 = (tmp_129_mid_fu_301_p2 | exitcond_flatten2_fu_255_p2);

assign tmp_296_fu_295_p2 = ((ptr_simd4_reg_191 == 8'd128) ? 1'b1 : 1'b0);

assign tmp_fu_202_p2 = ((ap_phi_mux_ptr_simd_phi_fu_139_p4 == 8'd128) ? 1'b1 : 1'b0);

assign tmp_s_fu_214_p1 = ptr_simd_reg_135;

endmodule //Conv1DBuffer_new_1

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Conv1DMac_new_1 (
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

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;

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
output  [31:0] out_V_V_din;
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
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire   [11:0] weights10_m_weights_3_address0;
reg    weights10_m_weights_3_ce0;
wire   [6:0] weights10_m_weights_3_q0;
wire   [11:0] weights10_m_weights_2_address0;
reg    weights10_m_weights_2_ce0;
wire   [6:0] weights10_m_weights_2_q0;
wire   [11:0] weights10_m_weights_1_address0;
reg    weights10_m_weights_1_ce0;
wire   [6:0] weights10_m_weights_1_q0;
wire   [11:0] weights10_m_weights_s_address0;
reg    weights10_m_weights_s_ce0;
wire   [6:0] weights10_m_weights_s_q0;
reg    in_V_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten6_reg_1171;
reg   [0:0] exitcond_flatten6_reg_1171_pp0_iter1_reg;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] tmp_100_reg_1198;
reg   [0:0] tmp_100_reg_1198_pp0_iter3_reg;
reg   [19:0] indvar_flatten6_reg_207;
reg   [13:0] indvar_flatten_reg_218;
reg   [5:0] nm_reg_229;
reg   [7:0] sf_reg_240;
wire   [0:0] exitcond_flatten6_fu_283_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_state6_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
wire   [19:0] indvar_flatten_next6_fu_289_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] nm_t_mid2_fu_383_p3;
reg   [4:0] nm_t_mid2_reg_1180;
reg   [4:0] nm_t_mid2_reg_1180_pp0_iter1_reg;
reg   [4:0] nm_t_mid2_reg_1180_pp0_iter2_reg;
wire   [5:0] nm_mid2_fu_391_p3;
wire   [11:0] tmp_98_fu_403_p2;
reg   [11:0] tmp_98_reg_1193;
wire   [0:0] tmp_100_fu_409_p2;
reg   [0:0] tmp_100_reg_1198_pp0_iter1_reg;
reg   [0:0] tmp_100_reg_1198_pp0_iter2_reg;
wire   [7:0] sf_2_fu_415_p2;
wire   [13:0] indvar_flatten_next_fu_427_p3;
reg   [7:0] tmp_101_reg_1232;
reg   [0:0] tmp_354_reg_1237;
wire   [0:0] tmp_106_fu_510_p2;
reg   [0:0] tmp_106_reg_1242;
reg   [7:0] tmp_108_reg_1247;
reg   [0:0] tmp_357_reg_1252;
wire   [0:0] tmp_227_1_fu_580_p2;
reg   [0:0] tmp_227_1_reg_1257;
reg   [7:0] tmp_113_reg_1262;
reg   [0:0] tmp_360_reg_1267;
wire   [0:0] tmp_227_2_fu_650_p2;
reg   [0:0] tmp_227_2_reg_1272;
reg   [7:0] tmp_118_reg_1277;
reg   [0:0] tmp_363_reg_1282;
wire   [0:0] tmp_227_3_fu_720_p2;
reg   [0:0] tmp_227_3_reg_1287;
wire   [7:0] p_Val2_s_fu_903_p2;
reg   [7:0] p_Val2_s_reg_1292;
wire   [7:0] p_Val2_22_1_fu_978_p2;
reg   [7:0] p_Val2_22_1_reg_1297;
wire   [7:0] p_Val2_22_2_fu_1053_p2;
reg   [7:0] p_Val2_22_2_reg_1302;
wire   [7:0] p_Val2_22_3_fu_1128_p2;
reg   [7:0] p_Val2_22_3_reg_1307;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter3;
wire   [63:0] tmp_99_fu_435_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] macRegisters_0_V_4_fu_126;
wire   [7:0] macRegisters_0_V_fu_752_p2;
reg   [7:0] macRegisters_1_V_4_fu_130;
wire   [7:0] macRegisters_1_V_fu_771_p2;
reg   [7:0] macRegisters_2_V_4_fu_134;
wire   [7:0] macRegisters_2_V_fu_790_p2;
reg   [7:0] macRegisters_3_V_4_fu_138;
wire   [7:0] macRegisters_3_V_fu_809_p2;
wire   [4:0] tmp_fu_271_p1;
wire   [0:0] exitcond_flatten_fu_295_p2;
wire   [11:0] tmp_96_fu_275_p3;
wire   [0:0] tmp_54_fu_331_p2;
wire   [0:0] not_exitcond_flatten_fu_325_p2;
wire   [5:0] nm_mid_fu_301_p3;
wire   [0:0] tmp_97_mid_fu_337_p2;
wire   [0:0] tmp_276_fu_349_p2;
wire   [5:0] nm_2_fu_343_p2;
wire   [4:0] tmp_352_fu_363_p1;
wire   [11:0] tmp_96_mid1_fu_367_p3;
wire   [11:0] tmp_96_mid_fu_309_p3;
wire   [4:0] nm_t_mid_fu_317_p3;
wire   [7:0] sf_mid2_fu_355_p3;
wire   [11:0] sf_cast1_fu_399_p1;
wire   [11:0] tmp_96_mid2_fu_375_p3;
wire   [13:0] indvar_flatten_op_fu_421_p2;
wire  signed [6:0] p_Val2_s_133_fu_450_p0;
wire  signed [7:0] p_Val2_s_133_fu_450_p1;
wire  signed [14:0] p_08_cast_fu_442_p1;
wire   [14:0] p_Val2_s_133_fu_450_p2;
wire   [0:0] tmp_355_fu_482_p1;
wire   [0:0] tmp_353_fu_456_p3;
wire   [4:0] tmp_104_fu_492_p4;
wire   [0:0] tmp_103_fu_486_p2;
wire   [5:0] tmp_105_fu_502_p3;
wire  signed [6:0] p_Val2_1_fu_520_p0;
wire  signed [7:0] p_Val2_1_fu_520_p1;
wire   [14:0] p_Val2_1_fu_520_p2;
wire   [0:0] tmp_358_fu_552_p1;
wire   [0:0] tmp_356_fu_526_p3;
wire   [4:0] tmp_111_fu_562_p4;
wire   [0:0] tmp_110_fu_556_p2;
wire   [5:0] tmp_112_fu_572_p3;
wire  signed [6:0] p_Val2_2_fu_590_p0;
wire  signed [7:0] p_Val2_2_fu_590_p1;
wire   [14:0] p_Val2_2_fu_590_p2;
wire   [0:0] tmp_361_fu_622_p1;
wire   [0:0] tmp_359_fu_596_p3;
wire   [4:0] tmp_116_fu_632_p4;
wire   [0:0] tmp_115_fu_626_p2;
wire   [5:0] tmp_117_fu_642_p3;
wire  signed [6:0] p_Val2_3_fu_660_p0;
wire  signed [7:0] p_Val2_3_fu_660_p1;
wire   [14:0] p_Val2_3_fu_660_p2;
wire   [0:0] tmp_364_fu_692_p1;
wire   [0:0] tmp_362_fu_666_p3;
wire   [4:0] tmp_121_fu_702_p4;
wire   [0:0] tmp_120_fu_696_p2;
wire   [5:0] tmp_122_fu_712_p3;
wire   [0:0] qb_assign_2_fu_738_p2;
wire   [7:0] tmp_107_fu_742_p1;
wire   [7:0] tmp1_fu_746_p2;
wire   [0:0] qb_assign_2_1_fu_757_p2;
wire   [7:0] tmp_228_1_fu_761_p1;
wire   [7:0] tmp2_fu_765_p2;
wire   [0:0] qb_assign_2_2_fu_776_p2;
wire   [7:0] tmp_228_2_fu_780_p1;
wire   [7:0] tmp3_fu_784_p2;
wire   [0:0] qb_assign_2_3_fu_795_p2;
wire   [7:0] tmp_228_3_fu_799_p1;
wire   [7:0] tmp4_fu_803_p2;
wire   [7:0] tmp_123_fu_834_p34;
wire   [7:0] tmp_124_fu_909_p34;
wire   [7:0] tmp_125_fu_984_p34;
wire   [7:0] tmp_126_fu_1059_p34;
wire    ap_CS_fsm_state7;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

Conv1DMac_new_1_wQgW #(
    .DataWidth( 7 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights10_m_weights_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights10_m_weights_3_address0),
    .ce0(weights10_m_weights_3_ce0),
    .q0(weights10_m_weights_3_q0)
);

Conv1DMac_new_1_wRg6 #(
    .DataWidth( 7 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights10_m_weights_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights10_m_weights_2_address0),
    .ce0(weights10_m_weights_2_ce0),
    .q0(weights10_m_weights_2_q0)
);

Conv1DMac_new_1_wShg #(
    .DataWidth( 7 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights10_m_weights_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights10_m_weights_1_address0),
    .ce0(weights10_m_weights_1_ce0),
    .q0(weights10_m_weights_1_q0)
);

Conv1DMac_new_1_wThq #(
    .DataWidth( 7 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights10_m_weights_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights10_m_weights_s_address0),
    .ce0(weights10_m_weights_s_ce0),
    .q0(weights10_m_weights_s_q0)
);

computeS2_mux_325yd2_x_x_x_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 8 ),
    .din26_WIDTH( 8 ),
    .din27_WIDTH( 8 ),
    .din28_WIDTH( 8 ),
    .din29_WIDTH( 8 ),
    .din30_WIDTH( 8 ),
    .din31_WIDTH( 8 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
computeS2_mux_325yd2_x_x_x_x_U111(
    .din0(8'd0),
    .din1(8'd1),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd255),
    .din6(8'd0),
    .din7(8'd0),
    .din8(8'd0),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd0),
    .din15(8'd0),
    .din16(8'd0),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd1),
    .din24(8'd0),
    .din25(8'd0),
    .din26(8'd1),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1180_pp0_iter2_reg),
    .dout(tmp_123_fu_834_p34)
);

computeS2_mux_325yd2_x_x_x_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 8 ),
    .din26_WIDTH( 8 ),
    .din27_WIDTH( 8 ),
    .din28_WIDTH( 8 ),
    .din29_WIDTH( 8 ),
    .din30_WIDTH( 8 ),
    .din31_WIDTH( 8 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
computeS2_mux_325yd2_x_x_x_x_U112(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd0),
    .din3(8'd1),
    .din4(8'd255),
    .din5(8'd0),
    .din6(8'd1),
    .din7(8'd0),
    .din8(8'd0),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd0),
    .din15(8'd0),
    .din16(8'd0),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd0),
    .din24(8'd1),
    .din25(8'd0),
    .din26(8'd0),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1180_pp0_iter2_reg),
    .dout(tmp_124_fu_909_p34)
);

computeS2_mux_325yd2_x_x_x_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 8 ),
    .din26_WIDTH( 8 ),
    .din27_WIDTH( 8 ),
    .din28_WIDTH( 8 ),
    .din29_WIDTH( 8 ),
    .din30_WIDTH( 8 ),
    .din31_WIDTH( 8 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
computeS2_mux_325yd2_x_x_x_x_U113(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd0),
    .din6(8'd0),
    .din7(8'd1),
    .din8(8'd0),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd255),
    .din13(8'd0),
    .din14(8'd0),
    .din15(8'd0),
    .din16(8'd0),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd0),
    .din24(8'd0),
    .din25(8'd0),
    .din26(8'd0),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1180_pp0_iter2_reg),
    .dout(tmp_125_fu_984_p34)
);

computeS2_mux_325yd2_x_x_x_x #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 8 ),
    .din26_WIDTH( 8 ),
    .din27_WIDTH( 8 ),
    .din28_WIDTH( 8 ),
    .din29_WIDTH( 8 ),
    .din30_WIDTH( 8 ),
    .din31_WIDTH( 8 ),
    .din32_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
computeS2_mux_325yd2_x_x_x_x_U114(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd1),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd0),
    .din6(8'd0),
    .din7(8'd0),
    .din8(8'd0),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd255),
    .din15(8'd0),
    .din16(8'd0),
    .din17(8'd0),
    .din18(8'd255),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd255),
    .din24(8'd0),
    .din25(8'd255),
    .din26(8'd0),
    .din27(8'd0),
    .din28(8'd255),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1180_pp0_iter2_reg),
    .dout(tmp_126_fu_1059_p34)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
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
    if (((exitcond_flatten6_fu_283_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten6_reg_207 <= indvar_flatten_next6_fu_289_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten6_reg_207 <= 20'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten6_fu_283_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_218 <= indvar_flatten_next_fu_427_p3;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_218 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_100_reg_1198_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_0_V_4_fu_126 <= macRegisters_0_V_fu_752_p2;
    end else if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_100_reg_1198_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macRegisters_0_V_4_fu_126 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_100_reg_1198_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_1_V_4_fu_130 <= macRegisters_1_V_fu_771_p2;
    end else if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_100_reg_1198_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macRegisters_1_V_4_fu_130 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_100_reg_1198_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_2_V_4_fu_134 <= macRegisters_2_V_fu_790_p2;
    end else if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_100_reg_1198_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macRegisters_2_V_4_fu_134 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_100_reg_1198_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_3_V_4_fu_138 <= macRegisters_3_V_fu_809_p2;
    end else if (((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_100_reg_1198_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macRegisters_3_V_4_fu_138 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten6_fu_283_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nm_reg_229 <= nm_mid2_fu_391_p3;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        nm_reg_229 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten6_fu_283_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sf_reg_240 <= sf_2_fu_415_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sf_reg_240 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_flatten6_reg_1171 <= exitcond_flatten6_fu_283_p2;
        exitcond_flatten6_reg_1171_pp0_iter1_reg <= exitcond_flatten6_reg_1171;
        nm_t_mid2_reg_1180_pp0_iter1_reg <= nm_t_mid2_reg_1180;
        tmp_100_reg_1198_pp0_iter1_reg <= tmp_100_reg_1198;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten6_fu_283_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nm_t_mid2_reg_1180 <= nm_t_mid2_fu_383_p3;
        tmp_100_reg_1198 <= tmp_100_fu_409_p2;
        tmp_98_reg_1193 <= tmp_98_fu_403_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        nm_t_mid2_reg_1180_pp0_iter2_reg <= nm_t_mid2_reg_1180_pp0_iter1_reg;
        tmp_100_reg_1198_pp0_iter2_reg <= tmp_100_reg_1198_pp0_iter1_reg;
        tmp_100_reg_1198_pp0_iter3_reg <= tmp_100_reg_1198_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_100_reg_1198_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_22_1_reg_1297 <= p_Val2_22_1_fu_978_p2;
        p_Val2_22_2_reg_1302 <= p_Val2_22_2_fu_1053_p2;
        p_Val2_22_3_reg_1307 <= p_Val2_22_3_fu_1128_p2;
        p_Val2_s_reg_1292 <= p_Val2_s_fu_903_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_101_reg_1232 <= {{p_Val2_s_133_fu_450_p2[14:7]}};
        tmp_106_reg_1242 <= tmp_106_fu_510_p2;
        tmp_108_reg_1247 <= {{p_Val2_1_fu_520_p2[14:7]}};
        tmp_113_reg_1262 <= {{p_Val2_2_fu_590_p2[14:7]}};
        tmp_118_reg_1277 <= {{p_Val2_3_fu_660_p2[14:7]}};
        tmp_227_1_reg_1257 <= tmp_227_1_fu_580_p2;
        tmp_227_2_reg_1272 <= tmp_227_2_fu_650_p2;
        tmp_227_3_reg_1287 <= tmp_227_3_fu_720_p2;
        tmp_354_reg_1237 <= p_Val2_s_133_fu_450_p2[32'd6];
        tmp_357_reg_1252 <= p_Val2_1_fu_520_p2[32'd6];
        tmp_360_reg_1267 <= p_Val2_2_fu_590_p2[32'd6];
        tmp_363_reg_1282 <= p_Val2_3_fu_660_p2[32'd6];
    end
end

always @ (*) begin
    if ((exitcond_flatten6_fu_283_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
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
    if (((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights10_m_weights_1_ce0 = 1'b1;
    end else begin
        weights10_m_weights_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights10_m_weights_2_ce0 = 1'b1;
    end else begin
        weights10_m_weights_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights10_m_weights_3_ce0 = 1'b1;
    end else begin
        weights10_m_weights_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights10_m_weights_s_ce0 = 1'b1;
    end else begin
        weights10_m_weights_s_ce0 = 1'b0;
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
            if ((~((exitcond_flatten6_fu_283_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten6_fu_283_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((exitcond_flatten6_reg_1171_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter4 = ((tmp_100_reg_1198_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond_flatten6_fu_283_p2 = ((indvar_flatten6_reg_207 == 20'd524288) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_295_p2 = ((indvar_flatten_reg_218 == 14'd4096) ? 1'b1 : 1'b0);

assign indvar_flatten_next6_fu_289_p2 = (20'd1 + indvar_flatten6_reg_207);

assign indvar_flatten_next_fu_427_p3 = ((exitcond_flatten_fu_295_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten_op_fu_421_p2);

assign indvar_flatten_op_fu_421_p2 = (indvar_flatten_reg_218 + 14'd1);

assign macRegisters_0_V_fu_752_p2 = (tmp_101_reg_1232 + tmp1_fu_746_p2);

assign macRegisters_1_V_fu_771_p2 = (tmp_108_reg_1247 + tmp2_fu_765_p2);

assign macRegisters_2_V_fu_790_p2 = (tmp_113_reg_1262 + tmp3_fu_784_p2);

assign macRegisters_3_V_fu_809_p2 = (tmp_118_reg_1277 + tmp4_fu_803_p2);

assign nm_2_fu_343_p2 = (6'd1 + nm_mid_fu_301_p3);

assign nm_mid2_fu_391_p3 = ((tmp_97_mid_fu_337_p2[0:0] === 1'b1) ? nm_2_fu_343_p2 : nm_mid_fu_301_p3);

assign nm_mid_fu_301_p3 = ((exitcond_flatten_fu_295_p2[0:0] === 1'b1) ? 6'd0 : nm_reg_229);

assign nm_t_mid2_fu_383_p3 = ((tmp_97_mid_fu_337_p2[0:0] === 1'b1) ? tmp_352_fu_363_p1 : nm_t_mid_fu_317_p3);

assign nm_t_mid_fu_317_p3 = ((exitcond_flatten_fu_295_p2[0:0] === 1'b1) ? 5'd0 : tmp_fu_271_p1);

assign not_exitcond_flatten_fu_325_p2 = (exitcond_flatten_fu_295_p2 ^ 1'd1);

assign out_V_V_din = {{{{p_Val2_22_3_reg_1307}, {p_Val2_22_2_reg_1302}}, {p_Val2_22_1_reg_1297}}, {p_Val2_s_reg_1292}};

assign p_08_cast_fu_442_p1 = $signed(in_V_V_dout);

assign p_Val2_1_fu_520_p0 = weights10_m_weights_2_q0;

assign p_Val2_1_fu_520_p1 = p_08_cast_fu_442_p1;

assign p_Val2_1_fu_520_p2 = ($signed(p_Val2_1_fu_520_p0) * $signed(p_Val2_1_fu_520_p1));

assign p_Val2_22_1_fu_978_p2 = (macRegisters_1_V_fu_771_p2 + tmp_124_fu_909_p34);

assign p_Val2_22_2_fu_1053_p2 = (macRegisters_2_V_fu_790_p2 + tmp_125_fu_984_p34);

assign p_Val2_22_3_fu_1128_p2 = (macRegisters_3_V_fu_809_p2 + tmp_126_fu_1059_p34);

assign p_Val2_2_fu_590_p0 = weights10_m_weights_1_q0;

assign p_Val2_2_fu_590_p1 = p_08_cast_fu_442_p1;

assign p_Val2_2_fu_590_p2 = ($signed(p_Val2_2_fu_590_p0) * $signed(p_Val2_2_fu_590_p1));

assign p_Val2_3_fu_660_p0 = weights10_m_weights_s_q0;

assign p_Val2_3_fu_660_p1 = p_08_cast_fu_442_p1;

assign p_Val2_3_fu_660_p2 = ($signed(p_Val2_3_fu_660_p0) * $signed(p_Val2_3_fu_660_p1));

assign p_Val2_s_133_fu_450_p0 = weights10_m_weights_3_q0;

assign p_Val2_s_133_fu_450_p1 = p_08_cast_fu_442_p1;

assign p_Val2_s_133_fu_450_p2 = ($signed(p_Val2_s_133_fu_450_p0) * $signed(p_Val2_s_133_fu_450_p1));

assign p_Val2_s_fu_903_p2 = (macRegisters_0_V_fu_752_p2 + tmp_123_fu_834_p34);

assign qb_assign_2_1_fu_757_p2 = (tmp_357_reg_1252 & tmp_227_1_reg_1257);

assign qb_assign_2_2_fu_776_p2 = (tmp_360_reg_1267 & tmp_227_2_reg_1272);

assign qb_assign_2_3_fu_795_p2 = (tmp_363_reg_1282 & tmp_227_3_reg_1287);

assign qb_assign_2_fu_738_p2 = (tmp_354_reg_1237 & tmp_106_reg_1242);

assign sf_2_fu_415_p2 = (sf_mid2_fu_355_p3 + 8'd1);

assign sf_cast1_fu_399_p1 = sf_mid2_fu_355_p3;

assign sf_mid2_fu_355_p3 = ((tmp_276_fu_349_p2[0:0] === 1'b1) ? 8'd0 : sf_reg_240);

assign start_out = real_start;

assign tmp1_fu_746_p2 = (tmp_107_fu_742_p1 + macRegisters_0_V_4_fu_126);

assign tmp2_fu_765_p2 = (tmp_228_1_fu_761_p1 + macRegisters_1_V_4_fu_130);

assign tmp3_fu_784_p2 = (tmp_228_2_fu_780_p1 + macRegisters_2_V_4_fu_134);

assign tmp4_fu_803_p2 = (tmp_228_3_fu_799_p1 + macRegisters_3_V_4_fu_138);

assign tmp_100_fu_409_p2 = ((sf_mid2_fu_355_p3 == 8'd127) ? 1'b1 : 1'b0);

assign tmp_103_fu_486_p2 = (tmp_355_fu_482_p1 | tmp_353_fu_456_p3);

assign tmp_104_fu_492_p4 = {{p_Val2_s_133_fu_450_p2[5:1]}};

assign tmp_105_fu_502_p3 = {{tmp_104_fu_492_p4}, {tmp_103_fu_486_p2}};

assign tmp_106_fu_510_p2 = ((tmp_105_fu_502_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_107_fu_742_p1 = qb_assign_2_fu_738_p2;

assign tmp_110_fu_556_p2 = (tmp_358_fu_552_p1 | tmp_356_fu_526_p3);

assign tmp_111_fu_562_p4 = {{p_Val2_1_fu_520_p2[5:1]}};

assign tmp_112_fu_572_p3 = {{tmp_111_fu_562_p4}, {tmp_110_fu_556_p2}};

assign tmp_115_fu_626_p2 = (tmp_361_fu_622_p1 | tmp_359_fu_596_p3);

assign tmp_116_fu_632_p4 = {{p_Val2_2_fu_590_p2[5:1]}};

assign tmp_117_fu_642_p3 = {{tmp_116_fu_632_p4}, {tmp_115_fu_626_p2}};

assign tmp_120_fu_696_p2 = (tmp_364_fu_692_p1 | tmp_362_fu_666_p3);

assign tmp_121_fu_702_p4 = {{p_Val2_3_fu_660_p2[5:1]}};

assign tmp_122_fu_712_p3 = {{tmp_121_fu_702_p4}, {tmp_120_fu_696_p2}};

assign tmp_227_1_fu_580_p2 = ((tmp_112_fu_572_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_227_2_fu_650_p2 = ((tmp_117_fu_642_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_227_3_fu_720_p2 = ((tmp_122_fu_712_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_228_1_fu_761_p1 = qb_assign_2_1_fu_757_p2;

assign tmp_228_2_fu_780_p1 = qb_assign_2_2_fu_776_p2;

assign tmp_228_3_fu_799_p1 = qb_assign_2_3_fu_795_p2;

assign tmp_276_fu_349_p2 = (tmp_97_mid_fu_337_p2 | exitcond_flatten_fu_295_p2);

assign tmp_352_fu_363_p1 = nm_2_fu_343_p2[4:0];

assign tmp_353_fu_456_p3 = p_Val2_s_133_fu_450_p2[32'd14];

assign tmp_355_fu_482_p1 = p_Val2_s_133_fu_450_p2[0:0];

assign tmp_356_fu_526_p3 = p_Val2_1_fu_520_p2[32'd14];

assign tmp_358_fu_552_p1 = p_Val2_1_fu_520_p2[0:0];

assign tmp_359_fu_596_p3 = p_Val2_2_fu_590_p2[32'd14];

assign tmp_361_fu_622_p1 = p_Val2_2_fu_590_p2[0:0];

assign tmp_362_fu_666_p3 = p_Val2_3_fu_660_p2[32'd14];

assign tmp_364_fu_692_p1 = p_Val2_3_fu_660_p2[0:0];

assign tmp_54_fu_331_p2 = ((sf_reg_240 == 8'd128) ? 1'b1 : 1'b0);

assign tmp_96_fu_275_p3 = {{tmp_fu_271_p1}, {7'd0}};

assign tmp_96_mid1_fu_367_p3 = {{tmp_352_fu_363_p1}, {7'd0}};

assign tmp_96_mid2_fu_375_p3 = ((tmp_97_mid_fu_337_p2[0:0] === 1'b1) ? tmp_96_mid1_fu_367_p3 : tmp_96_mid_fu_309_p3);

assign tmp_96_mid_fu_309_p3 = ((exitcond_flatten_fu_295_p2[0:0] === 1'b1) ? 12'd0 : tmp_96_fu_275_p3);

assign tmp_97_mid_fu_337_p2 = (tmp_54_fu_331_p2 & not_exitcond_flatten_fu_325_p2);

assign tmp_98_fu_403_p2 = (sf_cast1_fu_399_p1 + tmp_96_mid2_fu_375_p3);

assign tmp_99_fu_435_p1 = tmp_98_reg_1193;

assign tmp_fu_271_p1 = nm_reg_229[4:0];

assign weights10_m_weights_1_address0 = tmp_99_fu_435_p1;

assign weights10_m_weights_2_address0 = tmp_99_fu_435_p1;

assign weights10_m_weights_3_address0 = tmp_99_fu_435_p1;

assign weights10_m_weights_s_address0 = tmp_99_fu_435_p1;

endmodule //Conv1DMac_new_1

// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Conv1DMac_new403 (
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
wire   [11:0] weights9_m_weights_V_address0;
reg    weights9_m_weights_V_ce0;
wire   [3:0] weights9_m_weights_V_q0;
wire   [11:0] weights9_m_weights_V_1_address0;
reg    weights9_m_weights_V_1_ce0;
wire   [3:0] weights9_m_weights_V_1_q0;
wire   [11:0] weights9_m_weights_V_2_address0;
reg    weights9_m_weights_V_2_ce0;
wire   [3:0] weights9_m_weights_V_2_q0;
wire   [11:0] weights9_m_weights_V_3_address0;
reg    weights9_m_weights_V_3_ce0;
wire   [3:0] weights9_m_weights_V_3_q0;
reg    in_V_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten3_reg_1224;
reg   [0:0] exitcond_flatten3_reg_1224_pp0_iter1_reg;
reg    out_V_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] tmp_60_reg_1251;
reg   [0:0] tmp_60_reg_1251_pp0_iter3_reg;
reg   [19:0] indvar_flatten3_reg_221;
reg   [13:0] indvar_flatten_reg_232;
reg   [5:0] nm_reg_243;
reg   [7:0] sf_reg_254;
wire   [0:0] exitcond_flatten3_fu_297_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_state6_pp0_stage0_iter4;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten3_reg_1224_pp0_iter2_reg;
wire   [19:0] indvar_flatten_next3_fu_303_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [4:0] nm_t_mid2_fu_397_p3;
reg   [4:0] nm_t_mid2_reg_1233;
reg   [4:0] nm_t_mid2_reg_1233_pp0_iter1_reg;
reg   [4:0] nm_t_mid2_reg_1233_pp0_iter2_reg;
reg   [4:0] nm_t_mid2_reg_1233_pp0_iter3_reg;
wire   [5:0] nm_mid2_fu_405_p3;
wire   [11:0] tmp_37_fu_417_p2;
reg   [11:0] tmp_37_reg_1246;
wire   [0:0] tmp_60_fu_423_p2;
reg   [0:0] tmp_60_reg_1251_pp0_iter1_reg;
reg   [0:0] tmp_60_reg_1251_pp0_iter2_reg;
wire   [7:0] sf_1_fu_429_p2;
wire   [13:0] indvar_flatten_next_fu_441_p3;
reg   [7:0] tmp_V_reg_1285;
reg   [3:0] weights9_m_weights_V_5_reg_1290;
reg   [3:0] weights9_m_weights_V_7_reg_1295;
reg   [3:0] weights9_m_weights_V_9_reg_1300;
reg   [3:0] weights9_m_weights_V_11_reg_1305;
wire   [5:0] tmp1_fu_542_p2;
reg   [5:0] tmp1_reg_1310;
wire   [5:0] tmp2_fu_631_p2;
reg   [5:0] tmp2_reg_1315;
wire   [5:0] tmp3_fu_720_p2;
reg   [5:0] tmp3_reg_1320;
wire   [5:0] tmp4_fu_809_p2;
reg   [5:0] tmp4_reg_1325;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter3;
wire   [63:0] tmp_38_fu_449_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] macRegisters_0_V_1_fu_140;
wire   [7:0] macRegisters_0_V_fu_830_p2;
reg   [7:0] macRegisters_1_V_1_fu_144;
wire   [7:0] macRegisters_1_V_fu_839_p2;
reg   [7:0] macRegisters_2_V_1_fu_148;
wire   [7:0] macRegisters_2_V_fu_848_p2;
reg   [7:0] macRegisters_3_V_1_fu_152;
wire   [7:0] macRegisters_3_V_fu_857_p2;
wire   [4:0] tmp_fu_285_p1;
wire   [0:0] exitcond_flatten_fu_309_p2;
wire   [11:0] tmp_s_fu_289_p3;
wire   [0:0] tmp_289_fu_345_p2;
wire   [0:0] not_exitcond_flatten_fu_339_p2;
wire   [5:0] nm_mid_fu_315_p3;
wire   [0:0] tmp_91_mid_fu_351_p2;
wire   [0:0] tmp_270_fu_363_p2;
wire   [5:0] nm_1_fu_357_p2;
wire   [4:0] tmp_309_fu_377_p1;
wire   [11:0] tmp_90_mid1_fu_381_p3;
wire   [11:0] tmp_90_mid_fu_323_p3;
wire   [4:0] nm_t_mid_fu_331_p3;
wire   [7:0] sf_mid2_fu_369_p3;
wire   [11:0] tmp_90_mid2_fu_389_p3;
wire   [11:0] sf_cast1_fu_413_p1;
wire   [13:0] indvar_flatten_op_fu_435_p2;
wire  signed [7:0] p_Val2_s_132_fu_462_p0;
wire  signed [11:0] p_08_cast_cast_fu_456_p1;
wire  signed [3:0] p_Val2_s_132_fu_462_p1;
wire   [11:0] p_Val2_s_132_fu_462_p2;
wire   [4:0] tmp_311_fu_476_p4;
wire   [0:0] tmp_313_fu_498_p1;
wire   [0:0] tmp_310_fu_468_p3;
wire   [4:0] tmp_42_fu_508_p4;
wire   [0:0] tmp_41_fu_502_p2;
wire   [5:0] tmp_43_fu_518_p3;
wire   [0:0] tmp_44_fu_526_p2;
wire   [0:0] tmp_312_fu_490_p3;
wire   [0:0] qb_assign_2_fu_532_p2;
wire  signed [5:0] p_Val2_cast_cast_fu_486_p1;
wire   [5:0] tmp_138_cast_cast_fu_538_p1;
wire  signed [7:0] p_Val2_1_fu_551_p0;
wire  signed [3:0] p_Val2_1_fu_551_p1;
wire   [11:0] p_Val2_1_fu_551_p2;
wire   [4:0] tmp_315_fu_565_p4;
wire   [0:0] tmp_317_fu_587_p1;
wire   [0:0] tmp_314_fu_557_p3;
wire   [4:0] tmp_48_fu_597_p4;
wire   [0:0] tmp_47_fu_591_p2;
wire   [5:0] tmp_49_fu_607_p3;
wire   [0:0] tmp_227_1_fu_615_p2;
wire   [0:0] tmp_316_fu_579_p3;
wire   [0:0] qb_assign_2_1_fu_621_p2;
wire  signed [5:0] p_Val2_81_1_cast_c_fu_575_p1;
wire   [5:0] tmp_228_1_cast_cast_fu_627_p1;
wire  signed [7:0] p_Val2_2_fu_640_p0;
wire  signed [3:0] p_Val2_2_fu_640_p1;
wire   [11:0] p_Val2_2_fu_640_p2;
wire   [4:0] tmp_319_fu_654_p4;
wire   [0:0] tmp_321_fu_676_p1;
wire   [0:0] tmp_318_fu_646_p3;
wire   [4:0] tmp_53_fu_686_p4;
wire   [0:0] tmp_52_fu_680_p2;
wire   [5:0] tmp_54_fu_696_p3;
wire   [0:0] tmp_227_2_fu_704_p2;
wire   [0:0] tmp_320_fu_668_p3;
wire   [0:0] qb_assign_2_2_fu_710_p2;
wire  signed [5:0] p_Val2_81_2_cast_c_fu_664_p1;
wire   [5:0] tmp_228_2_cast_cast_fu_716_p1;
wire  signed [7:0] p_Val2_3_fu_729_p0;
wire  signed [3:0] p_Val2_3_fu_729_p1;
wire   [11:0] p_Val2_3_fu_729_p2;
wire   [4:0] tmp_323_fu_743_p4;
wire   [0:0] tmp_325_fu_765_p1;
wire   [0:0] tmp_322_fu_735_p3;
wire   [4:0] tmp_58_fu_775_p4;
wire   [0:0] tmp_57_fu_769_p2;
wire   [5:0] tmp_59_fu_785_p3;
wire   [0:0] tmp_227_3_fu_793_p2;
wire   [0:0] tmp_324_fu_757_p3;
wire   [0:0] qb_assign_2_3_fu_799_p2;
wire  signed [5:0] p_Val2_81_3_cast_c_fu_753_p1;
wire   [5:0] tmp_228_3_cast_cast_fu_805_p1;
wire  signed [7:0] tmp1_cast_fu_827_p1;
wire  signed [7:0] tmp2_cast_fu_836_p1;
wire  signed [7:0] tmp3_cast_fu_845_p1;
wire  signed [7:0] tmp4_cast_fu_854_p1;
wire   [7:0] tmp_61_fu_883_p34;
wire   [7:0] tmp_62_fu_958_p34;
wire   [7:0] tmp_63_fu_1033_p34;
wire   [7:0] tmp_64_fu_1108_p34;
wire   [7:0] p_Val2_22_3_fu_1177_p2;
wire   [7:0] p_Val2_22_2_fu_1102_p2;
wire   [7:0] p_Val2_22_1_fu_1027_p2;
wire   [7:0] p_Val2_s_fu_952_p2;
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

Conv1DMac_new403_Lf8 #(
    .DataWidth( 4 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights9_m_weights_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights9_m_weights_V_address0),
    .ce0(weights9_m_weights_V_ce0),
    .q0(weights9_m_weights_V_q0)
);

Conv1DMac_new403_Mgi #(
    .DataWidth( 4 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights9_m_weights_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights9_m_weights_V_1_address0),
    .ce0(weights9_m_weights_V_1_ce0),
    .q0(weights9_m_weights_V_1_q0)
);

Conv1DMac_new403_Ngs #(
    .DataWidth( 4 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights9_m_weights_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights9_m_weights_V_2_address0),
    .ce0(weights9_m_weights_V_2_ce0),
    .q0(weights9_m_weights_V_2_q0)
);

Conv1DMac_new403_OgC #(
    .DataWidth( 4 ),
    .AddressRange( 4096 ),
    .AddressWidth( 12 ))
weights9_m_weights_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weights9_m_weights_V_3_address0),
    .ce0(weights9_m_weights_V_3_ce0),
    .q0(weights9_m_weights_V_3_q0)
);

computeS2_mux_325yd2_x_x_x #(
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
computeS2_mux_325yd2_x_x_x_U92(
    .din0(8'd7),
    .din1(8'd7),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd0),
    .din6(8'd0),
    .din7(8'd11),
    .din8(8'd0),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd7),
    .din15(8'd0),
    .din16(8'd7),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd0),
    .din20(8'd9),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd0),
    .din24(8'd0),
    .din25(8'd0),
    .din26(8'd5),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1233_pp0_iter3_reg),
    .dout(tmp_61_fu_883_p34)
);

computeS2_mux_325yd2_x_x_x #(
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
computeS2_mux_325yd2_x_x_x_U93(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd0),
    .din6(8'd0),
    .din7(8'd7),
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
    .din18(8'd7),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd7),
    .din24(8'd12),
    .din25(8'd0),
    .din26(8'd0),
    .din27(8'd255),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd7),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1233_pp0_iter3_reg),
    .dout(tmp_62_fu_958_p34)
);

computeS2_mux_325yd2_x_x_x #(
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
computeS2_mux_325yd2_x_x_x_U94(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd0),
    .din5(8'd0),
    .din6(8'd6),
    .din7(8'd0),
    .din8(8'd4),
    .din9(8'd6),
    .din10(8'd0),
    .din11(8'd0),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd0),
    .din15(8'd6),
    .din16(8'd5),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd0),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd10),
    .din24(8'd0),
    .din25(8'd0),
    .din26(8'd0),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd0),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1233_pp0_iter3_reg),
    .dout(tmp_63_fu_1033_p34)
);

computeS2_mux_325yd2_x_x_x #(
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
computeS2_mux_325yd2_x_x_x_U95(
    .din0(8'd0),
    .din1(8'd0),
    .din2(8'd0),
    .din3(8'd0),
    .din4(8'd6),
    .din5(8'd0),
    .din6(8'd0),
    .din7(8'd0),
    .din8(8'd255),
    .din9(8'd0),
    .din10(8'd0),
    .din11(8'd5),
    .din12(8'd0),
    .din13(8'd0),
    .din14(8'd0),
    .din15(8'd12),
    .din16(8'd0),
    .din17(8'd0),
    .din18(8'd0),
    .din19(8'd5),
    .din20(8'd0),
    .din21(8'd0),
    .din22(8'd0),
    .din23(8'd0),
    .din24(8'd7),
    .din25(8'd0),
    .din26(8'd0),
    .din27(8'd0),
    .din28(8'd0),
    .din29(8'd255),
    .din30(8'd0),
    .din31(8'd0),
    .din32(nm_t_mid2_reg_1233_pp0_iter3_reg),
    .dout(tmp_64_fu_1108_p34)
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
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((exitcond_flatten3_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten3_reg_221 <= indvar_flatten_next3_fu_303_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten3_reg_221 <= 20'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_232 <= indvar_flatten_next_fu_441_p3;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_232 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_0_V_1_fu_140 <= macRegisters_0_V_fu_830_p2;
    end else if ((((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        macRegisters_0_V_1_fu_140 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_1_V_1_fu_144 <= macRegisters_1_V_fu_839_p2;
    end else if ((((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        macRegisters_1_V_1_fu_144 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_2_V_1_fu_148 <= macRegisters_2_V_fu_848_p2;
    end else if ((((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        macRegisters_2_V_1_fu_148 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macRegisters_3_V_1_fu_152 <= macRegisters_3_V_fu_857_p2;
    end else if ((((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        macRegisters_3_V_1_fu_152 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nm_reg_243 <= nm_mid2_fu_405_p3;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        nm_reg_243 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_fu_297_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sf_reg_254 <= sf_1_fu_429_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        sf_reg_254 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_flatten3_reg_1224 <= exitcond_flatten3_fu_297_p2;
        exitcond_flatten3_reg_1224_pp0_iter1_reg <= exitcond_flatten3_reg_1224;
        nm_t_mid2_reg_1233_pp0_iter1_reg <= nm_t_mid2_reg_1233;
        tmp_60_reg_1251_pp0_iter1_reg <= tmp_60_reg_1251;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        exitcond_flatten3_reg_1224_pp0_iter2_reg <= exitcond_flatten3_reg_1224_pp0_iter1_reg;
        nm_t_mid2_reg_1233_pp0_iter2_reg <= nm_t_mid2_reg_1233_pp0_iter1_reg;
        nm_t_mid2_reg_1233_pp0_iter3_reg <= nm_t_mid2_reg_1233_pp0_iter2_reg;
        tmp_60_reg_1251_pp0_iter2_reg <= tmp_60_reg_1251_pp0_iter1_reg;
        tmp_60_reg_1251_pp0_iter3_reg <= tmp_60_reg_1251_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        nm_t_mid2_reg_1233 <= nm_t_mid2_fu_397_p3;
        tmp_37_reg_1246 <= tmp_37_fu_417_p2;
        tmp_60_reg_1251 <= tmp_60_fu_423_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_reg_1224_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp1_reg_1310 <= tmp1_fu_542_p2;
        tmp2_reg_1315 <= tmp2_fu_631_p2;
        tmp3_reg_1320 <= tmp3_fu_720_p2;
        tmp4_reg_1325 <= tmp4_fu_809_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_reg_1285 <= in_V_V_dout;
        weights9_m_weights_V_11_reg_1305 <= weights9_m_weights_V_3_q0;
        weights9_m_weights_V_5_reg_1290 <= weights9_m_weights_V_q0;
        weights9_m_weights_V_7_reg_1295 <= weights9_m_weights_V_1_q0;
        weights9_m_weights_V_9_reg_1300 <= weights9_m_weights_V_2_q0;
    end
end

always @ (*) begin
    if ((exitcond_flatten3_fu_297_p2 == 1'd1)) begin
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
    if (((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
        weights9_m_weights_V_1_ce0 = 1'b1;
    end else begin
        weights9_m_weights_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights9_m_weights_V_2_ce0 = 1'b1;
    end else begin
        weights9_m_weights_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights9_m_weights_V_3_ce0 = 1'b1;
    end else begin
        weights9_m_weights_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights9_m_weights_V_ce0 = 1'b1;
    end else begin
        weights9_m_weights_V_ce0 = 1'b0;
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
            if ((~((exitcond_flatten3_fu_297_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((exitcond_flatten3_fu_297_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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
    ap_block_pp0_stage0_01001 = (((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((exitcond_flatten3_reg_1224_pp0_iter1_reg == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter4 = ((tmp_60_reg_1251_pp0_iter3_reg == 1'd1) & (out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond_flatten3_fu_297_p2 = ((indvar_flatten3_reg_221 == 20'd524288) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_309_p2 = ((indvar_flatten_reg_232 == 14'd4096) ? 1'b1 : 1'b0);

assign indvar_flatten_next3_fu_303_p2 = (20'd1 + indvar_flatten3_reg_221);

assign indvar_flatten_next_fu_441_p3 = ((exitcond_flatten_fu_309_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten_op_fu_435_p2);

assign indvar_flatten_op_fu_435_p2 = (indvar_flatten_reg_232 + 14'd1);

assign macRegisters_0_V_fu_830_p2 = ($signed(tmp1_cast_fu_827_p1) + $signed(macRegisters_0_V_1_fu_140));

assign macRegisters_1_V_fu_839_p2 = ($signed(tmp2_cast_fu_836_p1) + $signed(macRegisters_1_V_1_fu_144));

assign macRegisters_2_V_fu_848_p2 = ($signed(tmp3_cast_fu_845_p1) + $signed(macRegisters_2_V_1_fu_148));

assign macRegisters_3_V_fu_857_p2 = ($signed(tmp4_cast_fu_854_p1) + $signed(macRegisters_3_V_1_fu_152));

assign nm_1_fu_357_p2 = (6'd1 + nm_mid_fu_315_p3);

assign nm_mid2_fu_405_p3 = ((tmp_91_mid_fu_351_p2[0:0] === 1'b1) ? nm_1_fu_357_p2 : nm_mid_fu_315_p3);

assign nm_mid_fu_315_p3 = ((exitcond_flatten_fu_309_p2[0:0] === 1'b1) ? 6'd0 : nm_reg_243);

assign nm_t_mid2_fu_397_p3 = ((tmp_91_mid_fu_351_p2[0:0] === 1'b1) ? tmp_309_fu_377_p1 : nm_t_mid_fu_331_p3);

assign nm_t_mid_fu_331_p3 = ((exitcond_flatten_fu_309_p2[0:0] === 1'b1) ? 5'd0 : tmp_fu_285_p1);

assign not_exitcond_flatten_fu_339_p2 = (exitcond_flatten_fu_309_p2 ^ 1'd1);

assign out_V_V_din = {{{{p_Val2_22_3_fu_1177_p2}, {p_Val2_22_2_fu_1102_p2}}, {p_Val2_22_1_fu_1027_p2}}, {p_Val2_s_fu_952_p2}};

assign p_08_cast_cast_fu_456_p1 = $signed(tmp_V_reg_1285);

assign p_Val2_1_fu_551_p0 = p_08_cast_cast_fu_456_p1;

assign p_Val2_1_fu_551_p1 = weights9_m_weights_V_7_reg_1295;

assign p_Val2_1_fu_551_p2 = ($signed(p_Val2_1_fu_551_p0) * $signed(p_Val2_1_fu_551_p1));

assign p_Val2_22_1_fu_1027_p2 = (macRegisters_1_V_fu_839_p2 + tmp_62_fu_958_p34);

assign p_Val2_22_2_fu_1102_p2 = (macRegisters_2_V_fu_848_p2 + tmp_63_fu_1033_p34);

assign p_Val2_22_3_fu_1177_p2 = (macRegisters_3_V_fu_857_p2 + tmp_64_fu_1108_p34);

assign p_Val2_2_fu_640_p0 = p_08_cast_cast_fu_456_p1;

assign p_Val2_2_fu_640_p1 = weights9_m_weights_V_9_reg_1300;

assign p_Val2_2_fu_640_p2 = ($signed(p_Val2_2_fu_640_p0) * $signed(p_Val2_2_fu_640_p1));

assign p_Val2_3_fu_729_p0 = p_08_cast_cast_fu_456_p1;

assign p_Val2_3_fu_729_p1 = weights9_m_weights_V_11_reg_1305;

assign p_Val2_3_fu_729_p2 = ($signed(p_Val2_3_fu_729_p0) * $signed(p_Val2_3_fu_729_p1));

assign p_Val2_81_1_cast_c_fu_575_p1 = $signed(tmp_315_fu_565_p4);

assign p_Val2_81_2_cast_c_fu_664_p1 = $signed(tmp_319_fu_654_p4);

assign p_Val2_81_3_cast_c_fu_753_p1 = $signed(tmp_323_fu_743_p4);

assign p_Val2_cast_cast_fu_486_p1 = $signed(tmp_311_fu_476_p4);

assign p_Val2_s_132_fu_462_p0 = p_08_cast_cast_fu_456_p1;

assign p_Val2_s_132_fu_462_p1 = weights9_m_weights_V_5_reg_1290;

assign p_Val2_s_132_fu_462_p2 = ($signed(p_Val2_s_132_fu_462_p0) * $signed(p_Val2_s_132_fu_462_p1));

assign p_Val2_s_fu_952_p2 = (macRegisters_0_V_fu_830_p2 + tmp_61_fu_883_p34);

assign qb_assign_2_1_fu_621_p2 = (tmp_316_fu_579_p3 & tmp_227_1_fu_615_p2);

assign qb_assign_2_2_fu_710_p2 = (tmp_320_fu_668_p3 & tmp_227_2_fu_704_p2);

assign qb_assign_2_3_fu_799_p2 = (tmp_324_fu_757_p3 & tmp_227_3_fu_793_p2);

assign qb_assign_2_fu_532_p2 = (tmp_44_fu_526_p2 & tmp_312_fu_490_p3);

assign sf_1_fu_429_p2 = (sf_mid2_fu_369_p3 + 8'd1);

assign sf_cast1_fu_413_p1 = sf_mid2_fu_369_p3;

assign sf_mid2_fu_369_p3 = ((tmp_270_fu_363_p2[0:0] === 1'b1) ? 8'd0 : sf_reg_254);

assign start_out = real_start;

assign tmp1_cast_fu_827_p1 = $signed(tmp1_reg_1310);

assign tmp1_fu_542_p2 = ($signed(p_Val2_cast_cast_fu_486_p1) + $signed(tmp_138_cast_cast_fu_538_p1));

assign tmp2_cast_fu_836_p1 = $signed(tmp2_reg_1315);

assign tmp2_fu_631_p2 = ($signed(p_Val2_81_1_cast_c_fu_575_p1) + $signed(tmp_228_1_cast_cast_fu_627_p1));

assign tmp3_cast_fu_845_p1 = $signed(tmp3_reg_1320);

assign tmp3_fu_720_p2 = ($signed(p_Val2_81_2_cast_c_fu_664_p1) + $signed(tmp_228_2_cast_cast_fu_716_p1));

assign tmp4_cast_fu_854_p1 = $signed(tmp4_reg_1325);

assign tmp4_fu_809_p2 = ($signed(p_Val2_81_3_cast_c_fu_753_p1) + $signed(tmp_228_3_cast_cast_fu_805_p1));

assign tmp_138_cast_cast_fu_538_p1 = qb_assign_2_fu_532_p2;

assign tmp_227_1_fu_615_p2 = ((tmp_49_fu_607_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_227_2_fu_704_p2 = ((tmp_54_fu_696_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_227_3_fu_793_p2 = ((tmp_59_fu_785_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_228_1_cast_cast_fu_627_p1 = qb_assign_2_1_fu_621_p2;

assign tmp_228_2_cast_cast_fu_716_p1 = qb_assign_2_2_fu_710_p2;

assign tmp_228_3_cast_cast_fu_805_p1 = qb_assign_2_3_fu_799_p2;

assign tmp_270_fu_363_p2 = (tmp_91_mid_fu_351_p2 | exitcond_flatten_fu_309_p2);

assign tmp_289_fu_345_p2 = ((sf_reg_254 == 8'd128) ? 1'b1 : 1'b0);

assign tmp_309_fu_377_p1 = nm_1_fu_357_p2[4:0];

assign tmp_310_fu_468_p3 = p_Val2_s_132_fu_462_p2[32'd11];

assign tmp_311_fu_476_p4 = {{p_Val2_s_132_fu_462_p2[11:7]}};

assign tmp_312_fu_490_p3 = p_Val2_s_132_fu_462_p2[32'd6];

assign tmp_313_fu_498_p1 = p_Val2_s_132_fu_462_p2[0:0];

assign tmp_314_fu_557_p3 = p_Val2_1_fu_551_p2[32'd11];

assign tmp_315_fu_565_p4 = {{p_Val2_1_fu_551_p2[11:7]}};

assign tmp_316_fu_579_p3 = p_Val2_1_fu_551_p2[32'd6];

assign tmp_317_fu_587_p1 = p_Val2_1_fu_551_p2[0:0];

assign tmp_318_fu_646_p3 = p_Val2_2_fu_640_p2[32'd11];

assign tmp_319_fu_654_p4 = {{p_Val2_2_fu_640_p2[11:7]}};

assign tmp_320_fu_668_p3 = p_Val2_2_fu_640_p2[32'd6];

assign tmp_321_fu_676_p1 = p_Val2_2_fu_640_p2[0:0];

assign tmp_322_fu_735_p3 = p_Val2_3_fu_729_p2[32'd11];

assign tmp_323_fu_743_p4 = {{p_Val2_3_fu_729_p2[11:7]}};

assign tmp_324_fu_757_p3 = p_Val2_3_fu_729_p2[32'd6];

assign tmp_325_fu_765_p1 = p_Val2_3_fu_729_p2[0:0];

assign tmp_37_fu_417_p2 = (tmp_90_mid2_fu_389_p3 + sf_cast1_fu_413_p1);

assign tmp_38_fu_449_p1 = tmp_37_reg_1246;

assign tmp_41_fu_502_p2 = (tmp_313_fu_498_p1 | tmp_310_fu_468_p3);

assign tmp_42_fu_508_p4 = {{p_Val2_s_132_fu_462_p2[5:1]}};

assign tmp_43_fu_518_p3 = {{tmp_42_fu_508_p4}, {tmp_41_fu_502_p2}};

assign tmp_44_fu_526_p2 = ((tmp_43_fu_518_p3 != 6'd0) ? 1'b1 : 1'b0);

assign tmp_47_fu_591_p2 = (tmp_317_fu_587_p1 | tmp_314_fu_557_p3);

assign tmp_48_fu_597_p4 = {{p_Val2_1_fu_551_p2[5:1]}};

assign tmp_49_fu_607_p3 = {{tmp_48_fu_597_p4}, {tmp_47_fu_591_p2}};

assign tmp_52_fu_680_p2 = (tmp_321_fu_676_p1 | tmp_318_fu_646_p3);

assign tmp_53_fu_686_p4 = {{p_Val2_2_fu_640_p2[5:1]}};

assign tmp_54_fu_696_p3 = {{tmp_53_fu_686_p4}, {tmp_52_fu_680_p2}};

assign tmp_57_fu_769_p2 = (tmp_325_fu_765_p1 | tmp_322_fu_735_p3);

assign tmp_58_fu_775_p4 = {{p_Val2_3_fu_729_p2[5:1]}};

assign tmp_59_fu_785_p3 = {{tmp_58_fu_775_p4}, {tmp_57_fu_769_p2}};

assign tmp_60_fu_423_p2 = ((sf_mid2_fu_369_p3 == 8'd127) ? 1'b1 : 1'b0);

assign tmp_90_mid1_fu_381_p3 = {{tmp_309_fu_377_p1}, {7'd0}};

assign tmp_90_mid2_fu_389_p3 = ((tmp_91_mid_fu_351_p2[0:0] === 1'b1) ? tmp_90_mid1_fu_381_p3 : tmp_90_mid_fu_323_p3);

assign tmp_90_mid_fu_323_p3 = ((exitcond_flatten_fu_309_p2[0:0] === 1'b1) ? 12'd0 : tmp_s_fu_289_p3);

assign tmp_91_mid_fu_351_p2 = (tmp_289_fu_345_p2 & not_exitcond_flatten_fu_339_p2);

assign tmp_fu_285_p1 = nm_reg_243[4:0];

assign tmp_s_fu_289_p3 = {{tmp_fu_285_p1}, {7'd0}};

assign weights9_m_weights_V_1_address0 = tmp_38_fu_449_p1;

assign weights9_m_weights_V_2_address0 = tmp_38_fu_449_p1;

assign weights9_m_weights_V_3_address0 = tmp_38_fu_449_p1;

assign weights9_m_weights_V_address0 = tmp_38_fu_449_p1;

endmodule //Conv1DMac_new403
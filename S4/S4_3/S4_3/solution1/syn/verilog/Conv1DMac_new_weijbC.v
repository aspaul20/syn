// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module Conv1DMac_new_weijbC_rom (
addr0, ce0, q0, clk);

parameter DWIDTH = 8;
parameter AWIDTH = 14;
parameter MEM_SIZE = 16384;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input clk;

reg [DWIDTH-1:0] ram[0:MEM_SIZE-1];

initial begin
    $readmemh("./Conv1DMac_new_weijbC_rom.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[addr0];
    end
end



endmodule


`timescale 1 ns / 1 ps
module Conv1DMac_new_weijbC(
    reset,
    clk,
    address0,
    ce0,
    q0);

parameter DataWidth = 32'd8;
parameter AddressRange = 32'd16384;
parameter AddressWidth = 32'd14;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;



Conv1DMac_new_weijbC_rom Conv1DMac_new_weijbC_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ));

endmodule


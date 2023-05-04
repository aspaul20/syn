// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

`define TV_OUT_s1_out_V_V_TDATA "./impl_rtl.computeS1.autotvout_s1_out_V_V.dat"
`define EGRESS_STATUS_s1_out_V_V_TDATA "./stream_egress_status_s1_out_V_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_s1_out_V_V (
    input clk,
    input reset,
    input [64 - 1:0] TRAN_s1_out_V_V_TDATA,
    input TRAN_s1_out_V_V_TVALID,
    output TRAN_s1_out_V_V_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_s1_out_V_V_TVALID_temp;
    wire s1_out_V_V_TDATA_full;
    wire s1_out_V_V_TDATA_empty;
    reg s1_out_V_V_TDATA_write_en;
    reg [64 - 1:0] s1_out_V_V_TDATA_write_data;
    reg s1_out_V_V_TDATA_read_en;
    wire [64 - 1:0] s1_out_V_V_TDATA_read_data;
    
    fifo #(16384, 64) fifo_s1_out_V_V_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s1_out_V_V_TDATA_write_en),
        .write_data(s1_out_V_V_TDATA_write_data),
        .read_clock(clk),
        .read_en(s1_out_V_V_TDATA_read_en),
        .read_data(s1_out_V_V_TDATA_read_data),
        .full(s1_out_V_V_TDATA_full),
        .empty(s1_out_V_V_TDATA_empty));
    
    always @ (*) begin
        s1_out_V_V_TDATA_write_en <= TRAN_s1_out_V_V_TVALID;
        s1_out_V_V_TDATA_write_data <= TRAN_s1_out_V_V_TDATA;
        s1_out_V_V_TDATA_read_en <= 0;
    end
    assign TRAN_s1_out_V_V_TVALID = TRAN_s1_out_V_V_TVALID_temp;

    
    assign TRAN_s1_out_V_V_TREADY = ~(s1_out_V_V_TDATA_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [199:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [199:0] rm_0x(input [199:0] token);
        reg [199:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_s1_out_V_V_TDATA;
    
    assign transaction = transaction_save_s1_out_V_V_TDATA;
    
    initial begin : AXI_stream_receiver_s1_out_V_V_TDATA
        integer fp;
        reg [64 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_s1_out_V_V_TDATA = 0;
        fifo_s1_out_V_V_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_s1_out_V_V_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_s1_out_V_V_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_s1_out_V_V_TDATA);
                while (~fifo_s1_out_V_V_TDATA.empty) begin
                    fifo_s1_out_V_V_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_s1_out_V_V_TDATA = transaction_save_s1_out_V_V_TDATA + 1;
                fifo_s1_out_V_V_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule

// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __FCMac_bias25_m_we3i2_H__
#define __FCMac_bias25_m_we3i2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct FCMac_bias25_m_we3i2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(FCMac_bias25_m_we3i2_ram) {
        ram[0] = "0b11101001";
        ram[1] = "0b11100101";
        ram[2] = "0b11100111";
        ram[3] = "0b11111011";
        ram[4] = "0b11100100";
        ram[5] = "0b11101000";
        ram[6] = "0b10101111";
        ram[7] = "0b10100001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(FCMac_bias25_m_we3i2) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


FCMac_bias25_m_we3i2_ram* meminst;


SC_CTOR(FCMac_bias25_m_we3i2) {
meminst = new FCMac_bias25_m_we3i2_ram("FCMac_bias25_m_we3i2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~FCMac_bias25_m_we3i2() {
    delete meminst;
}


};//endmodule
#endif

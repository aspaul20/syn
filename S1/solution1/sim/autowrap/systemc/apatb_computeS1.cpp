// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "hostmem"
#define AUTOTB_TVIN_hostmem  "../tv/cdatafile/c.computeS1.autotvin_hostmem.dat"
// wrapc file define: "inPtr_V"
#define AUTOTB_TVIN_inPtr_V  "../tv/cdatafile/c.computeS1.autotvin_inPtr_V.dat"
// wrapc file define: "s1_out_V_V"
#define AUTOTB_TVOUT_s1_out_V_V  "../tv/cdatafile/c.computeS1.autotvout_s1_out_V_V.dat"
#define AUTOTB_TVIN_s1_out_V_V  "../tv/cdatafile/c.computeS1.autotvin_s1_out_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_s1_out_V_V  "../tv/stream_size/stream_size_out_s1_out_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_s1_out_V_V  "../tv/stream_size/stream_egress_status_s1_out_V_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "s1_out_V_V"
#define AUTOTB_TVOUT_PC_s1_out_V_V  "../tv/rtldatafile/rtl.computeS1.autotvout_s1_out_V_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			hostmem_depth = 0;
			inPtr_V_depth = 0;
			s1_out_V_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{hostmem " << hostmem_depth << "}\n";
			total_list << "{inPtr_V " << inPtr_V_depth << "}\n";
			total_list << "{s1_out_V_V " << s1_out_V_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int hostmem_depth;
		int inPtr_V_depth;
		int s1_out_V_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void computeS1 (
ap_uint<64>* inPtr,
hls::stream<ap_uint<64> > (&s1_out));

void AESL_WRAP_computeS1 (
ap_uint<64>* inPtr,
hls::stream<ap_uint<64> > (&s1_out))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// define output stream variables: "s1_out"
		std::vector<ap_uint<64> > aesl_tmp_0;
		int aesl_tmp_1;
		int aesl_tmp_2 = 0;

		// read output stream size: "s1_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, AESL_token); // pop_size
			aesl_tmp_1 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "s1_out_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_s1_out_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_s1_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_s1_out_V_V, AESL_token); // data

			std::vector<sc_bv<64> > s1_out_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 's1_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 's1_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					s1_out_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_s1_out_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_s1_out_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_1)
			{
				aesl_tmp_1 = i;
			}

			if (aesl_tmp_1 > 0 && aesl_tmp_0.size() < aesl_tmp_1)
			{
				int aesl_tmp_0_size = aesl_tmp_0.size();

				for (int tmp_aesl_tmp_0 = 0; tmp_aesl_tmp_0 < aesl_tmp_1 - aesl_tmp_0_size; tmp_aesl_tmp_0++)
				{
					ap_uint<64> tmp;
					aesl_tmp_0.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: s1_out_V_V
				{
					// bitslice(63, 0)
					// {
						// celement: s1_out.V.V(63, 0)
						// {
							sc_lv<64>* s1_out_V_V_lv0_0_0_1 = new sc_lv<64>[aesl_tmp_1 - aesl_tmp_2];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: s1_out.V.V(63, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
								{
									s1_out_V_V_lv0_0_0_1[hls_map_index].range(63, 0) = sc_bv<64>(s1_out_V_V_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: s1_out.V.V(63, 0)
						{
							// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
							for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_0[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_0[0]
								// output_left_conversion : aesl_tmp_0[i_0]
								// output_type_conversion : (s1_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_0[i_0] = (s1_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "s1_out"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			s1_out.write(aesl_tmp_0[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "hostmem"
		char* tvin_hostmem = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_hostmem);

		// "inPtr_V"
		char* tvin_inPtr_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inPtr_V);

		// "s1_out_V_V"
		char* tvin_s1_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_s1_out_V_V);
		char* tvout_s1_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_s1_out_V_V);
		char* wrapc_stream_size_out_s1_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_s1_out_V_V);
		char* wrapc_stream_egress_status_s1_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_s1_out_V_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "s1_out"
		std::vector<ap_uint<64> > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!s1_out.empty())
		{
			aesl_tmp_0.push_back(s1_out.read());
			aesl_tmp_1++;
		}

		// [[transaction]]
		sprintf(tvin_hostmem, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_hostmem, tvin_hostmem);

		sc_bv<64>* hostmem_tvin_wrapc_buffer = new sc_bv<64>[1536];

		// RTL Name: hostmem
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: inPtr.V(63, 0)
				{
					// carray: (0) => (1535) @ (1)
					for (int i_0 = 0; i_0 <= 1535; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : inPtr[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : inPtr[0]
						// regulate_c_name       : inPtr_V
						// input_type_conversion : (inPtr[i_0]).to_string(2).c_str()
						if (&(inPtr[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> inPtr_V_tmp_mem;
							inPtr_V_tmp_mem = (inPtr[i_0]).to_string(2).c_str();
							hostmem_tvin_wrapc_buffer[hls_map_index].range(63, 0) = inPtr_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1536; i++)
		{
			sprintf(tvin_hostmem, "%s\n", (hostmem_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_hostmem, tvin_hostmem);
		}

		tcl_file.set_num(1536, &tcl_file.hostmem_depth);
		sprintf(tvin_hostmem, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_hostmem, tvin_hostmem);

		// release memory allocation
		delete [] hostmem_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_inPtr_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inPtr_V, tvin_inPtr_V);

		sc_bv<32> inPtr_V_tvin_wrapc_buffer;

		// RTL Name: inPtr_V
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_inPtr_V, "%s\n", (inPtr_V_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inPtr_V, tvin_inPtr_V);
		}

		tcl_file.set_num(1, &tcl_file.inPtr_V_depth);
		sprintf(tvin_inPtr_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inPtr_V, tvin_inPtr_V);

		// push back input stream: "s1_out"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			s1_out.write(aesl_tmp_0[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		computeS1(inPtr, s1_out);

		CodeState = DUMP_OUTPUTS;
		// pop output stream: "s1_out"
		int aesl_tmp_2 = aesl_tmp_1;
		aesl_tmp_1 = 0;
     aesl_tmp_0.clear();
		while (!s1_out.empty())
		{
			aesl_tmp_0.push_back(s1_out.read());
			aesl_tmp_1++;
		}

		// [[transaction]]
		sprintf(tvout_s1_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_s1_out_V_V, tvout_s1_out_V_V);

		sc_bv<64>* s1_out_V_V_tvout_wrapc_buffer = new sc_bv<64>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: s1_out_V_V
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: s1_out.V.V(63, 0)
				{
					// carray: (aesl_tmp_2) => (aesl_tmp_1 - 1) @ (1)
					for (int i_0 = aesl_tmp_2; i_0 <= aesl_tmp_1 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_0[0]
						// regulate_c_name       : s1_out_V_V
						// input_type_conversion : (aesl_tmp_0[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> s1_out_V_V_tmp_mem;
							s1_out_V_V_tmp_mem = (aesl_tmp_0[i_0]).to_string(2).c_str();
							s1_out_V_V_tvout_wrapc_buffer[hls_map_index].range(63, 0) = s1_out_V_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvout_s1_out_V_V, "%s\n", (s1_out_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_s1_out_V_V, tvout_s1_out_V_V);
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.s1_out_V_V_depth);
		sprintf(tvout_s1_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_s1_out_V_V, tvout_s1_out_V_V);

		// release memory allocation
		delete [] s1_out_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_s1_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, wrapc_stream_size_out_s1_out_V_V);
		sprintf(wrapc_stream_size_out_s1_out_V_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, wrapc_stream_size_out_s1_out_V_V);
		sprintf(wrapc_stream_size_out_s1_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s1_out_V_V, wrapc_stream_size_out_s1_out_V_V);

		// push back output stream: "s1_out"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			s1_out.write(aesl_tmp_0[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "hostmem"
		delete [] tvin_hostmem;
		// release memory allocation: "inPtr_V"
		delete [] tvin_inPtr_V;
		// release memory allocation: "s1_out_V_V"
		delete [] tvout_s1_out_V_V;
		delete [] tvin_s1_out_V_V;
		delete [] wrapc_stream_size_out_s1_out_V_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


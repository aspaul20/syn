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


// wrapc file define: "input1_V_V"
#define AUTOTB_TVIN_input1_V_V  "../tv/cdatafile/c.computeS3.autotvin_input1_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input1_V_V  "../tv/stream_size/stream_size_in_input1_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input1_V_V  "../tv/stream_size/stream_ingress_status_input1_V_V.dat"
// wrapc file define: "inputGrp_V_V"
#define AUTOTB_TVIN_inputGrp_V_V  "../tv/cdatafile/c.computeS3.autotvin_inputGrp_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_inputGrp_V_V  "../tv/stream_size/stream_size_in_inputGrp_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V  "../tv/stream_size/stream_ingress_status_inputGrp_V_V.dat"
// wrapc file define: "outputGrp_V_V"
#define AUTOTB_TVOUT_outputGrp_V_V  "../tv/cdatafile/c.computeS3.autotvout_outputGrp_V_V.dat"
#define AUTOTB_TVIN_outputGrp_V_V  "../tv/cdatafile/c.computeS3.autotvin_outputGrp_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_outputGrp_V_V  "../tv/stream_size/stream_size_out_outputGrp_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_outputGrp_V_V  "../tv/stream_size/stream_egress_status_outputGrp_V_V.dat"
// wrapc file define: "s3_out_V_V"
#define AUTOTB_TVOUT_s3_out_V_V  "../tv/cdatafile/c.computeS3.autotvout_s3_out_V_V.dat"
#define AUTOTB_TVIN_s3_out_V_V  "../tv/cdatafile/c.computeS3.autotvin_s3_out_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_s3_out_V_V  "../tv/stream_size/stream_size_out_s3_out_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_s3_out_V_V  "../tv/stream_size/stream_egress_status_s3_out_V_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "outputGrp_V_V"
#define AUTOTB_TVOUT_PC_outputGrp_V_V  "../tv/rtldatafile/rtl.computeS3.autotvout_outputGrp_V_V.dat"
// tvout file define: "s3_out_V_V"
#define AUTOTB_TVOUT_PC_s3_out_V_V  "../tv/rtldatafile/rtl.computeS3.autotvout_s3_out_V_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input1_V_V_depth = 0;
			inputGrp_V_V_depth = 0;
			outputGrp_V_V_depth = 0;
			s3_out_V_V_depth = 0;
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
			total_list << "{input1_V_V " << input1_V_V_depth << "}\n";
			total_list << "{inputGrp_V_V " << inputGrp_V_V_depth << "}\n";
			total_list << "{outputGrp_V_V " << outputGrp_V_V_depth << "}\n";
			total_list << "{s3_out_V_V " << s3_out_V_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input1_V_V_depth;
		int inputGrp_V_V_depth;
		int outputGrp_V_V_depth;
		int s3_out_V_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void computeS3 (
hls::stream<ap_uint<64> > (&input1),
hls::stream<ap_uint<64> > (&inputGrp),
hls::stream<ap_uint<64> > (&outputGrp),
hls::stream<ap_uint<64> > (&s3_out));

void AESL_WRAP_computeS3 (
hls::stream<ap_uint<64> > (&input1),
hls::stream<ap_uint<64> > (&inputGrp),
hls::stream<ap_uint<64> > (&outputGrp),
hls::stream<ap_uint<64> > (&s3_out))
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

		// pop stream input: "input1"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input1_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input1_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input1_V_V, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				input1.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input1_V_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "inputGrp"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, AESL_token); // pop_size
			int aesl_tmp_4 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_4; i++)
			{
				inputGrp.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "outputGrp"
		std::vector<ap_uint<64> > aesl_tmp_6;
		int aesl_tmp_7;
		int aesl_tmp_8 = 0;

		// read output stream size: "outputGrp"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, AESL_token); // pop_size
			aesl_tmp_7 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "s3_out"
		std::vector<ap_uint<64> > aesl_tmp_9;
		int aesl_tmp_10;
		int aesl_tmp_11 = 0;

		// read output stream size: "s3_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, AESL_token); // pop_size
			aesl_tmp_10 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "outputGrp_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outputGrp_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outputGrp_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outputGrp_V_V, AESL_token); // data

			std::vector<sc_bv<64> > outputGrp_V_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outputGrp_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outputGrp_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					outputGrp_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outputGrp_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outputGrp_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_7)
			{
				aesl_tmp_7 = i;
			}

			if (aesl_tmp_7 > 0 && aesl_tmp_6.size() < aesl_tmp_7)
			{
				int aesl_tmp_6_size = aesl_tmp_6.size();

				for (int tmp_aesl_tmp_6 = 0; tmp_aesl_tmp_6 < aesl_tmp_7 - aesl_tmp_6_size; tmp_aesl_tmp_6++)
				{
					ap_uint<64> tmp;
					aesl_tmp_6.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outputGrp_V_V
				{
					// bitslice(63, 0)
					// {
						// celement: outputGrp.V.V(63, 0)
						// {
							sc_lv<64>* outputGrp_V_V_lv0_0_0_1 = new sc_lv<64>[aesl_tmp_7 - aesl_tmp_8];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: outputGrp.V.V(63, 0)
						{
							// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
							for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
								{
									outputGrp_V_V_lv0_0_0_1[hls_map_index].range(63, 0) = sc_bv<64>(outputGrp_V_V_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: outputGrp.V.V(63, 0)
						{
							// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
							for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_6[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_6[0]
								// output_left_conversion : aesl_tmp_6[i_0]
								// output_type_conversion : (outputGrp_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_6[i_0] = (outputGrp_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "s3_out_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_s3_out_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_s3_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_s3_out_V_V, AESL_token); // data

			std::vector<sc_bv<64> > s3_out_V_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 's3_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 's3_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					s3_out_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_s3_out_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_s3_out_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_10)
			{
				aesl_tmp_10 = i;
			}

			if (aesl_tmp_10 > 0 && aesl_tmp_9.size() < aesl_tmp_10)
			{
				int aesl_tmp_9_size = aesl_tmp_9.size();

				for (int tmp_aesl_tmp_9 = 0; tmp_aesl_tmp_9 < aesl_tmp_10 - aesl_tmp_9_size; tmp_aesl_tmp_9++)
				{
					ap_uint<64> tmp;
					aesl_tmp_9.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: s3_out_V_V
				{
					// bitslice(63, 0)
					// {
						// celement: s3_out.V.V(63, 0)
						// {
							sc_lv<64>* s3_out_V_V_lv0_0_0_1 = new sc_lv<64>[aesl_tmp_10 - aesl_tmp_11];
						// }
					// }

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: s3_out.V.V(63, 0)
						{
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									s3_out_V_V_lv0_0_0_1[hls_map_index].range(63, 0) = sc_bv<64>(s3_out_V_V_pc_buffer[hls_map_index].range(63, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						int hls_map_index = 0;
						// celement: s3_out.V.V(63, 0)
						{
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_9[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_9[0]
								// output_left_conversion : aesl_tmp_9[i_0]
								// output_type_conversion : (s3_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									aesl_tmp_9[i_0] = (s3_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "outputGrp"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			outputGrp.write(aesl_tmp_6[i]);
		}

		// push back output stream: "s3_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			s3_out.write(aesl_tmp_9[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input1_V_V"
		char* tvin_input1_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input1_V_V);
		char* wrapc_stream_size_in_input1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input1_V_V);
		char* wrapc_stream_ingress_status_input1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input1_V_V);

		// "inputGrp_V_V"
		char* tvin_inputGrp_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inputGrp_V_V);
		char* wrapc_stream_size_in_inputGrp_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_inputGrp_V_V);
		char* wrapc_stream_ingress_status_inputGrp_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V);

		// "outputGrp_V_V"
		char* tvin_outputGrp_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outputGrp_V_V);
		char* tvout_outputGrp_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outputGrp_V_V);
		char* wrapc_stream_size_out_outputGrp_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V);
		char* wrapc_stream_egress_status_outputGrp_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_outputGrp_V_V);

		// "s3_out_V_V"
		char* tvin_s3_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_s3_out_V_V);
		char* tvout_s3_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_s3_out_V_V);
		char* wrapc_stream_size_out_s3_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_s3_out_V_V);
		char* wrapc_stream_egress_status_s3_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_s3_out_V_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "input1"
		std::vector<ap_uint<64> > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!input1.empty())
		{
			aesl_tmp_0.push_back(input1.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "inputGrp"
		std::vector<ap_uint<64> > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!inputGrp.empty())
		{
			aesl_tmp_3.push_back(inputGrp.read());
			aesl_tmp_4++;
		}

		// dump stream tvin: "outputGrp"
		std::vector<ap_uint<64> > aesl_tmp_6;
		int aesl_tmp_7 = 0;
		while (!outputGrp.empty())
		{
			aesl_tmp_6.push_back(outputGrp.read());
			aesl_tmp_7++;
		}

		// dump stream tvin: "s3_out"
		std::vector<ap_uint<64> > aesl_tmp_9;
		int aesl_tmp_10 = 0;
		while (!s3_out.empty())
		{
			aesl_tmp_9.push_back(s3_out.read());
			aesl_tmp_10++;
		}

		// push back input stream: "input1"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			input1.write(aesl_tmp_0[i]);
		}

		// push back input stream: "inputGrp"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			inputGrp.write(aesl_tmp_3[i]);
		}

		// push back input stream: "outputGrp"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			outputGrp.write(aesl_tmp_6[i]);
		}

		// push back input stream: "s3_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			s3_out.write(aesl_tmp_9[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		computeS3(input1, inputGrp, outputGrp, s3_out);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "input1"
		int aesl_tmp_2 = input1.size();

		// record input size to tv3: "inputGrp"
		int aesl_tmp_5 = inputGrp.size();

		// pop output stream: "outputGrp"
		int aesl_tmp_8 = aesl_tmp_7;
		aesl_tmp_7 = 0;
     aesl_tmp_6.clear();
		while (!outputGrp.empty())
		{
			aesl_tmp_6.push_back(outputGrp.read());
			aesl_tmp_7++;
		}

		// pop output stream: "s3_out"
		int aesl_tmp_11 = aesl_tmp_10;
		aesl_tmp_10 = 0;
     aesl_tmp_9.clear();
		while (!s3_out.empty())
		{
			aesl_tmp_9.push_back(s3_out.read());
			aesl_tmp_10++;
		}

		// [[transaction]]
		sprintf(tvin_input1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input1_V_V, tvin_input1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, tvin_input1_V_V);

		sc_bv<64>* input1_V_V_tvin_wrapc_buffer = new sc_bv<64>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: input1_V_V
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: input1.V.V(63, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_0[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_0[0]
						// regulate_c_name       : input1_V_V
						// input_type_conversion : (aesl_tmp_0[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_0[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> input1_V_V_tmp_mem;
							input1_V_V_tmp_mem = (aesl_tmp_0[i_0]).to_string(2).c_str();
							input1_V_V_tvin_wrapc_buffer[hls_map_index].range(63, 0) = input1_V_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_input1_V_V, "%s\n", (input1_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input1_V_V, tvin_input1_V_V);
		}

		// dump stream ingress status to file
		sc_int<32> stream_ingress_size_input1_V_V = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, stream_ingress_size_input1_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_input1_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, stream_ingress_size_input1_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, "\n");
		}

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.input1_V_V_depth);
		sprintf(tvin_input1_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input1_V_V, tvin_input1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input1_V_V, tvin_input1_V_V);

		// release memory allocation
		delete [] input1_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input1_V_V, wrapc_stream_size_in_input1_V_V);
		sprintf(wrapc_stream_size_in_input1_V_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input1_V_V, wrapc_stream_size_in_input1_V_V);
		sprintf(wrapc_stream_size_in_input1_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input1_V_V, wrapc_stream_size_in_input1_V_V);

		// [[transaction]]
		sprintf(tvin_inputGrp_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inputGrp_V_V, tvin_inputGrp_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, tvin_inputGrp_V_V);

		sc_bv<64>* inputGrp_V_V_tvin_wrapc_buffer = new sc_bv<64>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: inputGrp_V_V
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: inputGrp.V.V(63, 0)
				{
					// carray: (0) => (aesl_tmp_4 - aesl_tmp_5 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_3[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_3[0]
						// regulate_c_name       : inputGrp_V_V
						// input_type_conversion : (aesl_tmp_3[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_3[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> inputGrp_V_V_tmp_mem;
							inputGrp_V_V_tmp_mem = (aesl_tmp_3[i_0]).to_string(2).c_str();
							inputGrp_V_V_tvin_wrapc_buffer[hls_map_index].range(63, 0) = inputGrp_V_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvin_inputGrp_V_V, "%s\n", (inputGrp_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inputGrp_V_V, tvin_inputGrp_V_V);
		}

		// dump stream ingress status to file
		sc_int<32> stream_ingress_size_inputGrp_V_V = aesl_tmp_4;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, stream_ingress_size_inputGrp_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, "\n");

		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			stream_ingress_size_inputGrp_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, stream_ingress_size_inputGrp_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, "\n");
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.inputGrp_V_V_depth);
		sprintf(tvin_inputGrp_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inputGrp_V_V, tvin_inputGrp_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_inputGrp_V_V, tvin_inputGrp_V_V);

		// release memory allocation
		delete [] inputGrp_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_inputGrp_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, wrapc_stream_size_in_inputGrp_V_V);
		sprintf(wrapc_stream_size_in_inputGrp_V_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, wrapc_stream_size_in_inputGrp_V_V);
		sprintf(wrapc_stream_size_in_inputGrp_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_inputGrp_V_V, wrapc_stream_size_in_inputGrp_V_V);

		// [[transaction]]
		sprintf(tvout_outputGrp_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outputGrp_V_V, tvout_outputGrp_V_V);

		sc_bv<64>* outputGrp_V_V_tvout_wrapc_buffer = new sc_bv<64>[aesl_tmp_7 - aesl_tmp_8];

		// RTL Name: outputGrp_V_V
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: outputGrp.V.V(63, 0)
				{
					// carray: (aesl_tmp_8) => (aesl_tmp_7 - 1) @ (1)
					for (int i_0 = aesl_tmp_8; i_0 <= aesl_tmp_7 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_6[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_6[0]
						// regulate_c_name       : outputGrp_V_V
						// input_type_conversion : (aesl_tmp_6[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> outputGrp_V_V_tmp_mem;
							outputGrp_V_V_tmp_mem = (aesl_tmp_6[i_0]).to_string(2).c_str();
							outputGrp_V_V_tvout_wrapc_buffer[hls_map_index].range(63, 0) = outputGrp_V_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			sprintf(tvout_outputGrp_V_V, "%s\n", (outputGrp_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outputGrp_V_V, tvout_outputGrp_V_V);
		}

		tcl_file.set_num(aesl_tmp_7 - aesl_tmp_8, &tcl_file.outputGrp_V_V_depth);
		sprintf(tvout_outputGrp_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outputGrp_V_V, tvout_outputGrp_V_V);

		// release memory allocation
		delete [] outputGrp_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_outputGrp_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, wrapc_stream_size_out_outputGrp_V_V);
		sprintf(wrapc_stream_size_out_outputGrp_V_V, "%d\n", aesl_tmp_7 - aesl_tmp_8);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, wrapc_stream_size_out_outputGrp_V_V);
		sprintf(wrapc_stream_size_out_outputGrp_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_outputGrp_V_V, wrapc_stream_size_out_outputGrp_V_V);

		// [[transaction]]
		sprintf(tvout_s3_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_s3_out_V_V, tvout_s3_out_V_V);

		sc_bv<64>* s3_out_V_V_tvout_wrapc_buffer = new sc_bv<64>[aesl_tmp_10 - aesl_tmp_11];

		// RTL Name: s3_out_V_V
		{
			// bitslice(63, 0)
			{
				int hls_map_index = 0;
				// celement: s3_out.V.V(63, 0)
				{
					// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
					for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_9[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_9[0]
						// regulate_c_name       : s3_out_V_V
						// input_type_conversion : (aesl_tmp_9[i_0]).to_string(2).c_str()
						if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> s3_out_V_V_tmp_mem;
							s3_out_V_V_tmp_mem = (aesl_tmp_9[i_0]).to_string(2).c_str();
							s3_out_V_V_tvout_wrapc_buffer[hls_map_index].range(63, 0) = s3_out_V_V_tmp_mem.range(63, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_10 - aesl_tmp_11; i++)
		{
			sprintf(tvout_s3_out_V_V, "%s\n", (s3_out_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_s3_out_V_V, tvout_s3_out_V_V);
		}

		tcl_file.set_num(aesl_tmp_10 - aesl_tmp_11, &tcl_file.s3_out_V_V_depth);
		sprintf(tvout_s3_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_s3_out_V_V, tvout_s3_out_V_V);

		// release memory allocation
		delete [] s3_out_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_s3_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, wrapc_stream_size_out_s3_out_V_V);
		sprintf(wrapc_stream_size_out_s3_out_V_V, "%d\n", aesl_tmp_10 - aesl_tmp_11);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, wrapc_stream_size_out_s3_out_V_V);
		sprintf(wrapc_stream_size_out_s3_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_s3_out_V_V, wrapc_stream_size_out_s3_out_V_V);

		// push back output stream: "outputGrp"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			outputGrp.write(aesl_tmp_6[i]);
		}

		// push back output stream: "s3_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			s3_out.write(aesl_tmp_9[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input1_V_V"
		delete [] tvin_input1_V_V;
		delete [] wrapc_stream_size_in_input1_V_V;
		// release memory allocation: "inputGrp_V_V"
		delete [] tvin_inputGrp_V_V;
		delete [] wrapc_stream_size_in_inputGrp_V_V;
		// release memory allocation: "outputGrp_V_V"
		delete [] tvout_outputGrp_V_V;
		delete [] tvin_outputGrp_V_V;
		delete [] wrapc_stream_size_out_outputGrp_V_V;
		// release memory allocation: "s3_out_V_V"
		delete [] tvout_s3_out_V_V;
		delete [] tvin_s3_out_V_V;
		delete [] wrapc_stream_size_out_s3_out_V_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


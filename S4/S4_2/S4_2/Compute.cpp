#include "bnn-library.h"
#include "conv1d.h"
#include "weights.hpp"
#include "biasMem-22.h"
#include "weightMem-22.h"
//#include "biasMem-23.h"
//#include "weightMem-23.h"
//#include "biasMem-24.h"
//#include "weightMem-24.h"
//#include "biasMem-25.h"
//#include "weightMem-25.h"
//#include "biasMem-26.h"
//#include "weightMem-26.h"
//#include "biasMem-27.h"
//#include "weightMem-27.h"
//#include "biasMem-23.h"
//#include "weightMem-23.h"
//#include "biasMem-24.h"
//#include "weightMem-24.h"
//#include "biasMem-25.h"
//#include "weightMem-25.h"
//#include "biasMem-26.h"
//#include "weightMem-26.h"
//#include "biasMem-27.h"
//#include "weightMem-27.h"

void computeS4_2(outSTREAM &input1, outSTREAM &output1){

#pragma HLS INTERFACE axis port=input1
#pragma HLS INTERFACE axis port=output1
//#pragma HLS INTERFACE m_axi offset=slave port=outPtr bundle=hostmem depth=40
//#pragma HLS INTERFACE s_axilite port=outPtr bundle=control

//	PCStream inStr("DoCompute.inStr");
//#pragma HLS STREAM variable=inStr
//	PCStream cnv_87("DoCompute.cnv_87");
//#pragma HLS STREAM variable=cnv_87
//	PCStream cnv_88("DoCompute.cnv_88");
//#pragma HLS STREAM variable=cnv_88
//	PRLStream cnv_89PRL("DoCompute.cnv_89PRL");
//#pragma HLS STREAM variable=cnv_89PRL
//	PRLStream cnv_90PRL("DoCompute.cnv_90PRL");
//#pragma HLS STREAM variable=cnv_90PRL
//	PCStream cnv_91("DoCompute.cnv_91");
//#pragma HLS STREAM variable=cnv_91
//	PCStream cnv_92("DoCompute.cnv_92");
//#pragma HLS STREAM variable=cnv_92
//	PRLStream cnv_93PRL("DoCompute.cnv_93PRL");
//#pragma HLS STREAM variable=cnv_93PRL
//	PRLStream cnv_94PRL("DoCompute.cnv_94PRL");
//#pragma HLS STREAM variable=cnv_94PRL
	PCStream cnv_95("DoCompute.cnv_95");
#pragma HLS STREAM variable=cnv_95 
	PCStream cnv_96("DoCompute.cnv_96");
#pragma HLS STREAM variable=cnv_96 
	PRLStream cnv_97PRL("DoCompute.cnv_97PRL");
#pragma HLS STREAM variable=cnv_97PRL 
	PRLStream cnv_98PRL("DoCompute.cnv_98PRL");
#pragma HLS STREAM variable=cnv_98PRL 
	PCStream cnv_99("DoCompute.cnv_99");
#pragma HLS STREAM variable=cnv_99
//	PCStream cnv_100("DoCompute.cnv_100");
//#pragma HLS STREAM variable=cnv_100
//	PCStream cnv_101("DoCompute.cnv_101");
//#pragma HLS STREAM variable=cnv_101
//	PCStream cnv_102PRL("DoCompute.cnv_102PRL");
//#pragma HLS STREAM variable=cnv_102PRL
//	PCStream cnv_103PRL("DoCompute.cnv_103PRL");
//#pragma HLS STREAM variable=cnv_103PRL
//	PCStream cnv_104("DoCompute.cnv_104");
//#pragma HLS STREAM variable=cnv_104
//	PCStream cnv_105("DoCompute.cnv_105");
//#pragma HLS STREAM variable=cnv_105
//	PCStream cnv_106PRL("DoCompute.cnv_106PRL");
//#pragma HLS STREAM variable=cnv_106PRL
//	PCStream cnv_107PRL("DoCompute.cnv_107PRL");
//#pragma HLS STREAM variable=cnv_107PRL
//	PCStream cnv_108("DoCompute.cnv_108");
// #pragma HLS STREAM variable=cnv_108
//	PCStream fc1("DoCompute.fc1");
//#pragma HLS STREAM variable=fc1
//	PCStream fc2("DoCompute.fc2");
//#pragma HLS STREAM variable=fc2
//	PCStream fc3("DoCompute.fc3");
//#pragma HLS STREAM variable=fc3
//	PCStream fc4("DoCompute.fc4");
//#pragma HLS STREAM variable=fc4
//	PCStream fc5("DoCompute.fc5");
//#pragma HLS STREAM variable=fc5
	PCStream outStr("DoCompute.outStr");
#pragma HLS STREAM variable=outStr 


	ResizeStream<64, 8, 131072>(input1, cnv_95);

#pragma HLS DATAFLOW

//		Conv1DBuffer_new<1, 512, 512, 1, 256, 512, 4, 1, 8, 1>(cnv_87, cnv_88);
//		Conv1DMac_new<1, 512, 512, 1, 0, 256, 512, 4, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,32768>, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,64>>(cnv_88, cnv_89PRL, weights20, bias20);
//		Relu1D<256, 512, 1, 32, 1, 32, 1>(cnv_89PRL, cnv_90PRL);
//		StreamingDataWidthConverter_Batch<32, 8, 32768>(cnv_90PRL, cnv_91, 1);
////
//		Conv1DBuffer_new<1, 256, 512, 1, 256, 512, 4, 1, 8, 1>(cnv_91, cnv_92);
//		Conv1DMac_new<1, 256, 512, 1, 0, 256, 512, 4, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,16384>, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,64>>(cnv_92, cnv_93PRL, weights21, bias21);
//		Relu1D<256, 512,  1, 32, 1, 32, 1>(cnv_93PRL, cnv_94PRL);
//		StreamingDataWidthConverter_Batch<32, 8, 32768>(cnv_94PRL, outStr, 1);

		Conv1DBuffer_new<1, 256, 512, 1, 256, 512, 4, 1, 8, 1>(cnv_95, cnv_96);
		Conv1DMac_new<1, 256, 512, 1, 0, 256, 512, 4, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,16384>, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,64>>(cnv_96, cnv_97PRL, weights22, bias22);
		Relu1D<256, 512, 1, 32, 1, 32, 1>(cnv_97PRL, cnv_98PRL);
		StreamingDataWidthConverter_Batch<32, 8, 32768>(cnv_98PRL, cnv_99, 1);

		StreamingMaxPool_Precision_1d<512, 16, 256, 1, 32>(cnv_99, outStr);

//		Conv1DBuffer_new<1, 256, 32, 1, 256, 32, 1, 1, 8, 1>(cnv_100, cnv_101);
//		Conv1DMac_new<1, 256, 32, 1, 0, 256, 32, 1, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,65536>, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,256>>(cnv_101, cnv_102PRL, weights23, bias23);
//		Relu1D_NP<256, 32,  1, 8, 1, 8, 1>(cnv_102PRL, outStr);

//		Conv1DBuffer_new<1, 256, 32, 1, 256, 32, 1, 1, 8, 1>(cnv_103PRL, cnv_105);
//		Conv1DMac_new<1, 256, 32, 1, 0, 256, 32, 1, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, 8, 1, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,65536>, FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,256>>(cnv_105, cnv_106PRL, weights24, bias24);
//		Relu1D_NP<256, 32,  1, 8, 1, 8, 1>(cnv_106PRL, cnv_107PRL);
//		StreamingMaxPool_Precision_1d_NP<32, 32, 256, 1, 1>(cnv_107PRL, outStr);
//
//		FCMac<256,512,1,1,8,1,8,1,8,1,8,1,8,1,8,1,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,131072>,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,512>>(fc1, fc2, weights25, bias25);
//		Relu1D_NP<512, 1, 1, 8, 1, 8, 1>(fc2, fc3);
//		FCMac<512,256,1,1,8,1,8,1,8,1,8,1,8,1,8,1,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,131072>,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,256>>(fc3, fc4, weights26, bias26);
//		Relu1D_NP<256, 1, 1, 8,1, 8,1>(fc4, fc5);
//		FCMac<256,40,1,1,8,1,8,1,8,1,8,1,8,1,8,1,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,10240>,FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,1,40>>(fc5, outStr, weights27, bias27);

	ResizeStream<8,64,8192>(outStr, output1);
//	Stream2Mem<64, 32>(s4_out, output1);


}

/*
Weight and threshold memory initialization for Vivado HLS
PEs = 4, SIMD width = 1, threshold bits = 8
weight mem depth = 64, thres mem depth = 0
layer sizes (neurons, synapses per neuron): 
(256, 1) 
padded neurons for each layer: 
0 
padded synapses for each layer: 
0 
*/

static FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,64> bias21= {
{
{
0x0,
0xfc,
0x8,
0xf8,
0xfb,
0x5,
0xf4,
0x6,
0x3,
0x1,
0xff,
0x6,
0xf2,
0xf8,
0xd,
0xfd,
0xf4,
0x5,
0x1,
0xf4,
0xa,
0xf9,
0x9,
0x8,
0xfc,
0xf8,
0x0,
0x11,
0xff,
0xf4,
0x6,
0x6,
0x1,
0x7,
0xf5,
0xfc,
0x7,
0xe9,
0x6,
0xee,
0x2,
0xf8,
0x1,
0x12,
0x4,
0xfa,
0xfc,
0x7,
0x6,
0x12,
0xff,
0x10,
0x7,
0xe0,
0xfe,
0xfb,
0xed,
0xfd,
0x2,
0xfa,
0x1,
0xed,
0xf3,
0xfb
},{
0x3,
0xdd,
0xed,
0xf3,
0x3,
0xfb,
0xd,
0xd,
0xce,
0xf0,
0xfe,
0x0,
0xff,
0x6,
0x3,
0xa,
0xe,
0xe8,
0xf2,
0x1,
0xf9,
0xb,
0xf9,
0x2,
0x0,
0x5,
0x1,
0x3,
0xff,
0x6,
0xec,
0xfd,
0xe4,
0x3,
0x16,
0x5,
0x2,
0x9,
0x3,
0xff,
0xfd,
0xb,
0xfc,
0xf4,
0xf4,
0x8,
0x3,
0xfe,
0xfe,
0x5,
0xe7,
0xf9,
0xfe,
0x6,
0xfb,
0xdc,
0xf9,
0xe,
0x6,
0xf3,
0xf6,
0xe,
0x6,
0x2
},{
0x13,
0xa,
0x11,
0xfb,
0x0,
0xe8,
0x0,
0xe1,
0x4,
0x7,
0xf9,
0xfe,
0x7,
0xee,
0x2,
0x10,
0xfe,
0xfe,
0xf6,
0xfc,
0xfe,
0x0,
0x3,
0xfe,
0x3,
0x7,
0xfa,
0xf6,
0xb,
0xb,
0x9,
0xff,
0xfc,
0x2,
0x6,
0x7,
0x4,
0xe,
0x5,
0xf8,
0xf,
0x5,
0xfe,
0xfe,
0x2,
0x2,
0xf,
0x3,
0xf0,
0xf1,
0xfd,
0xf5,
0xca,
0xf9,
0x3,
0x1,
0xe,
0x2,
0xf9,
0x3,
0x0,
0xf4,
0x7,
0xff
},{
0xf1,
0x1,
0xf1,
0x13,
0xf1,
0x5,
0x4,
0x2,
0xf1,
0x4,
0x2,
0x4,
0xf4,
0x4,
0xd,
0x2,
0xfc,
0x9,
0xee,
0xa,
0xb,
0x5,
0xf0,
0xeb,
0x0,
0xfb,
0x4,
0x4,
0x0,
0x5,
0xfc,
0x2,
0x3,
0xfe,
0x2,
0xf0,
0xec,
0x0,
0xf0,
0x0,
0x6,
0x2,
0x10,
0xf9,
0x0,
0xa,
0x2,
0xfb,
0x8,
0xe4,
0x1,
0x18,
0xf8,
0xfb,
0x5,
0xfb,
0xff,
0x5,
0xf2,
0x7,
0xee,
0xf1,
0x3,
0xf9
}
}
};
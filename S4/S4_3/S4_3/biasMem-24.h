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

static FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,64> bias24= {
{
{
0x7,
0x0,
0xd,
0x15,
0x0,
0xff,
0xb,
0x8,
0xa,
0x0,
0x0,
0x8,
0x8,
0x5,
0x3,
0x3,
0xe,
0x4,
0x6,
0x13,
0x2,
0x8,
0xfc,
0x9,
0xe,
0xb,
0xc,
0x16,
0xf7,
0x8,
0xc,
0x1a,
0x9,
0x8,
0x7,
0xd,
0x13,
0x1,
0x3,
0x1,
0xfe,
0xb,
0x10,
0x12,
0x8,
0x5,
0xb,
0xf,
0x1,
0x6,
0xb,
0x0,
0x2,
0x13,
0x7,
0xff,
0xfb,
0x12,
0x5,
0xfd,
0x6,
0x8,
0x10,
0x0
},{
0x0,
0x19,
0x8,
0x12,
0x0,
0xd,
0x7,
0x9,
0xfb,
0x0,
0x5,
0xfe,
0x2,
0x7,
0x0,
0x8,
0x0,
0xb,
0xf,
0x2,
0x20,
0x19,
0x7,
0xf,
0xc,
0x6,
0x0,
0x8,
0x3,
0x5,
0x9,
0xa,
0x1,
0xc,
0x0,
0x5,
0x1e,
0x17,
0xfb,
0x1c,
0xd,
0x7,
0x3,
0xb,
0xd,
0xe,
0xe,
0xa,
0xfe,
0xf,
0x15,
0xf9,
0x6,
0x0,
0x9,
0x7,
0x0,
0x13,
0x7,
0x16,
0xa,
0x8,
0x6,
0xb
},{
0x9,
0x0,
0x4,
0x7,
0xc,
0x1,
0x11,
0x9,
0xc,
0xd,
0x16,
0x1,
0x12,
0x8,
0xe,
0xa,
0xa,
0x17,
0x9,
0x15,
0x1c,
0x9,
0x4,
0xc,
0x6,
0x0,
0x1,
0x0,
0x4,
0xa,
0x8,
0x0,
0x4,
0x2,
0x4,
0x0,
0x11,
0x0,
0xfd,
0xfe,
0x5,
0x4,
0x3,
0xd,
0x17,
0x0,
0x0,
0x5,
0xb,
0x0,
0x3,
0x0,
0x1,
0x1,
0x9,
0xb,
0x4,
0x9,
0x9,
0xf,
0x4,
0x12,
0x3,
0x1b
},{
0x9,
0x8,
0x0,
0x0,
0x9,
0xb,
0x10,
0xe,
0xd,
0xa,
0x0,
0x0,
0x9,
0x1,
0x7,
0x4,
0xb,
0x3,
0x4,
0x5,
0x3,
0x18,
0xb,
0x18,
0xa,
0x5,
0x16,
0x0,
0xfe,
0x3,
0x0,
0x8,
0x2,
0xa,
0xd,
0x3,
0x0,
0x6,
0xf,
0x6,
0x9,
0x0,
0x7,
0x7,
0x9,
0x15,
0x3,
0x4,
0x1d,
0x12,
0xc,
0x2,
0x15,
0x9,
0xd,
0x5,
0x4,
0x12,
0x6,
0x1,
0x8,
0xb,
0x4,
0x0
}
}
};

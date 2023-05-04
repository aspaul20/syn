/*
Weight and threshold memory initialization for Vivado HLS
PEs = 4, SIMD width = 1, threshold bits = 8
weight mem depth = 16, thres mem depth = 0
layer sizes (neurons, synapses per neuron): 
(64, 1) 
padded neurons for each layer: 
0 
padded synapses for each layer: 
0 
*/

static FixedPointWeights<1,ap_fixed<8, 1, AP_RND_ZERO, AP_WRAP>,4,16> bias5= {
{
{
0x0,
0x0,
0x0,
0xf,
0x0,
0x0,
0x7,
0x0,
0x0,
0x1,
0x0,
0x8,
0x0,
0x0,
0xfd,
0xfd
},{
0x6,
0x2,
0x0,
0x0,
0xa,
0x0,
0x2,
0x0,
0xf,
0x0,
0x0,
0x0,
0x0,
0x9,
0x11,
0x0
},{
0x2,
0x0,
0x0,
0x6,
0x6,
0x0,
0x0,
0x0,
0xb,
0x0,
0x0,
0x4,
0x5,
0x0,
0x3,
0xfb
},{
0x0,
0x0,
0xf7,
0x0,
0x0,
0x9,
0x8,
0x0,
0x0,
0x0,
0x2,
0x0,
0xb,
0x0,
0x0,
0x0
}
}
};

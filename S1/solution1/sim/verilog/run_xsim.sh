
/media/tukl/ee279b7d-bb8a-4a20-8bf9-90b2c542efcc/opt/Xilinx/Vivado/2018.2/bin/xelab xil_defaultlib.apatb_computeS1_top glbl -prj computeS1.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/media/tukl/ee279b7d-bb8a-4a20-8bf9-90b2c542efcc/opt/Xilinx/Vivado/2018.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s computeS1 
/media/tukl/ee279b7d-bb8a-4a20-8bf9-90b2c542efcc/opt/Xilinx/Vivado/2018.2/bin/xsim --noieeewarnings computeS1 -tclbatch computeS1.tcl


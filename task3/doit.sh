#!/bin/sh


#remove old compiles
rm -rf obj_dir
rm -f counter.vcd

#run verilator to compile into c++
verilator -Wall --cc --trace counter.sv --exe counter_tb.cpp

#build c++ 
make -j -C obj_dir/ -f Vcounter.mk Vcounter

#run executable
obj_dir/Vcounter
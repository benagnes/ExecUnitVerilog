#! /bin/tcsh -f

# Creating and mapping to logic name work the local work library

echo "Compile 32-bit multiplier verilog"

rm -rf work

vlib work
vmap work work

vlog -quiet /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v

# <Compile here your own IP>
# -quiet
# -------------------------
#vcom -quiet ../vhdl/SRAM_Lib/SRAM.vhd

vlog ../verilog/full_adder.v
vlog ../verilog/multiply.v
vlog ../verilog/tb_mul32.v

echo ""
echo ""


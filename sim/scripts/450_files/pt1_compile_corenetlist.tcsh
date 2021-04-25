#! /bin/tcsh -f

# Creating and mapping to logic name work the local work library

echo "Compile ensc450_system netlist"

rm -rf work

vlib work
vmap work work

vlog -quiet /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v

# <Compile here your own IP>
# -quiet
#vcom ../vhdl/Butterfly.vhd
#vcom -quiet ../vhdl/fft_core.vhd
# -------------------------
vcom ../vhdl/SRAM_Lib/SRAM.vhd
vcom ../vhdl/ubus.vhd
vcom ../vhdl/dma.vhd
vcom ../vhdl/counter.vhd

vlog ../syn_045/part2_16ns_results/core_adapter.ref.v

vcom ../vhdl/ensc450.vhd
#vcom ../vhdl/tb_ensc450.vhd
vcom ../vhdl/tb_ensc450_part1_part3.vhd

echo ""
echo ""


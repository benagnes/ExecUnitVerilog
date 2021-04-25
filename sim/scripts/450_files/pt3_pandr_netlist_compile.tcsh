#! /bin/tcsh -f

# Creating and mapping to logic name work the local work library

echo "Compile core adapter netlist post P&R with ensc450_system"

rm -rf work

vlib work
vmap work work

vlog -quiet /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v

# <Compile here your own IP>
# -quiet
# -------------------------
vcom ../vhdl/SRAM_Lib/SRAM.vhd
vcom ../vhdl/ubus.vhd
vcom ../vhdl/dma.vhd
vcom ../vhdl/counter.vhd

# Core adapter netlist after P&R
vlog ../BE_045/best_part2_results/verilog/core_adapter.final.v

vcom ../vhdl/ensc450.vhd
vcom ../vhdl/tb_ensc450_part1_part3.vhd

echo ""
echo ""


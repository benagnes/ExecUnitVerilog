#! /bin/tcsh -f

# Creating and mapping to logic name work the local work library

echo "Compile ensc450_system netlist after P&R to verify back-end design"

rm -rf work

vlib work
vmap work work

vlog -quiet /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v

# <Compile here your own IP>
# -------------------------
vcom -quiet ../vhdl/SRAM_Lib/SRAM.vhd
vlog ../BE_045/best_part2_results/verilog/core_adapter.final.v
vlog ../BE_045/part5_nodrc_results/results/verilog/ensc450.final.v
vcom -quiet ../vhdl/tb_ensc450_part4_5.vhd

echo ""
echo ""


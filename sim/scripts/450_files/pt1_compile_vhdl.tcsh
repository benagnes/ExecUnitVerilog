#! /bin/tcsh -f

# Creating and mapping to logic name work the local work library

echo "Compile ensc450_system"

rm -rf work

vlib work
vmap work work

# <Compile here your own IP>
# -quiet
#vcom ../vhdl/Butterfly.vhd
#vcom -quiet ../vhdl/fft_core.vhd
# -------------------------
vcom ../vhdl/SRAM_Lib/SRAM.vhd
vcom ../vhdl/ubus.vhd
vcom ../vhdl/dma.vhd
vcom ../vhdl/counter.vhd

vcom ../vhdl/fpupack.vhd
vcom ../vhdl/fpu_add.vhd
vcom ../vhdl/fpu_sub.vhd
vcom ../vhdl/fpu_mul.vhd
vcom ../vhdl/fpu_div.vhd
vcom ../vhdl/fpu_round.vhd
vcom ../vhdl/fpu_exceptions.vhd
vcom ../vhdl/comppack.vhd
vcom ../vhdl/fpu_double.vhd

vcom ../vhdl/core_adapter.vhd

vcom ../vhdl/ensc450.vhd
#vcom ../vhdl/tb_ensc450.vhd
vcom ../vhdl/tb_ensc450_part1_part3.vhd

echo ""
echo ""


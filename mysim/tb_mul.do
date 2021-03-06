quit -sim
#----------------------------------------------------------------------------------------------------------
# compile
#----------------------------------------------------------------------------------------------------------
vlib work
vlog ../sourcecode/full_adder_noCin.v
vlog ../sourcecode/ripple_carry_adder.v
vlog ../sourcecode/multiply.v
vlog ../sourcecode/tb_multiplier.v
#----------------------------------------------------------------------------------------------------------
# Start the simulation
#----------------------------------------------------------------------------------------------------------
vsim -gui work.tb_multiplier -t 100ps
do wave_mul.do
#----------------------------------------------------------------------------------------------------------
# Simulation Run
#----------------------------------------------------------------------------------------------------------
restart -f
run 200 ns
wave zoom full

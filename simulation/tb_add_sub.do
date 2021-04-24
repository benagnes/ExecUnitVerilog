quit -sim
#----------------------------------------------------------------------------------------------------------
# compile
#----------------------------------------------------------------------------------------------------------
vlib work
vlog ../sourcecode/full_adder.v
vlog ../sourcecode/add_sub.v
vlog ../sourcecode/learnverilog.v
vlog ../sourcecode/learn_verilog_tb.v
#----------------------------------------------------------------------------------------------------------
# Start the simulation
#----------------------------------------------------------------------------------------------------------
vsim -gui work.learn_verilog_tb -t 100ps
do wave_sim.do
#----------------------------------------------------------------------------------------------------------
# Simulation Run
#----------------------------------------------------------------------------------------------------------
restart -f
run 200 ns
wave zoom full
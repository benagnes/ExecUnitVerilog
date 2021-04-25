onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -radix hexadecimal \
sim:/tb_mul32/clk \
sim:/tb_mul32/reset \
sim:/tb_mul32/enable \
sim:/tb_mul32/multiplier \
sim:/tb_mul32/multiplicand \
sim:/tb_mul32/ready \
sim:/tb_mul32/product_upper \
sim:/tb_mul32/product_lower \
sim:/tb_mul32/cout
add wave -radix hexadecimal \
sim:/tb_mul32/UUT/adder_cout \
sim:/tb_mul32/UUT/adder_out \
sim:/tb_mul32/UUT/clk \
sim:/tb_mul32/UUT/reset \
sim:/tb_mul32/UUT/cycle_counter \
sim:/tb_mul32/UUT/enable \
sim:/tb_mul32/UUT/multiplicand \
sim:/tb_mul32/UUT/multiplicand_reg \
sim:/tb_mul32/UUT/multiplier \
sim:/tb_mul32/UUT/product_reg \
sim:/tb_mul32/UUT/ready \
sim:/tb_mul32/UUT/product_lower \
sim:/tb_mul32/UUT/product_upper \
sim:/tb_mul32/UUT/cout \
sim:/tb_mul32/UUT/ovfl
add wave -radix hexadecimal \
sim:/tb_mul32/UUT/add_sub0/opA \
sim:/tb_mul32/UUT/add_sub0/opB \
sim:/tb_mul32/UUT/add_sub0/sum \
sim:/tb_mul32/UUT/add_sub0/cout


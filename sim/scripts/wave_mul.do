onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -radix hexadecimal \
sim:/tb_multiplier/period \
sim:/tb_multiplier/A \
sim:/tb_multiplier/B \
sim:/tb_multiplier/P

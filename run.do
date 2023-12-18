quit -sim
vcom -work work topwimax.vhd
vcom -work work topwimax_tb.vhd
vsim  work.topwimax_tb
do wave.do

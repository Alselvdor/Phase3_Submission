transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/RAMs/INTER_RAM_2port.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/RAMs/FEC_RAM_2PORTS.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/TopWiMax.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/randi.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/MODU.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/INTER.vhd}
vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/FEC.vhd}

vcom -2008 -work work {D:/AUC/ASIC/Project/Phase3_Submission/TopWiMax_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  TopWiMax_tb

add wave *
view structure
view signals
run -all

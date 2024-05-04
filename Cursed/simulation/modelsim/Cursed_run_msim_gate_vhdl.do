transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Cursed.vho}

vcom -93 -work work {E:/Cursed/simulation/modelsim/main.vht}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  main_vhd_tst

add wave *
view structure
view signals
run 1000 ns
transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {Cursed.svo}

vlog -sv -work work +incdir+E:/Cursed/output_files {E:/Cursed/output_files/tb12.sv}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb12

add wave *
view structure
view signals
run -all

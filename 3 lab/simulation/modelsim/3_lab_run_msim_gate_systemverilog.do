transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {3_lab.svo}

vlog -sv -work work +incdir+E:/3\ lab/output_files {E:/3 lab/output_files/tb_lab3_8.sv}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  tb_lab3_8

add wave *
view structure
view signals
run -all

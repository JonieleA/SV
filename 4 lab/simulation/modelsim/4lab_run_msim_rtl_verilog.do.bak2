transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/4\ lab {E:/4 lab/snail_mur.sv}
vlog -sv -work work +incdir+E:/4\ lab {E:/4 lab/snail_mealey.sv}
vlog -sv -work work +incdir+E:/4\ lab {E:/4 lab/top.sv}

vlog -sv -work work +incdir+E:/4\ lab/output_files {E:/4 lab/output_files/lab4_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  lab4_tb

add wave *
view structure
view signals
run -all

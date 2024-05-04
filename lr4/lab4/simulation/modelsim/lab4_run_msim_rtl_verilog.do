transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/lr4/lab4/src {E:/lr4/lab4/src/top_state.sv}
vlog -sv -work work +incdir+E:/lr4/lab4/src {E:/lr4/lab4/src/moore.sv}
vlog -sv -work work +incdir+E:/lr4/lab4/src {E:/lr4/lab4/src/mealy.sv}

vlog -sv -work work +incdir+E:/lr4/lab4/src {E:/lr4/lab4/src/tb_state.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_state

add wave *
view structure
view signals
run -all

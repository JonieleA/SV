transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/LFSR_GAL.sv}
vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/moore_overlapped.sv}
vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/mealy_overlapped.sv}
vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/gen_overlapped.sv}
vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/top_gen_overlapped.sv}

vlog -sv -work work +incdir+E:/lr4/hw4/src {E:/lr4/hw4/src/tb_gen_overlapped.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_gen_overlapped

add wave *
view structure
view signals
run -all
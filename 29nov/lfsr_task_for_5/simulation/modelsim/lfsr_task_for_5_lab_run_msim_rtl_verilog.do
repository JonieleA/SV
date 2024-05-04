transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/lfsr_task_for_5/src {/home/k-105-03/workspace/29nov/lfsr_task_for_5/src/lfsr_fibonacci_param.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/lfsr_task_for_5/src {/home/k-105-03/workspace/29nov/lfsr_task_for_5/src/mux_2to1.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/lfsr_task_for_5/src {/home/k-105-03/workspace/29nov/lfsr_task_for_5/src/top_lfsr_5.sv}

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/lfsr_task_for_5/src {/home/k-105-03/workspace/29nov/lfsr_task_for_5/src/tb_fibonacci_5.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_fibonacci_5

add wave *
view structure
view signals
run -all
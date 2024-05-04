transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/k-105-15/3\ lab {/home/k-105-15/3 lab/lfsr_fib.sv}

vlog -sv -work work +incdir+/home/k-105-15/3\ lab/output_files {/home/k-105-15/3 lab/output_files/tb_lab3_9.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lab3_9

add wave *
view structure
view signals
run -all

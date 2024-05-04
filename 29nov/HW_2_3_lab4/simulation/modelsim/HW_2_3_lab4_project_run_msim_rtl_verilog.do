transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/moore_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/moore_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/mealy_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/mealy_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/top_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/top_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/top_entire.sv}

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/HW_2_3_lab4/src {/home/k-105-03/workspace/29nov/HW_2_3_lab4/src/tb_entire.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_entire

add wave *
view structure
view signals
run -all

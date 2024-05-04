transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/lfsr_fibonacci_param.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/mux_2to1.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/top_lfsr_5.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/gen_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/gen_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/mealy_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/mealy_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/moore_neperek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/moore_perek.sv}
vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/HighestGenTop.sv}

vlog -sv -work work +incdir+/home/k-105-03/workspace/29nov/only_hw_3/src {/home/k-105-03/workspace/29nov/only_hw_3/src/tb_highest_top.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_highest_top

add wave *
view structure
view signals
run -all
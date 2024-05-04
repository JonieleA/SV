transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/2\ lab {E:/2 lab/selector_8.sv}

vlog -sv -work work +incdir+E:/2\ lab/output_files {E:/2 lab/output_files/tb_lab2.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_lab2

add wave *
view structure
view signals
run -all

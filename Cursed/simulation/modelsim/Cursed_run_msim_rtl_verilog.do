transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/delay_par.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/gate.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/to_save.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/Cont_seq.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/Comands.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/register.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/obrabotka.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/generator.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/regist.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/Display.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/ascii_to_bcd.sv}
vlog -sv -work work +incdir+E:/Cursed {E:/Cursed/main.sv}

vlog -sv -work work +incdir+E:/Cursed/output_files {E:/Cursed/output_files/tb12.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb12

add wave *
view structure
view signals
run -all

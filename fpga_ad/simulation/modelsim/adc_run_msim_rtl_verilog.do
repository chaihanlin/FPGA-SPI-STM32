transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/ad.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/pll.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/ram.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/top.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/shifter.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/count.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD {D:/Code/c4/AD/sck.v}
vlog -vlog01compat -work work +incdir+D:/Code/c4/AD/db {D:/Code/c4/AD/db/pll_altpll.v}

vlog -vlog01compat -work work +incdir+D:/Code/c4/AD/simulation/modelsim {D:/Code/c4/AD/simulation/modelsim/ad.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  ad_vlg_tst

add wave *
view structure
view signals
run -all

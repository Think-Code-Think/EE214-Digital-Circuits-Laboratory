transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Student/Desktop/bit_shifter/Gates.vhd}
vcom -93 -work work {C:/Users/Student/Desktop/bit_shifter/DUT.vhd}
vcom -93 -work work {C:/Users/Student/Desktop/bit_shifter/mux.vhd}
vcom -93 -work work {C:/Users/Student/Desktop/bit_shifter/bit_shifter.vhd}

vcom -93 -work work {C:/Users/Student/Desktop/bit_shifter/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

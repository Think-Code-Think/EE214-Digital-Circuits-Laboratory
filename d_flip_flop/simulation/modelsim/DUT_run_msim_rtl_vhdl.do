transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/projects/d_flip_flop/DUT.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/projects/d_flip_flop/d_flip_flop.vhdl}

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/projects/d_flip_flop/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

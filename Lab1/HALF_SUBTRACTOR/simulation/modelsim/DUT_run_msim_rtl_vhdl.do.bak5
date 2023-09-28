transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab1/HALF_SUBTRACTOR/Gates.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab1/HALF_SUBTRACTOR/DUT.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab1/XOR_GATE/XOR_GATE.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab1/HALF_SUBTRACTOR/HALF_SUBTRACTOR.vhdl}

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab1/HALF_SUBTRACTOR/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

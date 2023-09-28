transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/Quiz_1_22B3953_Swarup_Patil/Quiz_1/Multiplier/Gates.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/Quiz_1_22B3953_Swarup_Patil/Quiz_1/Multiplier/DUT.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/4bitAdderSubtractor/FourbitAdderSubtractor.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/Quiz_1_22B3953_Swarup_Patil/Quiz_1/Multiplier/Full_Adder.vhd}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/Quiz_1_22B3953_Swarup_Patil/Quiz_1/Multiplier/Multiplier.vhdl}

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/Quiz_1_22B3953_Swarup_Patil/Quiz_1/Multiplier/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

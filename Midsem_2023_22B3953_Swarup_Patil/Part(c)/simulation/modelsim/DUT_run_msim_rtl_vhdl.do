transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Part(c)/Gates.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Part(c)/DUT.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/Lab0/Full_Adder.vhd}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/4bitAdderSubtractor/FourbitAdderSubtractor.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Part(b)/BCD_X_Add_Sub.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Midsem/BCD_X.vhdl}
vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Part(c)/BCD_X_Flag.vhd}

vcom -93 -work work {D:/IIT-B/E.E. DD/2nd Year/EE 214/22B3953_Swarup_Patil/Part(c)/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

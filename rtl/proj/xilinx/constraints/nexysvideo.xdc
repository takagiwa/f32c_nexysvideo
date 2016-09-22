##
## (C) 2016 Masayuki Takagiwa
##

## Clock signal
set_property PACKAGE_PIN R4 [get_ports clk_100m]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100m]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_100m]

## Switches
set_property PACKAGE_PIN E22 [get_ports sw[0]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[0]]
set_property PACKAGE_PIN F21 [get_ports sw[1]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[1]]
set_property PACKAGE_PIN G21 [get_ports sw[2]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[2]]
set_property PACKAGE_PIN G22 [get_ports sw[3]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[3]]
set_property PACKAGE_PIN H17 [get_ports sw[4]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[4]]
set_property PACKAGE_PIN J16 [get_ports sw[5]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[5]]
set_property PACKAGE_PIN K13 [get_ports sw[6]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[6]]
set_property PACKAGE_PIN M17 [get_ports sw[7]]
set_property IOSTANDARD LVCMOS12 [get_ports sw[7]]

## LEDs
set_property PACKAGE_PIN T14 [get_ports ld[0]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[0]]
set_property PACKAGE_PIN T15 [get_ports ld[1]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[1]]
set_property PACKAGE_PIN T16 [get_ports ld[2]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[2]]
set_property PACKAGE_PIN U16 [get_ports ld[3]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[3]]
set_property PACKAGE_PIN V15 [get_ports ld[4]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[4]]
set_property PACKAGE_PIN W16 [get_ports ld[5]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[5]]
set_property PACKAGE_PIN W15 [get_ports ld[6]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[6]]
set_property PACKAGE_PIN Y13 [get_ports ld[7]]
set_property IOSTANDARD LVCMOS12 [get_ports ld[7]]

## Buttons
set_property PACKAGE_PIN C22 [get_ports btnl]
set_property IOSTANDARD LVCMOS12 [get_ports btnl]
set_property PACKAGE_PIN D14 [get_ports btnr]
set_property IOSTANDARD LVCMOS12 [get_ports btnr]
set_property PACKAGE_PIN F15 [get_ports btnu]
set_property IOSTANDARD LVCMOS12 [get_ports btnu]
set_property PACKAGE_PIN D22 [get_ports btnd]
set_property IOSTANDARD LVCMOS12 [get_ports btnd]
set_property PACKAGE_PIN B22 [get_ports btnc]
set_property IOSTANDARD LVCMOS12 [get_ports btnc]

##USB-RS232 Interface
set_property PACKAGE_PIN V18 [get_ports rs232_dce_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports rs232_dce_rxd]
set_property PACKAGE_PIN AA19 [get_ports rs232_dce_txd]
set_property IOSTANDARD LVCMOS33 [get_ports rs232_dce_txd]

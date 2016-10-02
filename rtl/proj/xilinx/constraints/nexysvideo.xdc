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
set_property IOSTANDARD LVCMOS25 [get_ports ld[0]]
set_property PACKAGE_PIN T15 [get_ports ld[1]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[1]]
set_property PACKAGE_PIN T16 [get_ports ld[2]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[2]]
set_property PACKAGE_PIN U16 [get_ports ld[3]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[3]]
set_property PACKAGE_PIN V15 [get_ports ld[4]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[4]]
set_property PACKAGE_PIN W16 [get_ports ld[5]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[5]]
set_property PACKAGE_PIN W15 [get_ports ld[6]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[6]]
set_property PACKAGE_PIN Y13 [get_ports ld[7]]
set_property IOSTANDARD LVCMOS25 [get_ports ld[7]]

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

## Pmod header JA
set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L10N_T1_D15_14 Sch=ja[1]
set_property -dict { PACKAGE_PIN AB21  IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L10P_T1_D14_14 Sch=ja[2]
set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ja[3]
set_property -dict { PACKAGE_PIN AB18  IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L17N_T2_A13_D29_14 Sch=ja[4]
set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L9P_T1_DQS_14 Sch=ja[7]
set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L8N_T1_D12_14 Sch=ja[8]
set_property -dict { PACKAGE_PIN AA20  IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L8P_T1_D11_14 Sch=ja[9]
set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L17P_T2_A14_D30_14 Sch=ja[10]

## Pmod header JB
set_property -dict { PACKAGE_PIN V9    IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L21P_T3_DQS_34 Sch=jb_p[1]
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L21N_T3_DQS_34 Sch=jb_n[1]
set_property -dict { PACKAGE_PIN V7    IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L19P_T3_34 Sch=jb_p[2]
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L19N_T3_VREF_34 Sch=jb_n[2]
set_property -dict { PACKAGE_PIN W9    IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L24P_T3_34 Sch=jb_p[3]
set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L24N_T3_34 Sch=jb_n[3]
set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L23P_T3_34 Sch=jb_p[4]
set_property -dict { PACKAGE_PIN Y7    IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L23N_T3_34 Sch=jb_n[4]

## Pmod header JC
set_property -dict { PACKAGE_PIN Y6    IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L18P_T2_34 Sch=jc_p[1]                        
set_property -dict { PACKAGE_PIN AA6   IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L18N_T2_34 Sch=jc_n[1]
set_property -dict { PACKAGE_PIN AA8   IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L22P_T3_34 Sch=jc_p[2]
set_property -dict { PACKAGE_PIN AB8   IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L22N_T3_34 Sch=jc_n[2]
set_property -dict { PACKAGE_PIN R6    IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L17P_T2_34 Sch=jc_p[3]
set_property -dict { PACKAGE_PIN T6    IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L17N_T2_34 Sch=jc_n[3]
set_property -dict { PACKAGE_PIN AB7   IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L20P_T3_34 Sch=jc_p[4]
set_property -dict { PACKAGE_PIN AB6   IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L20N_T3_34 Sch=jc_n[4]

## OLED Display
set_property -dict { PACKAGE_PIN W22   IOSTANDARD LVCMOS33 } [get_ports { oled_dc }]; #IO_L7N_T1_D10_14 Sch=oled_dc
set_property -dict { PACKAGE_PIN U21   IOSTANDARD LVCMOS33 } [get_ports { oled_res }]; #IO_L4N_T0_D05_14 Sch=oled_res
set_property -dict { PACKAGE_PIN W21   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; #IO_L7P_T1_D09_14 Sch=oled_sclk
set_property -dict { PACKAGE_PIN Y22   IOSTANDARD LVCMOS33 } [get_ports { oled_sdin }]; #IO_L9N_T1_DQS_D13_14 Sch=oled_sdin
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { oled_vbat }]; #IO_0_14 Sch=oled_vbat
set_property -dict { PACKAGE_PIN V22   IOSTANDARD LVCMOS33 } [get_ports { oled_vdd }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=oled_vdd

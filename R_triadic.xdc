set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
set_property PACKAGE_PIN U16 [get_ports {OUT[0]}]
set_property PACKAGE_PIN E19 [get_ports {OUT[1]}]
set_property PACKAGE_PIN U19 [get_ports {OUT[2]}]
set_property PACKAGE_PIN V19 [get_ports {OUT[3]}]
set_property PACKAGE_PIN W18 [get_ports {OUT[4]}]
set_property PACKAGE_PIN U15 [get_ports {OUT[5]}]
set_property PACKAGE_PIN U14 [get_ports {OUT[6]}]
set_property PACKAGE_PIN V14 [get_ports {OUT[7]}]
set_property PACKAGE_PIN V13 [get_ports {OUT[8]}]
set_property PACKAGE_PIN V3 [get_ports {OUT[9]}]
set_property PACKAGE_PIN W3 [get_ports {OUT[10]}]
set_property PACKAGE_PIN U3 [get_ports {OUT[11]}]
set_property PACKAGE_PIN P3 [get_ports {OUT[12]}]
set_property PACKAGE_PIN N3 [get_ports {OUT[13]}]
set_property PACKAGE_PIN P1 [get_ports {OUT[14]}]
set_property PACKAGE_PIN L1 [get_ports {OUT[15]}]
set_property PACKAGE_PIN W17 [get_ports {P[3]}]
set_property PACKAGE_PIN W16 [get_ports {P[2]}]
set_property PACKAGE_PIN V16 [get_ports {P[1]}]
set_property PACKAGE_PIN V17 [get_ports {P[0]}]
#set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN R2 [get_ports p5]
set_property PACKAGE_PIN W15 [get_ports {temp[0]}]
set_property PACKAGE_PIN V15 [get_ports {temp[1]}]
set_property PACKAGE_PIN W14 [get_ports {temp[2]}]
set_property PACKAGE_PIN W13 [get_ports {temp[3]}]
set_property PACKAGE_PIN V2 [get_ports {temp[4]}]
set_property PACKAGE_PIN T3 [get_ports {temp[5]}]
set_property PACKAGE_PIN T2 [get_ports {temp[6]}]
set_property PACKAGE_PIN R3 [get_ports {temp[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {temp[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports p5]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OUT[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {P[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {P[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {P[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {P[0]}]
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets P_IBUF[0]]

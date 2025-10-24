##==============================================================
##  CLOCK SIGNAL (100 MHz onboard clock)
##==============================================================
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }]

##==============================================================
##  INPUTS (use slide switches SW0–SW7)
##==============================================================
set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { reset }]           # SW0
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { start }]           # SW1
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { door_close }]      # SW2
set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { filled }]          # SW3
set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { detergent_added }] # SW4
set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { cycle_timeout }]   # SW5
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { drained }]         # SW6
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { spin_timeout }]    # SW7

##==============================================================
##  OUTPUTS (use onboard LEDs LD0–LD6)
##==============================================================
set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33 } [get_ports { door_lock }]       # LD0
set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33 } [get_ports { motor_on }]        # LD1
set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 } [get_ports { fill_value_on }]   # LD2
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 } [get_ports { drain_value_on }]  # LD3
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 } [get_ports { done }]            # LD4
set_property -dict { PACKAGE_PIN V11 IOSTANDARD LVCMOS33 } [get_ports { soap_wash }]       # LD5
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { water_wash }]      # LD6

##==============================================================
##  OPTIONAL: Remaining LEDs available for debug
##==============================================================
# LD7–LD15 can be used if you add debug signals later

##==============================================================
##  CONFIGURATION VOLTAGE
##==============================================================
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

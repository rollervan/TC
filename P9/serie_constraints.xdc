# Reloj de entrada y reset
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK }]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { RST }]

# Entrada de datos
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { I3 }]

# Salida de datos
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { O0 }]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { O1 }]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { O2 }]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { O3 }]

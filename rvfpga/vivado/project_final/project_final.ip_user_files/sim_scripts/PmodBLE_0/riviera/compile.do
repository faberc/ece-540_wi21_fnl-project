vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uart16550_v2_0_22
vlib riviera/xil_defaultlib
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_22

vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_22 riviera/axi_uart16550_v2_0_22
vmap xil_defaultlib riviera/xil_defaultlib
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_22 riviera/axi_gpio_v2_0_22

vlog -work xpm  -sv2k12 "+incdir+../../../../project_final.srcs/sources_1/ip/PmodBLE_0/drivers/PmodBLE_v1_0/src" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../ipstatic/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../ipstatic/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_22 -93 \
"../../../ipstatic/ipshared/7d1b/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_final.srcs/sources_1/ip/PmodBLE_0/src/PmodBLE_axi_uart16550_0_0/sim/PmodBLE_axi_uart16550_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_final.srcs/sources_1/ip/PmodBLE_0/drivers/PmodBLE_v1_0/src" \
"../../../ipstatic/ipshared/ff0e/src/pmod_concat.v" \
"../../../../project_final.srcs/sources_1/ip/PmodBLE_0/src/PmodBLE_pmod_bridge_0_0/sim/PmodBLE_pmod_bridge_0_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../ipstatic/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_22 -93 \
"../../../ipstatic/ipshared/f71e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../project_final.srcs/sources_1/ip/PmodBLE_0/src/PmodBLE_axi_gpio_0_0/sim/PmodBLE_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_final.srcs/sources_1/ip/PmodBLE_0/drivers/PmodBLE_v1_0/src" \
"../../../../project_final.srcs/sources_1/ip/PmodBLE_0/src/PmodBLE.v" \
"../../../../project_final.srcs/sources_1/ip/PmodBLE_0/sim/PmodBLE_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


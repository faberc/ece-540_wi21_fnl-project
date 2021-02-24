onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uart16550_v2_0_22 -L xil_defaultlib -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_22 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.PmodBLE_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {PmodBLE_0.udo}

run -all

quit -force

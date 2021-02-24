onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_gen_75M_opt

do {wave.do}

view wave
view structure
view signals

do {clk_gen_75M.udo}

run -all

quit -force

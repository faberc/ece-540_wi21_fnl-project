onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib PmodBLE_0_opt

do {wave.do}

view wave
view structure
view signals

do {PmodBLE_0.udo}

run -all

quit -force

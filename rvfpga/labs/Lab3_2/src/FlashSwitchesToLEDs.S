// memory-mapped I/O addresses
# GPIO_SWs   = 0x80001400
# GPIO_LEDs  = 0x80001404
# GPIO_INOUT = 0x80001408

#define DELAY 0x100000

.globl main
main:

main:
    li t0, 0x80001400   # base address of GPIO memory-mapped registers
    li t1, 0xFFFF       # set direction of GPIOs
                        # upper half = switches (inputs)  (=0)
                        # lower half = outputs (LEDs)     (=1)
    sw t1, 8(t0)        # GPIO_INOUT = 0xFFFF
    li s0, DELAY        # Set timer value to control blink speed

repeat:
    lw      t1, 0(t0)   # read switches: t1 = GPIO_SWs
    srli    t1, t1, 16  # shift val to the right by 16 bits
    sw      t1, 4(t0)   # write value to LEDs: GPIO_LEDs = t1
    and     t2, zero, zero  # Set counter to 0
    jal     counter     # delay loop and save return address
    sw      zero, 4(t0) # turn off all LEDs
    and     t2, zero, zero  # Set counter to 0
    jal     counter     # delay loop and save return address
    j       repeat      # repeat loop

counter:
    addi    t2, t2, 1
    bne     s0, t2, counter
    jr      ra
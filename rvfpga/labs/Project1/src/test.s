# Register defines
#define GPIO_IN         0x80001400
#define GPIO_OUT        0x80001404
#define GPIO_OE         0x80001408
#define GPIO_A_IN       0x80001500
#define GPIO_A_OUT      0x80001504
#define GPIO_A_OE       0x80001508
#define SEV_SEG_EN      0x80001038
#define SEV_SEG_DIG1    0x80001024
#define SEV_SEG_DIG2    0x8000103C

#define PORT_BOTINFO 0x80001600        # (i) Bot Info port
#define PORT_BOTCTRL 0x80001604        # (o) Bot Control port
#define PORT_BOTUPDT 0x80001608        # (i) Bot Update port (Poll)
#define PORT_INTACK  0x8000160C        # (o) Bot Int Ack


.globl main
main:

main:
    nop
    nop
    nop
    li  t0, PORT_BOTCTRL
    li  t1, 0xFF
    sw  t1, 0(t0)
    nop
    nop
    nop
    nop
    li  t0, PORT_BOTCTRL
    li  t1, 0xFF
    sw  t1, 2(t0)
    nop
    nop
    nop
    nop
    # li  t0, SEV_SEG_EN
    # li  t1, 0xFFFFFF00
    # sw  t1, 0(t0)
    # nop
    # nop
    # nop
    # li  t0, SEV_SEG_DIG2
    # li  t1, 0x0D0E0A0D
    # sw  t1, 0(t0)
    # nop
    # nop
    # nop
    # li  t0, SEV_SEG_DIG1
    # li  t1, 0x0B0E0E0F
    # sw  t1, 0(t0)
    # nop
    # nop
    # nop

loop:
    j loop  # jump to loop
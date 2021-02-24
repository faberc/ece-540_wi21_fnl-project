#define GPIO_IN 0x80001400
#define GPIO_OUT 0x80001404
#define GPIO_OE 0x80001408
#define GPIO_A_IN 0x80001800
#define GPIO_A_OUT 0x80001804
#define GPIO_A_OE 0x80001808
#define SEV_SEG_EN 0x80001038
#define SEV_SEG_DIG1 0x80001024
#define SEV_SEG_DIG2 0x8000103C

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }

int main(void)
{
    int ss_en = 0xFFFFF7F0;         // Byte 0 - digit enables, Byte 1 - decimal enables
    int dig1_val = 0x09080706;
    int dig2_val = 0x00000000;

    WRITE_GPIO(SEV_SEG_EN, ss_en);
    WRITE_GPIO(SEV_SEG_DIG1, dig1_val);
    WRITE_GPIO(SEV_SEG_DIG2, dig2_val);

    while (1) {
    }

    return (0);
}


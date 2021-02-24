#define GPIO_IN 0x80001400
#define GPIO_OUT 0x80001404
#define GPIO_OE 0x80001408
#define GPIO_A_IN 0x80001800
#define GPIO_A_OUT 0x80001804
#define GPIO_A_OE 0x80001808

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value)                 \
    {                                          \
        (*(volatile unsigned *)dir) = (value); \
    }

int main(void)
{
    int led_en_value = 0x0000FFFF;
    int ledval = 0x0000;
    int button_val = 0x00000000;
    int button_en_value = 0x00000000;

    WRITE_GPIO(GPIO_OE, led_en_value);
    WRITE_GPIO(GPIO_OUT, ledval);

    WRITE_GPIO(GPIO_A_OE, button_en_value);

    while (1)
    {
        button_val = READ_GPIO(GPIO_A_IN) & 0x0000001F;
        if (button_val)
        { // Button Pressed
            ledval = 0xFFFF;
        }
        else
        { // No Buttons Pressed
            ledval = 0x0000;
        }


        WRITE_GPIO(GPIO_OUT, ledval);
    }

    return (0);
}

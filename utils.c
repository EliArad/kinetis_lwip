#include "lwip/api.h"
#include "ethernetif.h"
#include "board.h"
#include "utils.h"
/* Delay some time united in milliseconds. */
void delay(uint32_t milliseconds)
{
    uint32_t i, j;

    for (i = 0; i < milliseconds; i++)
    {
        for (j = 0; j < 20000U; j++)
        {
            __asm("NOP");
        }
    }
}

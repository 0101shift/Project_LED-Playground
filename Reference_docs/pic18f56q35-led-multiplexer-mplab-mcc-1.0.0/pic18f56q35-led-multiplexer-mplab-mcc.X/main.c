 /*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
*/

/*
© [2026] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/
#include "mcc_generated_files/system/system.h"

/*
    Main application
*/

#define LEDS_OFF    (0x00)
#define LED0        (0x01 << 0)
#define LED1        (0x01 << 1)
#define LED2        (0x01 << 2)
#define LED3        (0x01 << 3)
#define LED4        (0x01 << 4)
#define LED5        (0x01 << 5)

#define WRITE_LEDS(leds)  do { CLB1_SWIN_Write8(leds); }  while(0)

#define LED_PATTERNS_NO    4

typedef struct
{
    const uint8_t *pattern;
    uint8_t size;
} led_pattern_t;

const uint8_t ledPattern1[13] = {LEDS_OFF, LED0, LED1, LED2, LED3, LED4, LED5, LED4, LED3, LED2, LED1, LED0, LEDS_OFF};
const uint8_t ledPattern2[7] = {LEDS_OFF, LED0, LED0 | LED1, LED0 | LED1 | LED2, LED0 | LED1 | LED2 | LED3, LED0 | LED1 | LED2 | LED3 | LED4, LED0 | LED1 | LED2 | LED3 | LED4 | LED5};
const uint8_t ledPattern3[7] = {LED0 | LED1 | LED2 | LED3 | LED4 | LED5, LED0 | LED1 | LED2 | LED3 | LED4, LED0 | LED1 | LED2 | LED3, LED0 | LED1 | LED2, LED0 | LED1, LED0, LEDS_OFF};
const uint8_t ledPattern4[7] = {LEDS_OFF, LED0 | LED1, LED2 | LED3, LED4 | LED5, LED0 | LED2 | LED4, LED1 | LED3 | LED5, LEDS_OFF};

led_pattern_t ledPatterns[LED_PATTERNS_NO] = {
    {ledPattern1, 13},
    {ledPattern2, 7},
    {ledPattern3, 7},
    {ledPattern4, 7},
};

int main(void)
{
    SYSTEM_Initialize();
    // If using interrupts in PIC18 High/Low Priority Mode you need to enable the Global High and Low Interrupts 
    // If using interrupts in PIC Mid-Range Compatibility Mode you need to enable the Global and Peripheral Interrupts 
    // Use the following macros to: 

    // Enable the Global Interrupts 
    //INTERRUPT_GlobalInterruptEnable(); 

    // Disable the Global Interrupts 
    //INTERRUPT_GlobalInterruptDisable(); 

    // Enable the Peripheral Interrupts 
    //INTERRUPT_PeripheralInterruptEnable(); 

    // Disable the Peripheral Interrupts 
    //INTERRUPT_PeripheralInterruptDisable();
    
    while(1)
    {
        for(uint8_t i = 0; i < LED_PATTERNS_NO; i++)
        {
            const uint8_t *pattern = ledPatterns[i].pattern;
            uint8_t size = ledPatterns[i].size;
            
            for(uint8_t j = 0; j < size; j++)
            {
                WRITE_LEDS(pattern[j]);
                
                __delay_ms(500);
            }
        }
    }    
}
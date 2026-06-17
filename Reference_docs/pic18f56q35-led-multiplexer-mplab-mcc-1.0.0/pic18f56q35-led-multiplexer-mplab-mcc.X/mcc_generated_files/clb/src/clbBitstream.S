/**
 *  @file clbBitstream.s
 *
 *  @brief CLB bitstream data for the PIC18FxyQ35 device family
 *
 **/
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

/*
    The bitstream data can be accesed from C source code by referencing the 'start_clb_config' symbol as such:

    extern uint16_t start_clb_config;
    uint16_t clbStartAddress = (uint16_t) &start_clb_config;

    IMPORTANT: You must always use the address of these symbols and not the value of the symbols themselves.
               If values instead of addresses are used, the linker will silently generate incorrect code.

    uint16_t clbStartAddress = start_clb_config; // This is incorrect!

    NOTE: This module requires C preprocessing.
          This can be enabled via the command line option: -xassembler-with-cpp
*/


#include <xc.inc>


#if !(defined (_18F26Q35) || defined (_18F46Q35) || defined (_18F56Q35) \
    || defined (_18F25Q35) || defined (_18F45Q35) || defined (_18F55Q35) \
    || defined (_18F24Q35) || defined (_18F44Q35) || defined (_18F54Q35))
	
    #error This module is only suitable for PIC18F56Q35 family devices
#endif

GLOBAL  _start_clb_config
GLOBAL  _end_clb_config

PSECT  clb_config,global,class=CONST,delta=1,noexec,keep,reloc=100h

_start_clb_config:
    DW  0x0048
    DW  0x0049
    DW  0x004A
    DW  0x004B
    DW  0x004C
    DW  0x004D
    DW  0x00E0
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0040
    DW  0x0000
    DW  0x0000
    DW  0x00C1
    DW  0x0003
    DW  0xF888
    DW  0xE2E2
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x5131
    DW  0x0312
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0001
    DW  0x0008
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0001
    DW  0x00C2
    DW  0x0005
    DW  0xF888
    DW  0x3F0C
    DW  0xCCCC
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0xFF00
    DW  0x5161
    DW  0x2510
    DW  0x0050
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x5000
    DW  0x0085
    DW  0x0008
    DW  0x0000
    DW  0x0040
    DW  0x0000
    DW  0x0001
    DW  0x0080
    DW  0x0000
    DW  0xECA0
    DW  0x0001
    DW  0x3131
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0xCCCC
    DW  0xF0F0
    DW  0x5114
    DW  0x3574
    DW  0x0565
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0070
    DW  0x0500
    DW  0x00C7
    DW  0x0000
    DW  0x0000
    DW  0x0010
    DW  0x0030
    DW  0x0001
    DW  0x0000
    DW  0x0000
    DW  0xF0CC
    DW  0x0033
    DW  0xF0F0
    DW  0xCCCC
    DW  0xF0F0
    DW  0xCCCC
    DW  0xF0F0
    DW  0xF0F0
    DW  0x53A0
    DW  0x50A0
    DW  0x0500
    DW  0x0030
    DW  0x0400
    DW  0x0030
    DW  0x0400
    DW  0x0500
    DW  0x00FE
    DW  0x0000
    DW  0x0000
    DW  0x00E0
    DW  0x0000
    DW  0x0002
    DW  0x0000
    DW  0x0000
    DW  0xF0AA
    DW  0x0033
    DW  0x0000
    DW  0xFF00
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0xF0F0
    DW  0x5302
    DW  0xA060
    DW  0x0000
    DW  0x5000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0300
    DW  0x008A
    DW  0x0000
    DW  0x0000
    DW  0x00C0
    DW  0x0000
    DW  0x0002
    DW  0x0000
    DW  0x0000
    DW  0xF0AA
    DW  0x0033
    DW  0xFF00
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0xF0F0
    DW  0x4502
    DW  0x4040
    DW  0x5000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0500
    DW  0x0086
    DW  0x0010
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0002
    DW  0x0000
    DW  0x0006
    DW  0xF0F0
    DW  0xCFC0
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0100
    DW  0x2160
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0001
    DW  0x0000
    DW  0x0000
    DW  0x00A0
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
    DW  0x0000
_end_clb_config:
 
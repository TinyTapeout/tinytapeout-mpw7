/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

#include <defs.h>
#include <stub.c>

#define SET(PIN,N) (PIN |=  (1<<N))
#define CLR(PIN,N) (PIN &= ~(1<<N))
#define GET(PIN,N) (PIN &   (1<<N))

// names from our perspective
#define CLK         0 
#define LATCH       3
#define SCAN        2
#define DATA_IN     0
#define DATA_OUT    1

#define FW_READY    12
#define FW_DONE     13
#define DATA_RX     14
#define TB_CLK      15

void main()
{
	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |

	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |

	*/

    // 2 inputs for enable logic analyser control
	reg_mprj_io_8 =   GPIO_MODE_USER_STD_INPUT_NOPULL;
	reg_mprj_io_9 =   GPIO_MODE_USER_STD_INPUT_NOPULL;

    // outputs for testbench control
    reg_mprj_io_12 = GPIO_MODE_MGMT_STD_OUTPUT; // fw ready
    reg_mprj_io_13 = GPIO_MODE_MGMT_STD_OUTPUT; // fw done
    reg_mprj_io_14 = GPIO_MODE_MGMT_STD_OUTPUT; // data rx
    reg_mprj_io_15 = GPIO_MODE_MGMT_STD_OUTPUT; // tb clk

    /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

    CLR(reg_mprj_datal, DATA_RX);

    reg_la0_iena = 0x0; // input enable on
    reg_la0_oenb = 0xFFFFFFFF; // enable all of bank0 logic analyser outputs (ignore the name, 1 is on, 0 off)

	reg_mprj_datal |= 1 << FW_READY;

    // fill scan chain data with 11110000
    SET(reg_la0_data, DATA_OUT);
    CLR(reg_la0_data, SCAN);
    int i;
    for(i = 0; i < 8; i ++)
    {
        SET(reg_la0_data, CLK);
        CLR(reg_la0_data, CLK);
        if(i == 3)
            CLR(reg_la0_data, DATA_OUT);
    }
    // latch it
    SET(reg_la0_data, LATCH);
    CLR(reg_la0_data, LATCH);

    // clock the data out of the modules into the chain
    SET(reg_la0_data, SCAN);
    SET(reg_la0_data, CLK);
    CLR(reg_la0_data, SCAN);

    // wait for some data to arrive
    for(i = 0; i < 8*20; i ++)
    {
        SET(reg_la0_data, CLK);
        CLR(reg_la0_data, CLK);

        if(GET(reg_la0_data_in, DATA_IN)) // returns 1 even if we see x in the trace
            SET(reg_mprj_datal, DATA_RX);
        else
            CLR(reg_mprj_datal, DATA_RX);

        // sync to tb
        SET(reg_mprj_datal, TB_CLK);
        CLR(reg_mprj_datal, TB_CLK);
    }

	reg_mprj_datal |= 1 << FW_DONE;
}


A SCART/VGA BKM-129X compatible board

Revision F

Should be able to be created at ~$40, with the ADG1611BRUZ being the most expensive component.
Note that the DG1411EEQ is pin-compatible, with a slightly higher Ron.

This requires an Arduino Nano v3 *or* the ATMEGA328PB mounted, which is then loaded with the
latest BKM-129X-MCU code from https://github.com/skumlos/bkm-129x-mcu

The middle 4PDT switch selects SCART or VGA. The top switch selects if the VGA sync signal should combine HV to CSYNC
or just feed CSYNC on. Note that CSYNC should be 75 Ohm level.

You are welcome to clone, produce and sell hardware based on this. Please keep changes and so on open source.

I (finally) upgraded to Kicad 5 during this, so if there are any library issues or whatnot,
let me know, as this was converted from 4.7 to 5.1 automagically.
 
Cool kids give credit where due.

---------

Programming the onboard ATMEGA328PB is a little different than when using a pre-made Arduino board.
The reason for this is that the fuses of the ATMEGA aren't set when the MCU leaves the factory.
Thus to program it, you will need ATMEGA328PB support in the Arduino IDE. The easiest way is to
install the MiniCore board support package (through the Boards Manager), for installation
check the "How to install" at https://github.com/MCUdude/MiniCore.
When MiniCore is available,  select the ATMEGA328 under MiniCore in the board menu, then select
"External 16 MHz" in Clock, disable BOD, select ATMEGA328PB in Variant, select No bootloader.
Then press "Burn bootloader" (assuming your programmer and so on is already setup). This will
program the fuses. Last, upload the sketch by pressing "Upload using programmer". If you don't
do this, nothing will work, because the MCU won't know how to use the external clock and so on.

---------

Should be compatible with basically all monitors that accept the original BKM-129X

Check the MCU code for verified compatibility.

---------

Board revision history:

F: Add option for LD1117 LDO, update to Kicad 5 footprints, minor cosmetical changes

E: Change backplane connector pads to larger ones. Includes silkscreen fix from user 'bodgit', thanks!

D1: Connect VGA pin 5 to GND, fix MIC3490-3.3 -> MIC3490-5.0

D: Remove VGA pin 9 connectivity to GND and leave unconnected.

C: Fixed THS7374 filter bypass, moved sync switch to front.

B: Fixed audio routing

A: Initial version

---------

Copyright © 2022 Martin Hejnfelt <martin@hejnfelt.com>
This work is free. You can redistribute it and/or modify it under the
terms of the Do What The Fuck You Want To Public License, Version 2,
as published by Sam Hocevar. See the LICENSE file for more details.


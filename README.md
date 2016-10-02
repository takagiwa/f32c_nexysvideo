f32c_nexysvideo
=================

Port f32c/f32c.git (FPGArduino) to Nexys Video (Artix-7).

Based on top_bram.

.xpr file is for Vivado 2016.2 . I believe there are no dependency for the version.

CPU clock is 100MHz. I tried to set 150MHz but timing not met.

Connect any periferals except switches, buttons and LEDs.

Directory structure of .xpr is

    /
     +- f32c (from FPGArduino)
     +- rtl (this project)

Resources
===========

[FPGArduino - FER](http://www.nxlab.fer.hr/fpgarduino/)  
[GitHub - f32c/arduino: FPGArduino](https://github.com/f32c/arduino)  

[Nexys Video product page](http://store.digilentinc.com/nexys-video-artix-7-fpga-trainer-board-for-multimedia-applications/)  
[Nexys Video Resource Center](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/start)  
[Nexys Video Reference Manual](https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual)  


Port
======

| Arduino | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
| Nexys Video | btn_right | btn_left | btn_down | btn_up | btn_center | - | - | - |
| Arduino | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
| Nexys Video | ld0 | ld1 | ld2 | ld3 | ld4 | ld5 | ld6 | ld7 |
| Arduino | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 |
| Nexys Video | sw0 | sw1 | sw2 | sw3 | sw4 | sw5 | sw6 | sw7 |
| Arduino | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 |
| Nexys Video | - | - | - | - | - | - | - | - |
| Arduino | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 |
| Nexys Video | ja0 | ja1 | ja2 | ja3 | ja4 | ja5 | ja6 | ja7 |
| Arduino | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 |
| Nexys Video | jb0 | jb1 | jb2 | jb3 | jb4 | jb5 | jb6 | jb7 |
| Arduino | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 |
| Nexys Video | jc0 | jc1 | jc2 | jc3 | jc4 | jc5 | jc6 | jc7 |
| Arduino | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 |
| Nexys Video | oled_dc | oled_res | oled_sclk | oled_sdin | oled_vbat | oled_vdd | - | - |
| Arduino | 64 | 65 | 66 | 67 | 68 | 69 | 70 | 71 |
| Nexys Video | - | - | - | - | - | - | - | - |

*jb, jc, oled not tested*



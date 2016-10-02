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

<table>
<tr><td> Arduino </td><td> 0 </td><td> 1 </td><td> 2 </td><td> 3 </td><td> 4 </td><td> 5 </td><td> 6 </td><td> 7 </td></tr>
<tr><td> Nexys Video </td><td> btn_right </td><td> btn_left </td><td> btn_down </td><td> btn_up </td><td> btn_center </td><td> - </td><td> - </td><td> - </td></tr>
<tr><td> Arduino </td><td> 8 </td><td> 9 </td><td> 10 </td><td> 11 </td><td> 12 </td><td> 13 </td><td> 14 </td><td> 15 </td></tr>
<tr><td> Nexys Video </td><td> ld0 </td><td> ld1 </td><td> ld2 </td><td> ld3 </td><td> ld4 </td><td> ld5 </td><td> ld6 </td><td> ld7 </td></tr>
<tr><td> Arduino </td><td> 16 </td><td> 17 </td><td> 18 </td><td> 19 </td><td> 20 </td><td> 21 </td><td> 22 </td><td> 23 </td></tr>
<tr><td> Nexys Video </td><td> sw0 </td><td> sw1 </td><td> sw2 </td><td> sw3 </td><td> sw4 </td><td> sw5 </td><td> sw6 </td><td> sw7 </td></tr>
<tr><td> Arduino </td><td> 24 </td><td> 25 </td><td> 26 </td><td> 27 </td><td> 28 </td><td> 29 </td><td> 30 </td><td> 31 </td></tr>
<tr><td> Nexys Video </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td></tr>
<tr><td> Arduino </td><td> 32 </td><td> 33 </td><td> 34 </td><td> 35 </td><td> 36 </td><td> 37 </td><td> 38 </td><td> 39 </td></tr>
<tr><td> Nexys Video </td><td> ja0 </td><td> ja1 </td><td> ja2 </td><td> ja3 </td><td> ja4 </td><td> ja5 </td><td> ja6 </td><td> ja7 </td></tr>
<tr><td> Arduino </td><td> 40 </td><td> 41 </td><td> 42 </td><td> 43 </td><td> 44 </td><td> 45 </td><td> 46 </td><td> 47 </td></tr>
<tr><td> Nexys Video </td><td> jb0 </td><td> jb1 </td><td> jb2 </td><td> jb3 </td><td> jb4 </td><td> jb5 </td><td> jb6 </td><td> jb7 </td></tr>
<tr><td> Arduino </td><td> 48 </td><td> 49 </td><td> 50 </td><td> 51 </td><td> 52 </td><td> 53 </td><td> 54 </td><td> 55 </td></tr>
<tr><td> Nexys Video </td><td> jc0 </td><td> jc1 </td><td> jc2 </td><td> jc3 </td><td> jc4 </td><td> jc5 </td><td> jc6 </td><td> jc7 </td></tr>
<tr><td> Arduino </td><td> 56 </td><td> 57 </td><td> 58 </td><td> 59 </td><td> 60 </td><td> 61 </td><td> 62 </td><td> 63 </td></tr>
<tr><td> Nexys Video </td><td> oled_dc </td><td> oled_res </td><td> oled_sclk </td><td> oled_sdin </td><td> oled_vbat </td><td> oled_vdd </td><td> - </td><td> - </td></tr>
<tr><td> Arduino </td><td> 64 </td><td> 65 </td><td> 66 </td><td> 67 </td><td> 68 </td><td> 69 </td><td> 70 </td><td> 71 </td></tr>
<tr><td> Nexys Video </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td><td> - </td></tr>
</table>


*jb, jc, oled not tested*



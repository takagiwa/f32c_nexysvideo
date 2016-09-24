# f32c_nexysvideo

Port f32c/f32c.git (FPGArduino) to Nexys Video (Artix-7).

Based on top_bram.

.xpr file is for Vivado 2016.2 . I believe there are no dependency for the version.

CPU clock is 100MHz. I tried to set 150MHz but timing not met.

Connect any periferals except switches, buttons and LEDs.

Directory structure of .xpr is

    /
    +- f32c (from FPGArduino)
    +- rtl (this project)




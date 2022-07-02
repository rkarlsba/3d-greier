G21    ; Units in mm (mm)
M149 C ; Units in Celsius
M200 S0 D1.75 ; Filament settings: Disabled
M92 X80.00 Y80.00 Z400.00 E728.00 ; Steps per unit:
M203 X300.00 Y300.00 Z5.00 E35.00 ; Maximum feedrates (units/s):
M201 X3000.00 Y3000.00 Z100.00 E10000.00 ; Maximum Acceleration (units/s2):
M204 P3000.00 R3000.00 T3000.00 ; Acceleration (units/s2): P<print_accel> R<retract_accel> T<travel_accel>
M205 B20000.00 S0.00 T0.00 J0.01 ; Advanced: B<min_segment_time_us> S<min_feedrate> T<min_travel_feedrate> J<junc_dev>
M206 X0.00 Y0.00 Z0.00 ; Home offset:

; Material heatup parameters:
M145 S0 H215.00 B50.00 F0
M145 S1 H235.00 B70.00 F0

M301 P22.20 I1.08 D114.00 ; PID settings:

; Stepper driver current:
M906 X800 Y800 Z800
M906 T0 E800

M914 X40 Y67 ; StallGuard threshold:

; Driver stepping mode:
M569 S1 X Y Z
M569 S1 T0 E

; Filament load/unload lengths:
M603 L0.00 U100.00

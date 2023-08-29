; pcb2gcode 2.0.0 
; Software-independent Gcode 

G94 ; Millimeters per minute feed rate. 
G21 ; Units == Millimeters. 

G90 ; Absolute coordinates. 
;G1 F3000 S10000 ; RPM spindle speed. 
G1 F300 F600.00000 ; Feedrate. 


G1 F3000 Z3.00000 ;Retract to tool change height
;T0
;M5      ;Spindle stop.
;G04 P1.00000 ;Wait for spindle to stop
;MSG, Change tool bit to cutter diameter 0.12000mm
;M6      ;Tool change.
;M0      ;Temporary machine stop.
;M3 ; Spindle on clockwise. 
;G04 P1.00000 ;Wait for spindle to get up to speed
;G04 P0 ; dwell for no time -- G64 should not smooth over this point 
G1 F3000 Z3.00000 ; retract 

G1 F3000 X0.10997 Y0.17001 ; rapid move to begin. 
G1 F300 Z-0.07000 F300.00000 ; plunge. 
;G04 P0 ; dwell for no time -- G64 should not smooth over this point 
G1 F300 F600.00000
G1 F300 X0.10997 Y27.17000
G1 F300 X0.13664 Y27.21991
G1 F300 X0.16999 Y27.23002
G1 F300 X34.16998 Y27.23002
G1 F300 X34.21986 Y27.20335
G1 F300 X34.22997 Y27.17000
G1 F300 X34.22997 Y0.17001
G1 F300 X34.20330 Y0.12012
G1 F300 X34.16998 Y0.11001
G1 F300 X0.16999 Y0.11001
G1 F300 X0.12755 Y0.12759
G1 F300 X0.10997 Y0.17001

;G04 P0 ; dwell for no time -- G64 should not smooth over this point 
G1 F3000 Z3.000 ; retract 

;M5 ; Spindle off. 
;G04 P1.000000
;M9 ; Coolant off. 
M0 ; Program end. 


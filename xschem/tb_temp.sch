v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -140 -30 40 {
lab=clk}
N 520 -340 610 -340 {
lab=VDPWR}
N 610 -340 610 -320 {
lab=VDPWR}
N 610 -200 610 -180 {
lab=VGND}
N 520 -180 610 -180 {
lab=VGND}
N 760 -280 900 -280 {
lab=reg[7:0]}
N 460 -260 610 -260 {
lab=reg[6:0],data_in}
N 460 -280 610 -280 {
lab=clk}
N 460 -240 610 -240 {
lab=rstb}
N -310 -230 -310 -180 {
lab=data_in}
N -310 -120 -310 -30 {
lab=VDPWR}
N 260 80 260 100 {
lab=GND}
N 260 -20 260 20 {
lab=VGND}
N -160 170 -160 350 {
lab=rstb}
N 960 -280 1100 -280 {
lab=o7,o6,o5,o4,o3,o2,o1,o0}
N 1100 -280 1100 -240 {
lab=o7,o6,o5,o4,o3,o2,o1,o0}
C {devices/vsource.sym} -30 70 0 0 {name=V1 value="PULSE 0 1.8 50n 100p 100p 50n 100n"}
C {devices/gnd.sym} -30 100 0 0 {name=l9 lab=GND}
C {dff.sym} 680 -260 0 0 {name=x1[7:0]}
C {sky130_fd_pr/corner.sym} 1060 -630 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 660 -70 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* VGS Sweep Test
*****************************************
* this test steps the digital control value across full range (b0 to b7)
* and plots the current as a function of output voltage
*****************************************
.control
   save all 
   set temp=27
   tran 100p 4u
   plot v(o7) v(o6) v(o5) v(o4) v(o3) v(o2) v(o1) v(o0)
   plot v(rstb)
   plot v(clk)
.endc
"}
C {devices/vsource.sym} -310 0 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -310 30 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 560 -340 0 0 {name=p4 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 560 -180 0 0 {name=p5 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 860 -280 0 0 {name=p6 sig_type=std_logic lab=reg[7:0]}
C {devices/lab_wire.sym} 580 -260 0 0 {name=p7 sig_type=std_logic lab=reg[6:0],data_in}
C {devices/lab_wire.sym} 580 -280 0 0 {name=p8 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 580 -240 0 0 {name=p9 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -310 -60 0 1 {name=p1 sig_type=std_logic lab=VDPWR}
C {devices/res.sym} -310 -150 0 0 {name=R1
value=1u
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -310 -230 0 1 {name=p3 sig_type=std_logic lab=data_in}
C {devices/lab_wire.sym} -30 0 0 1 {name=p2 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 260 100 0 0 {name=l1 lab=GND}
C {devices/res.sym} 260 50 0 0 {name=R3
value=1u
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 260 -20 0 0 {name=p11 sig_type=std_logic lab=VGND}
C {devices/vsource.sym} -160 380 0 0 {name=V3 value="PULSE 1.8 0 2u 100p 100p 1u 10u"}
C {devices/gnd.sym} -160 410 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} -160 310 0 1 {name=p12 sig_type=std_logic lab=rstb}
C {devices/res.sym} 930 -280 1 0 {name=R2[7:0]
value=1u
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1100 -280 0 0 {name=p10 sig_type=std_logic lab=o7,o6,o5,o4,o3,o2,o1,o0}
C {devices/capa.sym} 1100 -210 0 0 {name=C1[7:0]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1100 -180 0 0 {name=l4 lab=GND}

v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 -130 -250 -100 {
lab=VDPWR}
N 80 -240 120 -240 {
lab=VDPWR}
N 100 -130 100 -80 {
lab=GND}
N 100 -130 120 -130 {
lab=GND}
N 360 -100 360 -80 {
lab=GND}
N 280 -200 360 -200 {
lab=reg7,reg6,reg5,reg4,reg3,reg2,reg1,reg0}
N 360 -200 360 -160 {
lab=reg7,reg6,reg5,reg4,reg3,reg2,reg1,reg0}
N -180 -130 -180 -100 {
lab=clk}
N 80 -200 120 -200 {
lab=clk}
N 80 -180 120 -180 {
lab=VDPWR}
N -180 20 -180 50 {
lab=rstb}
N 80 -160 120 -160 {
lab=rstb}
C {devices/vsource.sym} -250 -70 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -250 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 80 -240 0 0 {name=p2 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} 100 -80 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 360 -130 0 0 {name=C1[7:0]
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 360 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -180 -70 0 0 {name=V1 value="PULSE 0 1.8 50n 100p 100p 50n 100n"}
C {devices/gnd.sym} -180 -40 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -250 -130 0 1 {name=p5 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 300 -200 0 1 {name=p1 sig_type=std_logic lab=reg7,reg6,reg5,reg4,reg3,reg2,reg1,reg0}
C {devices/lab_wire.sym} -180 -130 0 1 {name=p3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 80 -200 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 80 -180 0 0 {name=p7 sig_type=std_logic lab=VDPWR}
C {devices/vsource.sym} -180 80 0 0 {name=V3 value="PULSE 1.8 0 1u 100p 100p 500n 1m"}
C {devices/gnd.sym} -180 110 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -180 20 0 1 {name=p4 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 80 -160 0 0 {name=p8 sig_type=std_logic lab=rstb}
C {sky130_fd_pr/corner.sym} 660 -270 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 660 -70 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* Shift Register Test
*****************************************
* holds a logic 1 at the shift reg input, and it propagates down
* the shift register. A asynchronous reset is also asserted.
* a shorter 8-bit shift register is tested for simulation time.
*****************************************
.control
   save all 
   set temp=27
   tran 100p 3u
   plot v(reg0) v(reg1) v(reg2) v(reg3) v(reg4) v(reg5) v(reg6) v(reg7)
   plot v(rstb)
   plot v(clk)
.endc
"}
C {shift_reg_short.sym} 140 -180 0 0 {name=x1}

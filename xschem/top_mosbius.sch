v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {!reg[190:0] to be connected to Config/Connection pins.
the ordering of the pins TBD based on layout} -310 -70 0 0 0.4 0.4 {}
N 180 480 320 480 {
lab=VGND}
N 180 -510 320 -510 {
lab=VAPWR}
N 180 -490 320 -490 {
lab=VDPWR}
N 180 -410 320 -410 {
lab=ua[4:0]
bus=true}
N 180 -370 320 -370 {
lab=ua[5]}
N -480 -400 -410 -400 {
lab=VDPWR}
N -480 -290 -410 -290 {
lab=VGND}
N -250 -360 -160 -360 {bus=true
lab=uo_out[0],reg[190:0]}
N -480 -360 -410 -360 {
lab=clk}
N -480 -340 -410 -340 {
lab=ui_in[0]}
N -480 -320 -410 -320 {
lab=rst_n}
N -360 -180 -240 -180 {
lab=uo_out[0]}
C {mosbius.sym} 320 500 0 0 {name=x2}
C {devices/iopin.sym} 180 -410 2 0 {name=p4 lab=ua[4:0]}
C {devices/iopin.sym} 180 -370 2 0 {name=p5 lab=ua[5]}
C {devices/lab_pin.sym} -480 -400 0 0 {name=p6 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} -480 -290 0 0 {name=p7 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -160 -360 0 1 {name=p8 sig_type=std_logic lab=uo_out[0],reg[190:0]}
C {devices/ipin.sym} 180 -510 0 0 {name=p17 lab=VAPWR}
C {devices/ipin.sym} 180 -490 0 0 {name=p2 lab=VDPWR}
C {devices/ipin.sym} 180 480 0 0 {name=p3 lab=VGND}
C {devices/ipin.sym} -480 -360 0 0 {name=p18 lab=clk}
C {devices/ipin.sym} -480 -340 0 0 {name=p19 lab=ui_in[0]}
C {devices/ipin.sym} -480 -320 0 0 {name=p20 lab=rst_n}
C {devices/opin.sym} -240 -180 0 0 {name=p21 lab=uo_out[0]}
C {shift_reg.sym} -390 -340 0 0 {name=x1}

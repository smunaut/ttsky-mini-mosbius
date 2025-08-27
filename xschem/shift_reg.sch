v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 610 -340 610 -320 {
lab=VPWR}
N 610 -200 610 -180 {
lab=VGND}
N 760 -280 900 -280 {
lab=reg[191:0]}
N 460 -260 610 -260 {
lab=reg[190:0],dat}
N 460 -280 610 -280 {
lab=clk}
N 460 -240 610 -240 {
lab=rstb}
N 460 -340 610 -340 {
lab=VPWR}
N 460 -180 610 -180 {
lab=VGND}
C {devices/lab_wire.sym} 580 -260 0 0 {name=p7 sig_type=std_logic lab=reg[190:0],dat}
C {devices/lab_wire.sym} 580 -280 0 0 {name=p8 sig_type=std_logic lab=clk}
C {devices/ipin.sym} 460 -280 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 380 -260 0 0 {name=p2 lab=dat}
C {devices/ipin.sym} 460 -240 0 0 {name=p3 lab=rstb}
C {devices/iopin.sym} 460 -340 0 1 {name=p10 lab=VPWR}
C {devices/iopin.sym} 460 -180 0 1 {name=p11 lab=VGND}
C {devices/opin.sym} 900 -280 0 0 {name=p4 lab=reg[191:0]}
C {dff.sym} 680 -260 0 0 {name=x1[191:0]}

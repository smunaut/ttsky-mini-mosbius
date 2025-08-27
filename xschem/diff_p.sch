v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -170 300 -170 {
lab=itail}
N 520 -170 580 -170 {
lab=itail}
N 140 -170 200 -170 {
lab=inp}
N 620 -170 680 -170 {
lab=inm}
N 1460 290 1600 290 {
lab=itail_2x}
N 1120 120 1160 120 {
lab=ctrl_tail[0]}
N 1120 250 1160 250 {
lab=ctrl_tail[1]}
N 1460 120 1500 120 {
lab=VAPWR}
N 1460 250 1500 250 {
lab=VAPWR}
N 1460 140 1520 140 {
lab=VDPWR}
N 1460 270 1520 270 {
lab=VDPWR}
N 1460 200 1540 200 {
lab=GND}
N 1540 200 1540 480 {
lab=GND}
N 1460 330 1540 330 {
lab=GND}
N 1500 60 1500 120 {
lab=VAPWR}
N 1520 60 1520 140 {
lab=VDPWR}
N 1460 180 1560 180 {
lab=itail}
N 1460 310 1560 310 {
lab=itail}
N 1560 60 1560 180 {
lab=itail}
N 1460 160 1600 160 {
lab=itail_1x}
N 1460 290 1600 290 {
lab=itail_2x}
N 1500 120 1500 250 {
lab=VAPWR}
N 1520 140 1520 270 {
lab=VDPWR}
N 1560 180 1560 310 {
lab=itail}
N 1120 380 1160 380 {
lab=ctrl_source}
N 1460 380 1500 380 {
lab=VAPWR}
N 1500 250 1500 380 {
lab=VAPWR}
N 1520 270 1520 400 {
lab=VDPWR}
N 1460 400 1520 400 {
lab=VDPWR}
N 1460 460 1540 460 {
lab=GND}
N 1460 420 1560 420 {
lab=itail}
N 1560 310 1560 420 {
lab=itail}
N 240 -140 240 -40 {
lab=outp}
N 580 -140 580 -40 {
lab=outm}
N 580 -260 580 -200 {
lab=itail}
N 240 -260 580 -260 {
lab=itail}
N 240 -260 240 -200 {
lab=itail}
N 300 -260 300 -170 {
lab=itail}
N 520 -260 520 -170 {
lab=itail}
N 420 -320 420 -260 {
lab=itail}
N 1100 -230 1100 -140 {
lab=itail}
N 1280 -230 1280 -140 {
lab=itail_1x}
N 1460 -230 1460 -140 {
lab=itail_2x}
N 1040 -260 1060 -260 {
lab=vbias}
N 1040 -260 1040 -200 {
lab=vbias}
N 1040 -200 1400 -200 {
lab=vbias}
N 1400 -260 1400 -200 {
lab=vbias}
N 1400 -260 1420 -260 {
lab=vbias}
N 1220 -260 1240 -260 {
lab=vbias}
N 1220 -260 1220 -200 {
lab=vbias}
N 1100 -360 1100 -290 {
lab=VAPWR}
N 1280 -360 1280 -290 {
lab=VAPWR}
N 1460 -360 1460 -290 {
lab=VAPWR}
N 1280 -260 1300 -260 {
lab=VAPWR}
N 1300 -360 1300 -260 {
lab=VAPWR}
N 1100 -260 1120 -260 {
lab=VAPWR}
N 1120 -360 1120 -260 {
lab=VAPWR}
N 1460 -260 1480 -260 {
lab=VAPWR}
N 1480 -360 1480 -260 {
lab=VAPWR}
N 1460 -360 1480 -360 {
lab=VAPWR}
N 1050 -360 1460 -360 {
lab=VAPWR}
N 1500 380 1500 440 {
lab=VAPWR}
N 1460 440 1500 440 {
lab=VAPWR}
C {tt_asw_3v3.sym} 1310 160 0 0 {name=x4}
C {tt_asw_3v3.sym} 1310 290 0 0 {name=x5}
C {devices/lab_pin.sym} 1120 120 0 0 {name=p25 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/lab_pin.sym} 1120 250 0 0 {name=p26 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} 1500 60 1 0 {name=p28 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 1520 60 1 0 {name=p29 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1560 60 1 0 {name=p30 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 1600 160 0 1 {name=p31 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 1600 290 0 1 {name=p32 sig_type=std_logic lab=itail_2x}
C {devices/lab_pin.sym} 1540 480 3 0 {name=p19 sig_type=std_logic lab=GND}
C {devices/iopin.sym} -280 -120 0 1 {name=p8 lab=vbias}
C {devices/ipin.sym} -280 -200 0 0 {name=p4 lab=ctrl_tail[1:0]}
C {devices/iopin.sym} -280 -480 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -280 -440 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} -280 -20 0 1 {name=p47 lab=GND}
C {devices/ipin.sym} -280 -160 0 0 {name=p1 lab=ctrl_source}
C {devices/ipin.sym} -280 -300 0 0 {name=p3 lab=inp}
C {devices/ipin.sym} -280 -260 0 0 {name=p5 lab=inm}
C {devices/iopin.sym} -280 -380 0 1 {name=p6 lab=outp}
C {devices/iopin.sym} -280 -340 0 1 {name=p7 lab=outm}
C {devices/lab_pin.sym} 420 -320 3 1 {name=p11 sig_type=std_logic lab=itail}
C {tt_asw_3v3.sym} 1310 420 0 0 {name=x1}
C {devices/lab_pin.sym} 1120 380 0 0 {name=p12 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} 140 -170 0 0 {name=p13 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 680 -170 0 1 {name=p14 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 240 -40 0 0 {name=p15 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 580 -40 0 1 {name=p16 sig_type=std_logic lab=outm}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 -170 0 0 {name=M3
L=0.5
W=120
nf=24
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 600 -170 0 1 {name=M4
L=0.5
W=120
nf=24
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1100 -140 1 1 {name=p2 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 1280 -140 1 1 {name=p21 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 1460 -140 1 1 {name=p22 sig_type=std_logic lab=itail_2x}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1080 -260 0 0 {name=M1
L=1
W=60
nf=12
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1260 -260 0 0 {name=M5
L=1
W=60
nf=12
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1440 -260 0 0 {name=M7
L=1
W=120
nf=24
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1040 -230 0 0 {name=p23 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1050 -360 0 0 {name=p17 sig_type=std_logic lab=VAPWR}

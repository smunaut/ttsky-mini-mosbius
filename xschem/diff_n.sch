v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -220 140 -180 {
lab=itail}
N 140 -180 480 -180 {
lab=itail}
N 480 -220 480 -180 {
lab=itail}
N 140 -250 200 -250 {
lab=itail}
N 200 -250 200 -180 {
lab=itail}
N 420 -250 480 -250 {
lab=itail}
N 420 -250 420 -180 {
lab=itail}
N 40 -250 100 -250 {
lab=inp}
N 520 -250 580 -250 {
lab=inm}
N 140 -420 140 -280 {
lab=outp}
N 480 -420 480 -280 {
lab=outm}
N 1360 210 1500 210 {
lab=itail_2x}
N 990 -360 990 -290 {
lab=vbias}
N 1230 -410 1230 -320 {
lab=itail_1x}
N 1170 -360 1170 -290 {
lab=vbias}
N 1170 -290 1190 -290 {
lab=vbias}
N 990 -360 1170 -360 {
lab=vbias}
N 1050 -410 1050 -320 {
lab=itail}
N 990 -290 1010 -290 {
lab=vbias}
N 1170 -360 1350 -360 {
lab=vbias}
N 1410 -410 1410 -320 {
lab=itail_2x}
N 1350 -360 1350 -290 {
lab=vbias}
N 1350 -290 1370 -290 {
lab=vbias}
N 1020 40 1060 40 {
lab=ctrl_tail[0]}
N 1020 170 1060 170 {
lab=ctrl_tail[1]}
N 1360 40 1400 40 {
lab=VAPWR}
N 1360 170 1400 170 {
lab=VAPWR}
N 1360 60 1420 60 {
lab=VDPWR}
N 1360 190 1420 190 {
lab=VDPWR}
N 1360 120 1440 120 {
lab=GND}
N 1440 120 1440 400 {
lab=GND}
N 1360 250 1440 250 {
lab=GND}
N 1400 -20 1400 40 {
lab=VAPWR}
N 1420 -20 1420 60 {
lab=VDPWR}
N 1360 100 1460 100 {
lab=itail}
N 1360 230 1460 230 {
lab=itail}
N 1460 -20 1460 100 {
lab=itail}
N 1360 80 1500 80 {
lab=itail_1x}
N 1360 210 1500 210 {
lab=itail_2x}
N 1050 -290 1070 -290 {
lab=GND}
N 1070 -290 1070 -230 {
lab=GND}
N 1050 -260 1050 -230 {
lab=GND}
N 1230 -290 1250 -290 {
lab=GND}
N 1250 -290 1250 -230 {
lab=GND}
N 1230 -260 1230 -230 {
lab=GND}
N 1410 -290 1430 -290 {
lab=GND}
N 1430 -290 1430 -230 {
lab=GND}
N 1410 -260 1410 -230 {
lab=GND}
N 1050 -230 1070 -230 {
lab=GND}
N 1230 -230 1250 -230 {
lab=GND}
N 1410 -230 1430 -230 {
lab=GND}
N 1400 40 1400 170 {
lab=VAPWR}
N 1420 60 1420 190 {
lab=VDPWR}
N 1460 100 1460 230 {
lab=itail}
N 320 -180 320 -120 {
lab=itail}
N 1020 300 1060 300 {
lab=ctrl_source}
N 1360 300 1400 300 {
lab=VAPWR}
N 1400 170 1400 300 {
lab=VAPWR}
N 1420 190 1420 320 {
lab=VDPWR}
N 1360 320 1420 320 {
lab=VDPWR}
N 1360 380 1440 380 {
lab=GND}
N 1360 360 1440 360 {
lab=GND}
N 1360 340 1460 340 {
lab=itail}
N 1460 230 1460 340 {
lab=itail}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 120 -250 0 0 {name=M1
L=0.5
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -250 0 1 {name=M2
L=0.5
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1210 -290 0 0 {name=M6
L=1
W=20
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1030 -290 0 0 {name=M8
L=1
W=20
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1390 -290 0 0 {name=M10
L=1
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1050 -410 3 1 {name=p2 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 1230 -410 3 1 {name=p21 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 1410 -410 3 1 {name=p22 sig_type=std_logic lab=itail_2x}
C {tt_asw_3v3.sym} 1210 80 0 0 {name=x4}
C {tt_asw_3v3.sym} 1210 210 0 0 {name=x5}
C {devices/lab_pin.sym} 1020 40 0 0 {name=p25 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/lab_pin.sym} 1020 170 0 0 {name=p26 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} 1400 -20 1 0 {name=p28 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 1420 -20 1 0 {name=p29 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1460 -20 1 0 {name=p30 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 1500 80 0 1 {name=p31 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 1500 210 0 1 {name=p32 sig_type=std_logic lab=itail_2x}
C {devices/lab_pin.sym} 990 -330 0 0 {name=p38 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1440 400 3 0 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1050 -230 3 0 {name=p41 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1230 -230 3 0 {name=p42 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1410 -230 3 0 {name=p43 sig_type=std_logic lab=GND}
C {devices/iopin.sym} -380 -200 0 1 {name=p8 lab=vbias}
C {devices/ipin.sym} -380 -280 0 0 {name=p4 lab=ctrl_tail[1:0]}
C {devices/iopin.sym} -380 -560 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -380 -520 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} -380 -100 0 1 {name=p47 lab=GND}
C {devices/ipin.sym} -380 -240 0 0 {name=p1 lab=ctrl_source}
C {devices/ipin.sym} -380 -380 0 0 {name=p3 lab=inp}
C {devices/ipin.sym} -380 -340 0 0 {name=p5 lab=inm}
C {devices/iopin.sym} -380 -460 0 1 {name=p6 lab=outp}
C {devices/iopin.sym} -380 -420 0 1 {name=p7 lab=outm}
C {devices/lab_pin.sym} 320 -120 1 1 {name=p11 sig_type=std_logic lab=itail}
C {tt_asw_3v3.sym} 1210 340 0 0 {name=x1}
C {devices/lab_pin.sym} 1020 300 0 0 {name=p12 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} 40 -250 0 0 {name=p13 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 580 -250 0 1 {name=p14 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 140 -420 0 0 {name=p15 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 480 -420 0 1 {name=p16 sig_type=std_logic lab=outm}

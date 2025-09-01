v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 830 600 970 600 {
lab=i1_2x}
N 490 430 530 430 {
lab=ictrl_1[0]}
N 490 560 530 560 {
lab=ictrl_1[1]}
N 830 430 870 430 {
lab=VAPWR}
N 830 560 870 560 {
lab=VAPWR}
N 830 450 890 450 {
lab=VDPWR}
N 830 580 890 580 {
lab=VDPWR}
N 830 510 910 510 {
lab=GND}
N 910 510 910 790 {
lab=GND}
N 830 640 910 640 {
lab=GND}
N 870 370 870 430 {
lab=VAPWR}
N 890 370 890 450 {
lab=VDPWR}
N 830 490 930 490 {
lab=iout_1}
N 830 620 930 620 {
lab=iout_1}
N 930 370 930 490 {
lab=iout_1}
N 830 470 970 470 {
lab=i1_1x}
N 830 600 970 600 {
lab=i1_2x}
N 1600 600 1740 600 {
lab=i2_2x}
N 1260 430 1300 430 {
lab=ictrl_2[0]}
N 1260 560 1300 560 {
lab=ictrl_2[1]}
N 1600 430 1640 430 {
lab=VAPWR}
N 1600 560 1640 560 {
lab=VAPWR}
N 1600 450 1660 450 {
lab=VDPWR}
N 1600 580 1660 580 {
lab=VDPWR}
N 1600 510 1680 510 {
lab=GND}
N 1680 510 1680 790 {
lab=GND}
N 1600 640 1680 640 {
lab=GND}
N 1640 370 1640 430 {
lab=VAPWR}
N 1660 370 1660 450 {
lab=VDPWR}
N 1600 490 1700 490 {
lab=iout_2}
N 1600 620 1700 620 {
lab=iout_2}
N 1700 370 1700 490 {
lab=iout_2}
N 1600 470 1740 470 {
lab=i2_1x}
N 1600 600 1740 600 {
lab=i2_2x}
N 0 -230 0 -100 {
lab=ibias}
N 520 -230 520 -140 {
lab=iout_1}
N 700 -230 700 -140 {
lab=i1_1x}
N 880 -230 880 -140 {
lab=i1_2x}
N 460 -260 480 -260 {
lab=ibias}
N 460 -260 460 -200 {
lab=ibias}
N 460 -200 820 -200 {
lab=ibias}
N 820 -260 820 -200 {
lab=ibias}
N 820 -260 840 -260 {
lab=ibias}
N 640 -260 660 -260 {
lab=ibias}
N 640 -260 640 -200 {
lab=ibias}
N -40 -360 880 -360 {
lab=VAPWR}
N -0 -360 0 -290 {
lab=VAPWR}
N 520 -360 520 -290 {
lab=VAPWR}
N 700 -360 700 -290 {
lab=VAPWR}
N 880 -360 880 -290 {
lab=VAPWR}
N 700 -260 720 -260 {
lab=VAPWR}
N 720 -360 720 -260 {
lab=VAPWR}
N 520 -260 540 -260 {
lab=VAPWR}
N 540 -360 540 -260 {
lab=VAPWR}
N 880 -260 900 -260 {
lab=VAPWR}
N 900 -360 900 -260 {
lab=VAPWR}
N 880 -360 900 -360 {
lab=VAPWR}
N -20 -260 0 -260 {
lab=VAPWR}
N -20 -360 -20 -260 {
lab=VAPWR}
N -0 -200 60 -200 {
lab=ibias}
N 60 -260 60 -200 {
lab=ibias}
N 40 -260 60 -260 {
lab=ibias}
N 1280 -230 1280 -140 {
lab=iout_2}
N 1460 -230 1460 -140 {
lab=i2_1x}
N 1640 -230 1640 -140 {
lab=i2_2x}
N 1220 -260 1240 -260 {
lab=ibias}
N 1220 -260 1220 -200 {
lab=ibias}
N 1220 -200 1580 -200 {
lab=ibias}
N 1580 -260 1580 -200 {
lab=ibias}
N 1580 -260 1600 -260 {
lab=ibias}
N 1400 -260 1420 -260 {
lab=ibias}
N 1400 -260 1400 -200 {
lab=ibias}
N 1280 -360 1280 -290 {
lab=VAPWR}
N 1460 -360 1460 -290 {
lab=VAPWR}
N 1640 -360 1640 -290 {
lab=VAPWR}
N 1460 -260 1480 -260 {
lab=VAPWR}
N 1480 -360 1480 -260 {
lab=VAPWR}
N 1280 -260 1300 -260 {
lab=VAPWR}
N 1300 -360 1300 -260 {
lab=VAPWR}
N 1640 -260 1660 -260 {
lab=VAPWR}
N 1660 -360 1660 -260 {
lab=VAPWR}
N 1640 -360 1660 -360 {
lab=VAPWR}
N 900 -360 1640 -360 {
lab=VAPWR}
N 870 430 870 560 {
lab=VAPWR}
N 890 450 890 580 {
lab=VDPWR}
N 930 490 930 620 {
lab=iout_1}
N 1700 490 1700 620 {
lab=iout_2}
N 1660 450 1660 580 {
lab=VDPWR}
N 1640 430 1640 560 {
lab=VAPWR}
C {devices/iopin.sym} -100 300 0 1 {name=p8 lab=ibias}
C {devices/iopin.sym} -100 380 0 1 {name=p6 lab=iout_1}
C {devices/ipin.sym} -100 480 0 0 {name=p4 lab=ictrl_1[1:0]}
C {devices/ipin.sym} -100 520 0 0 {name=p5 lab=ictrl_2[1:0]}
C {devices/iopin.sym} -100 420 0 1 {name=p7 lab=iout_2}
C {devices/iopin.sym} -100 200 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -100 240 0 1 {name=p10 lab=VDPWR}
C {devices/lab_pin.sym} 520 -140 1 1 {name=p2 sig_type=std_logic lab=iout_1}
C {devices/lab_pin.sym} 700 -140 1 1 {name=p21 sig_type=std_logic lab=i1_1x}
C {devices/lab_pin.sym} 880 -140 1 1 {name=p22 sig_type=std_logic lab=i1_2x}
C {devices/lab_pin.sym} 0 -100 1 1 {name=p24 sig_type=std_logic lab=ibias}
C {tt_asw_3v3.sym} 680 470 0 0 {name=x4}
C {tt_asw_3v3.sym} 680 600 0 0 {name=x5}
C {devices/lab_pin.sym} 490 430 0 0 {name=p25 sig_type=std_logic lab=ictrl_1[0]}
C {devices/lab_pin.sym} 490 560 0 0 {name=p26 sig_type=std_logic lab=ictrl_1[1]}
C {devices/lab_pin.sym} 870 370 1 0 {name=p28 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 890 370 1 0 {name=p29 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 930 370 1 0 {name=p30 sig_type=std_logic lab=iout_1}
C {devices/lab_pin.sym} 970 470 0 1 {name=p31 sig_type=std_logic lab=i1_1x}
C {devices/lab_pin.sym} 970 600 0 1 {name=p32 sig_type=std_logic lab=i1_2x}
C {tt_asw_3v3.sym} 1450 470 0 0 {name=x1}
C {tt_asw_3v3.sym} 1450 600 0 0 {name=x2}
C {devices/lab_pin.sym} 1260 430 0 0 {name=p1 sig_type=std_logic lab=ictrl_2[0]}
C {devices/lab_pin.sym} 1260 560 0 0 {name=p11 sig_type=std_logic lab=ictrl_2[1]}
C {devices/lab_pin.sym} 1640 370 1 0 {name=p13 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 1660 370 1 0 {name=p14 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 1700 370 1 0 {name=p15 sig_type=std_logic lab=iout_2}
C {devices/lab_pin.sym} 1740 470 0 1 {name=p16 sig_type=std_logic lab=i2_1x}
C {devices/lab_pin.sym} 1740 600 0 1 {name=p17 sig_type=std_logic lab=i2_2x}
C {devices/lab_pin.sym} 910 790 3 0 {name=p19 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 1680 790 3 0 {name=p20 sig_type=std_logic lab=GND}
C {devices/iopin.sym} -100 660 0 1 {name=p47 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 500 -260 0 0 {name=M3
L=1
W=30
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 20 -260 0 1 {name=M4
L=1
W=30
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 680 -260 0 0 {name=M5
L=1
W=30
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -260 0 0 {name=M7
L=1
W=60
nf=8
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
C {devices/lab_pin.sym} 460 -230 0 0 {name=p23 sig_type=std_logic lab=ibias}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1260 -260 0 0 {name=M1
L=1
W=30
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1440 -260 0 0 {name=M2
L=1
W=30
nf=4
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1620 -260 0 0 {name=M6
L=1
W=60
nf=8
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
C {devices/lab_pin.sym} 1220 -230 0 0 {name=p41 sig_type=std_logic lab=ibias}
C {devices/lab_pin.sym} 1280 -140 1 1 {name=p34 sig_type=std_logic lab=iout_2}
C {devices/lab_pin.sym} 1460 -140 1 1 {name=p38 sig_type=std_logic lab=i2_1x}
C {devices/lab_pin.sym} 1640 -140 1 1 {name=p40 sig_type=std_logic lab=i2_2x}
C {devices/lab_pin.sym} -40 -360 0 0 {name=p3 sig_type=std_logic lab=VAPWR}

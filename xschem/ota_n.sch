v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -300 280 -260 {
lab=VAPWR}
N 590 -300 590 -260 {
lab=VAPWR}
N 340 -230 340 -160 {
lab=outp}
N 200 -300 220 -300 {
lab=VAPWR}
N 280 -160 340 -160 {
lab=outp}
N 320 -230 340 -230 {
lab=outp}
N 530 -230 550 -230 {
lab=gate}
N 200 730 260 730 {
lab=VAPWR}
N 200 750 260 750 {
lab=VDPWR}
N 200 770 260 770 {
lab=outp}
N 200 790 260 790 {
lab=gate}
N 200 810 260 810 {
lab=GND}
N -140 730 -100 730 {
lab=ctrl_mode[0]}
N 200 860 260 860 {
lab=VAPWR}
N 200 880 260 880 {
lab=VDPWR}
N 200 900 260 900 {
lab=outm}
N 200 920 260 920 {
lab=gate}
N 200 940 260 940 {
lab=GND}
N -140 860 -100 860 {
lab=ctrl_diode_load}
N 180 -60 240 -60 {
lab=inp}
N 820 900 960 900 {
lab=itail_2x}
N 200 360 200 430 {
lab=vbias}
N 440 310 440 400 {
lab=itail_1x}
N 380 360 380 430 {
lab=vbias}
N 380 430 400 430 {
lab=vbias}
N 200 360 380 360 {
lab=vbias}
N 260 310 260 400 {
lab=itail}
N 200 430 220 430 {
lab=vbias}
N 380 360 560 360 {
lab=vbias}
N 620 310 620 400 {
lab=itail_2x}
N 560 360 560 430 {
lab=vbias}
N 560 430 580 430 {
lab=vbias}
N 480 730 520 730 {
lab=ctrl_tail[0]}
N 480 860 520 860 {
lab=ctrl_tail[1]}
N 820 730 860 730 {
lab=VAPWR}
N 820 860 860 860 {
lab=VAPWR}
N 820 750 880 750 {
lab=VDPWR}
N 820 880 880 880 {
lab=VDPWR}
N 820 810 900 810 {
lab=GND}
N 900 810 900 1090 {
lab=GND}
N 820 940 900 940 {
lab=GND}
N 860 670 860 730 {
lab=VAPWR}
N 880 670 880 750 {
lab=VDPWR}
N 820 790 920 790 {
lab=itail}
N 820 920 920 920 {
lab=itail}
N 920 670 920 790 {
lab=itail}
N 820 770 960 770 {
lab=itail_1x}
N 820 900 960 900 {
lab=itail_2x}
N 260 430 280 430 {
lab=GND}
N 280 430 280 490 {
lab=GND}
N 260 460 260 490 {
lab=GND}
N 440 430 460 430 {
lab=GND}
N 460 430 460 490 {
lab=GND}
N 440 460 440 490 {
lab=GND}
N 620 430 640 430 {
lab=GND}
N 640 430 640 490 {
lab=GND}
N 620 460 620 490 {
lab=GND}
N 260 490 280 490 {
lab=GND}
N 440 490 460 490 {
lab=GND}
N 620 490 640 490 {
lab=GND}
N 860 730 860 860 {
lab=VAPWR}
N 880 750 880 880 {
lab=VDPWR}
N 920 790 920 920 {
lab=itail}
N 280 -200 280 -160 {lab=outp}
N 590 -200 590 -160 {lab=outm}
N 280 -260 280 -230 {lab=VAPWR}
N 590 -260 590 -230 {lab=VAPWR}
N 280 -300 590 -300 {lab=VAPWR}
N 220 -300 280 -300 {lab=VAPWR}
N 280 -160 280 -90 {lab=outp}
N 180 -160 280 -160 {lab=outp}
N 590 -160 690 -160 {lab=outm}
N 280 -60 360 -60 {lab=GND}
N 280 -30 280 40 {lab=itail}
N 280 40 590 40 {lab=itail}
N 360 -60 440 -60 {lab=GND}
N 440 -60 580 -60 {lab=GND}
N 580 -60 590 -60 {lab=GND}
N 590 -160 590 -90 {lab=outm}
N 630 -60 690 -60 {lab=inm}
N 440 40 440 100 {lab=itail}
N 590 -30 590 40 {lab=itail}
C {devices/iopin.sym} -670 110 0 1 {name=p8 lab=vbias}
C {devices/ipin.sym} -670 30 0 0 {name=p4 lab=ctrl_tail[1:0]}
C {devices/iopin.sym} -670 -250 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -670 -210 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} -670 210 0 1 {name=p47 lab=GND}
C {devices/ipin.sym} -670 70 0 0 {name=p1 lab=ctrl_mode[1:0]}
C {devices/ipin.sym} 180 -60 0 0 {name=p3 lab=inp}
C {devices/ipin.sym} 690 -60 0 1 {name=p5 lab=inm}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -230 0 1 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 570 -230 0 0 {name=M2
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
C {devices/lab_pin.sym} 200 -300 0 0 {name=p18 sig_type=std_logic lab=VAPWR}
C {devices/opin.sym} 180 -160 0 1 {name=p19 lab=outp}
C {tt_asw_3v3.sym} 50 770 0 0 {name=x2}
C {devices/lab_pin.sym} 530 -230 0 0 {name=p7 sig_type=std_logic lab=gate
}
C {devices/lab_pin.sym} 260 730 0 1 {name=p21 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 260 750 0 1 {name=p22 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 260 770 0 1 {name=p23 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 260 790 0 1 {name=p24 sig_type=std_logic lab=gate}
C {devices/lab_pin.sym} 260 810 0 1 {name=p25 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -140 730 0 0 {name=p26 sig_type=std_logic lab=ctrl_mode[0]}
C {tt_asw_3v3.sym} 50 900 0 0 {name=x3}
C {devices/lab_pin.sym} 260 860 0 1 {name=p27 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 260 880 0 1 {name=p28 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 260 900 0 1 {name=p29 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 260 920 0 1 {name=p30 sig_type=std_logic lab=gate}
C {devices/lab_pin.sym} 260 940 0 1 {name=p31 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} -140 860 0 0 {name=p32 sig_type=std_logic lab=ctrl_mode[1]}
C {devices/opin.sym} 690 -160 0 0 {name=p34 lab=outm}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 260 -60 0 0 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 610 -60 0 1 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 420 430 0 0 {name=M6
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 240 430 0 0 {name=M8
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 600 430 0 0 {name=M10
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
C {devices/lab_pin.sym} 260 310 3 1 {name=p6 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 440 310 3 1 {name=p20 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 620 310 3 1 {name=p33 sig_type=std_logic lab=itail_2x}
C {tt_asw_3v3.sym} 670 770 0 0 {name=x4}
C {tt_asw_3v3.sym} 670 900 0 0 {name=x5}
C {devices/lab_pin.sym} 480 730 0 0 {name=p35 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/lab_pin.sym} 480 860 0 0 {name=p36 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} 860 670 1 0 {name=p37 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 880 670 1 0 {name=p38 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 920 670 1 0 {name=p39 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 960 770 0 1 {name=p40 sig_type=std_logic lab=itail_1x}
C {devices/lab_pin.sym} 960 900 0 1 {name=p41 sig_type=std_logic lab=itail_2x}
C {devices/lab_pin.sym} 200 390 0 0 {name=p42 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 900 1090 3 0 {name=p43 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 260 490 3 0 {name=p44 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 440 490 3 0 {name=p45 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 620 490 3 0 {name=p46 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 440 100 1 1 {name=p48 sig_type=std_logic lab=itail}
C {devices/lab_pin.sym} 440 -60 3 0 {name=p2 sig_type=std_logic lab=GND}

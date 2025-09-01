v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 450 280 450 {
lab=ctrl_width[0]}
N 220 610 280 610 {
lab=ctrl_width[1]}
N 220 770 280 770 {
lab=ctrl_source}
N 580 450 600 450 {
lab=VAPWR}
N 600 360 600 450 {
lab=VAPWR}
N 580 610 600 610 {
lab=VAPWR}
N 600 450 600 610 {
lab=VAPWR}
N 580 770 600 770 {
lab=VAPWR}
N 600 610 600 770 {
lab=VAPWR}
N 580 470 640 470 {
lab=VDPWR}
N 640 360 640 470 {
lab=VDPWR}
N 580 630 640 630 {
lab=VDPWR}
N 640 470 640 630 {
lab=VDPWR}
N 580 790 640 790 {
lab=VDPWR}
N 640 630 640 790 {
lab=VDPWR}
N 680 850 680 900 {
lab=GND}
N 580 850 680 850 {
lab=GND}
N 680 690 680 850 {
lab=GND}
N 580 690 680 690 {
lab=GND}
N 680 530 680 690 {
lab=GND}
N 580 530 680 530 {
lab=GND}
N 680 360 680 530 {
lab=GND}
N 720 360 720 510 {
lab=Vd}
N 580 510 720 510 {
lab=Vd}
N 720 510 720 670 {
lab=Vd}
N 580 670 720 670 {
lab=Vd}
N 580 490 760 490 {
lab=Vd_1x}
N 580 650 760 650 {
lab=Vd_2x}
N 580 810 760 810 {
lab=Vs}
N -0 -160 680 -160 {
lab=Vs}
N 680 -160 680 -100 {
lab=Vs}
N 460 -160 460 -100 {
lab=Vs}
N 240 -160 240 -100 {
lab=Vs}
N -0 40 240 40 {
lab=Vd}
N 240 -40 240 40 {
lab=Vd}
N -0 -70 200 -70 {
lab=Vg}
N 160 -70 160 -20 {
lab=Vg}
N 160 -20 600 -20 {
lab=Vg}
N 600 -70 600 -20 {
lab=Vg}
N 600 -70 640 -70 {
lab=Vg}
N 380 -70 420 -70 {
lab=Vg}
N 380 -70 380 -20 {
lab=Vg}
N 240 -70 300 -70 {
lab=Vd_1x}
N 460 -70 520 -70 {
lab=#net1}
N 680 -70 740 -70 {
lab=#net2}
N 680 -160 740 -160 {
lab=Vs}
N 460 -40 460 80 {
lab=Vd_1x}
N 680 -40 680 80 {
lab=Vd_2x}
N 600 770 600 830 {
lab=VAPWR}
N 580 830 600 830 {
lab=VAPWR}
C {devices/ipin.sym} 0 150 0 0 {name=p4 lab=ctrl_width[1:0]}
C {devices/iopin.sym} 0 -160 0 1 {name=p7 lab=Vs}
C {devices/iopin.sym} 0 -70 0 1 {name=p1 lab=Vg}
C {devices/iopin.sym} 0 40 0 1 {name=p2 lab=Vd}
C {devices/iopin.sym} -20 -310 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -20 -270 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} 0 190 0 1 {name=p3 lab=GND}
C {devices/ipin.sym} 0 110 0 0 {name=p5 lab=ctrl_source}
C {tt_asw_3v3.sym} 430 490 0 0 {name=x1}
C {tt_asw_3v3.sym} 430 650 0 0 {name=x2}
C {tt_asw_3v3.sym} 430 810 0 0 {name=x3}
C {devices/lab_pin.sym} 220 450 0 0 {name=p25 sig_type=std_logic lab=ctrl_width[0]}
C {devices/lab_pin.sym} 220 610 0 0 {name=p6 sig_type=std_logic lab=ctrl_width[1]}
C {devices/lab_pin.sym} 220 770 0 0 {name=p8 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} 600 360 1 0 {name=p11 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 640 360 1 0 {name=p12 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 680 900 1 1 {name=p13 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 720 360 1 0 {name=p14 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 760 490 0 1 {name=p15 sig_type=std_logic lab=Vd_1x}
C {devices/lab_pin.sym} 760 650 0 1 {name=p16 sig_type=std_logic lab=Vd_2x}
C {devices/lab_pin.sym} 760 810 0 1 {name=p17 sig_type=std_logic lab=Vs}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 220 -70 0 0 {name=M1
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 440 -70 0 0 {name=M2
L=0.5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 660 -70 0 0 {name=M3
L=0.5
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
C {devices/lab_pin.sym} 460 80 1 1 {name=p18 sig_type=std_logic lab=Vd_1x}
C {devices/lab_pin.sym} 680 80 1 1 {name=p19 sig_type=std_logic lab=Vd_2x}
C {devices/lab_pin.sym} 300 -70 3 1 {name=p20 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 520 -70 3 1 {name=p21 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 740 -70 3 1 {name=p22 sig_type=std_logic lab=VAPWR}

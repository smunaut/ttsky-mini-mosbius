v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -50 100 20 {
lab=Vs}
N 100 20 500 20 {
lab=Vs}
N 500 -50 500 20 {
lab=Vs}
N 300 -50 300 20 {
lab=Vs}
N -120 20 100 20 {
lab=Vs}
N -120 -80 60 -80 {
lab=Vg}
N 20 -140 20 -80 {
lab=Vg}
N 20 -140 440 -140 {
lab=Vg}
N 440 -140 440 -80 {
lab=Vg}
N 440 -80 460 -80 {
lab=Vg}
N 240 -80 260 -80 {
lab=Vg}
N 240 -140 240 -80 {
lab=Vg}
N 100 -200 100 -110 {
lab=Vd}
N 300 -200 300 -110 {
lab=Vd_1x}
N 500 -200 500 -110 {
lab=Vd_2x}
N -120 -200 100 -200 {
lab=Vd}
N 80 350 140 350 {
lab=ctrl_width[0]}
N 80 510 140 510 {
lab=ctrl_width[1]}
N 80 670 140 670 {
lab=ctrl_source}
N 440 350 460 350 {
lab=VAPWR}
N 460 260 460 350 {
lab=VAPWR}
N 440 510 460 510 {
lab=VAPWR}
N 460 350 460 510 {
lab=VAPWR}
N 440 670 460 670 {
lab=VAPWR}
N 460 510 460 670 {
lab=VAPWR}
N 440 370 500 370 {
lab=VDPWR}
N 500 260 500 370 {
lab=VDPWR}
N 440 530 500 530 {
lab=VDPWR}
N 500 370 500 530 {
lab=VDPWR}
N 440 690 500 690 {
lab=VDPWR}
N 500 530 500 690 {
lab=VDPWR}
N 540 750 540 800 {
lab=GND}
N 440 750 540 750 {
lab=GND}
N 540 590 540 750 {
lab=GND}
N 440 590 540 590 {
lab=GND}
N 540 430 540 590 {
lab=GND}
N 440 430 540 430 {
lab=GND}
N 540 260 540 430 {
lab=GND}
N 580 260 580 410 {
lab=Vd}
N 440 410 580 410 {
lab=Vd}
N 580 410 580 570 {
lab=Vd}
N 440 570 580 570 {
lab=Vd}
N 440 390 620 390 {
lab=Vd_1x}
N 440 550 620 550 {
lab=Vd_2x}
N 440 730 540 730 {
lab=GND}
N 440 710 620 710 {
lab=Vs}
N 100 -80 180 -80 {
lab=Vs}
N 180 -80 180 20 {
lab=Vs}
N 300 -80 380 -80 {
lab=Vs}
N 380 -80 380 20 {
lab=Vs}
N 500 -80 580 -80 {
lab=Vs}
N 580 -80 580 20 {
lab=Vs}
N 500 20 580 20 {
lab=Vs}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 80 -80 0 0 {name=M1
L=0.5
W=10
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 -80 0 0 {name=M2
L=0.5
W=10
nf=2
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 480 -80 0 0 {name=M3
L=0.5
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
C {tt_asw_3v3.sym} 290 390 0 0 {name=x1}
C {devices/ipin.sym} -120 140 0 0 {name=p4 lab=ctrl_width[1:0]}
C {devices/iopin.sym} -120 20 0 1 {name=p7 lab=Vs}
C {devices/iopin.sym} -120 -80 0 1 {name=p1 lab=Vg}
C {devices/iopin.sym} -120 -200 0 1 {name=p2 lab=Vd}
C {devices/iopin.sym} -140 -320 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -140 -280 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} -120 180 0 1 {name=p3 lab=GND}
C {devices/ipin.sym} -120 100 0 0 {name=p5 lab=ctrl_source}
C {tt_asw_3v3.sym} 290 550 0 0 {name=x2}
C {tt_asw_3v3.sym} 290 710 0 0 {name=x3}
C {devices/lab_pin.sym} 80 350 0 0 {name=p25 sig_type=std_logic lab=ctrl_width[0]}
C {devices/lab_pin.sym} 80 510 0 0 {name=p6 sig_type=std_logic lab=ctrl_width[1]}
C {devices/lab_pin.sym} 80 670 0 0 {name=p8 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} 460 260 1 0 {name=p11 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 500 260 1 0 {name=p12 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 540 800 1 1 {name=p13 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 580 260 1 0 {name=p14 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 620 390 0 1 {name=p15 sig_type=std_logic lab=Vd_1x}
C {devices/lab_pin.sym} 620 550 0 1 {name=p16 sig_type=std_logic lab=Vd_2x}
C {devices/lab_pin.sym} 620 710 0 1 {name=p17 sig_type=std_logic lab=Vs}
C {devices/lab_pin.sym} 300 -200 3 1 {name=p18 sig_type=std_logic lab=Vd_1x}
C {devices/lab_pin.sym} 500 -200 3 1 {name=p19 sig_type=std_logic lab=Vd_2x}

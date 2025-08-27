v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -40 -90 -40 {
lab=inp}
N -140 -20 -90 -20 {
lab=inm}
N -140 -110 -90 -110 {
lab=VAPWR}
N -140 -90 -90 -90 {
lab=VDPWR}
N -140 30 -90 30 {
lab=vbias}
N -140 50 -90 50 {
lab=ctrl_tail[1:0]}
N -140 100 -90 100 {
lab=GND}
N 110 -40 280 -40 {
lab=outb}
N 280 -200 280 -40 {
lab=outb}
N 220 -230 280 -230 {
lab=VAPWR}
N 220 -300 220 -230 {
lab=VAPWR}
N 280 -300 280 -260 {
lab=VAPWR}
N 590 -300 590 -260 {
lab=VAPWR}
N 590 -200 590 -20 {
lab=out}
N 340 -230 340 -160 {
lab=outb}
N 200 -300 220 -300 {
lab=VAPWR}
N 650 -300 650 -230 {
lab=VAPWR}
N 590 -230 650 -230 {
lab=VAPWR}
N 590 -20 650 -20 {
lab=out}
N 280 -160 340 -160 {
lab=outb}
N 320 -230 340 -230 {
lab=outb}
N 530 -230 550 -230 {
lab=out_gate}
N 220 -300 650 -300 {
lab=VAPWR}
N 110 -20 590 -20 {
lab=out}
N 440 360 500 360 {
lab=VAPWR}
N 440 380 500 380 {
lab=VDPWR}
N 440 400 500 400 {
lab=outb}
N 440 420 500 420 {
lab=out_gate}
N 440 440 500 440 {
lab=GND}
N 100 360 140 360 {
lab=ctrl_diode_b}
N 440 490 500 490 {
lab=VAPWR}
N 440 510 500 510 {
lab=VDPWR}
N 440 530 500 530 {
lab=out}
N 440 550 500 550 {
lab=out_gate}
N 440 570 500 570 {
lab=GND}
N 100 490 140 490 {
lab=ctrl_diode}
N 200 690 220 690 {
lab=ctrl_diode}
N 200 690 200 790 {
lab=ctrl_diode}
N 200 790 220 790 {
lab=ctrl_diode}
N 160 740 200 740 {
lab=ctrl_diode}
N 260 820 260 840 {
lab=GND}
N 260 640 260 660 {
lab=VDPWR}
N 260 720 260 760 {
lab=ctrl_diode_b}
N 260 740 340 740 {
lab=ctrl_diode_b}
N -120 70 -90 70 {
lab=GND}
N -120 70 -120 100 {
lab=GND}
C {diff_n.sym} 10 10 0 0 {name=x1}
C {devices/iopin.sym} -670 110 0 1 {name=p8 lab=vbias}
C {devices/ipin.sym} -670 30 0 0 {name=p4 lab=ctrl_tail[1:0]}
C {devices/iopin.sym} -670 -250 0 1 {name=p9 lab=VAPWR}
C {devices/iopin.sym} -670 -210 0 1 {name=p10 lab=VDPWR}
C {devices/iopin.sym} -670 210 0 1 {name=p47 lab=GND}
C {devices/ipin.sym} -670 70 0 0 {name=p1 lab=ctrl_diode}
C {devices/ipin.sym} -670 -70 0 0 {name=p3 lab=inp}
C {devices/ipin.sym} -670 -30 0 0 {name=p5 lab=inm}
C {devices/lab_pin.sym} -140 -40 0 0 {name=p13 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} -140 -20 0 0 {name=p2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} -140 -110 0 0 {name=p11 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -140 -90 0 0 {name=p12 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} -140 30 0 0 {name=p14 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} -140 50 0 0 {name=p15 sig_type=std_logic lab=ctrl_tail[1:0]}
C {devices/lab_pin.sym} -140 100 0 0 {name=p17 sig_type=std_logic lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 300 -230 0 1 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 570 -230 0 0 {name=M2
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
C {devices/lab_pin.sym} 200 -300 0 0 {name=p18 sig_type=std_logic lab=VAPWR}
C {devices/opin.sym} -610 -70 0 0 {name=p19 lab=out}
C {devices/lab_pin.sym} 650 -20 0 1 {name=p20 sig_type=std_logic lab=out}
C {tt_asw_3v3.sym} 290 400 0 0 {name=x2}
C {devices/lab_pin.sym} 340 -230 0 1 {name=p6 sig_type=std_logic lab=outb}
C {devices/lab_pin.sym} 530 -230 0 0 {name=p7 sig_type=std_logic lab=out_gate}
C {devices/lab_pin.sym} 500 360 0 1 {name=p21 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 500 380 0 1 {name=p22 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 500 400 0 1 {name=p23 sig_type=std_logic lab=outb}
C {devices/lab_pin.sym} 500 420 0 1 {name=p24 sig_type=std_logic lab=out_gate}
C {devices/lab_pin.sym} 500 440 0 1 {name=p25 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 100 360 0 0 {name=p26 sig_type=std_logic lab=ctrl_diode_b}
C {tt_asw_3v3.sym} 290 530 0 0 {name=x3}
C {devices/lab_pin.sym} 500 490 0 1 {name=p27 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 500 510 0 1 {name=p28 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 500 530 0 1 {name=p29 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 500 550 0 1 {name=p30 sig_type=std_logic lab=out_gate}
C {devices/lab_pin.sym} 500 570 0 1 {name=p31 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 100 490 0 0 {name=p32 sig_type=std_logic lab=ctrl_diode}
C {sky130_fd_pr/nfet3_01v8.sym} 240 790 0 0 {name=M7
W=0.42
L=0.15
body=VGND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 240 690 0 0 {name=M8
W=1
L=0.15
body=VDPWR
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_pin.sym} 260 640 0 1 {name=p35 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 260 840 0 1 {name=p36 sig_type=std_logic lab=GND}
C {devices/lab_pin.sym} 160 740 0 0 {name=p33 sig_type=std_logic lab=ctrl_diode}
C {devices/lab_pin.sym} 340 740 0 1 {name=p37 sig_type=std_logic lab=ctrl_diode_b}

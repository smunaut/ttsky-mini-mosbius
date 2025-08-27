v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Ron=1mOhm, Roff=1GOhm, Vthreshold=1V, Vhysteresis=100mV} -180 560 0 0 0.2 0.2 {}
N 180 -100 180 -60 {
lab=GND}
N -300 -280 -300 -120 {
lab=VAPWR}
N -300 -280 180 -280 {
lab=VAPWR}
N -220 -260 -220 -120 {
lab=VDPWR}
N -220 -260 180 -260 {
lab=VDPWR}
N -340 160 -340 180 {
lab=ctrl_width[1]}
N -240 160 -240 180 {
lab=ctrl_width[0]}
N -140 160 -140 180 {
lab=ctrl_source}
N 150 -150 180 -150 {
lab=ctrl_source}
N 150 -130 180 -130 {
lab=ctrl_width[1:0]}
N -340 440 -340 460 {
lab=VD}
N -220 520 -220 540 {
lab=VAPWR}
N -140 440 -140 460 {
lab=#net1}
N -30 390 -0 390 {
lab=VS}
N -140 390 -90 390 {
lab=#net1}
N -140 390 -140 440 {
lab=#net1}
N 140 -190 180 -190 {
lab=#net2}
N 140 -210 180 -210 {
lab=VG}
N 140 -230 180 -230 {
lab=VS}
N -60 320 -60 350 {
lab=#net3}
N -60 320 120 320 {
lab=#net3}
N 120 320 120 460 {
lab=#net3}
N -140 320 -140 350 {
lab=GND}
N -140 320 -80 320 {
lab=GND}
N -80 320 -80 350 {
lab=GND}
N 40 -190 80 -190 {
lab=VD}
N -400 840 -400 880 {
lab=#net4}
N -400 700 -400 780 {
lab=VAPWR}
N -400 700 300 700 {
lab=VAPWR}
N -480 810 -440 810 {
lab=VG}
N -400 810 -340 810 {
lab=VAPWR}
N -340 740 -340 810 {
lab=VAPWR}
N -400 740 -340 740 {
lab=VAPWR}
N -160 840 -160 880 {
lab=#net5}
N -240 810 -200 810 {
lab=VG}
N -160 810 -100 810 {
lab=VAPWR}
N -100 740 -100 810 {
lab=VAPWR}
N -160 740 -100 740 {
lab=VAPWR}
N 60 840 60 880 {
lab=#net6}
N -20 810 20 810 {
lab=VG}
N 60 810 120 810 {
lab=VAPWR}
N 120 740 120 810 {
lab=VAPWR}
N 60 740 120 740 {
lab=VAPWR}
N 300 840 300 880 {
lab=#net7}
N 220 810 260 810 {
lab=VG}
N 300 810 360 810 {
lab=VAPWR}
N 360 740 360 810 {
lab=VAPWR}
N 300 740 360 740 {
lab=VAPWR}
N -160 700 -160 780 {
lab=VAPWR}
N 60 700 60 780 {
lab=VAPWR}
N 300 700 300 780 {
lab=VAPWR}
N -400 940 -400 1000 {
lab=VD}
N -160 940 -160 1000 {
lab=VD}
N 60 940 60 1000 {
lab=VD}
N 300 940 300 1000 {
lab=VD}
N -220 430 -220 460 {
lab=VG}
N -140 520 -140 540 {
lab=VAPWR}
C {devices/gnd.sym} 180 -60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -300 -90 0 0 {name=VAPWR value=3.3}
C {devices/vsource.sym} -220 -90 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} -300 -60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -220 -60 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -340 210 0 0 {name=VCW1 value=1.8}
C {devices/gnd.sym} -340 240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -240 210 0 0 {name=VCW0 value=1.8}
C {devices/gnd.sym} -240 240 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -340 160 3 1 {name=p9 sig_type=std_logic lab=ctrl_width[1]}
C {devices/lab_pin.sym} -240 160 3 1 {name=p10 sig_type=std_logic lab=ctrl_width[0]}
C {devices/vsource.sym} -140 210 0 0 {name=VCS value=1.8}
C {devices/gnd.sym} -140 240 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -140 160 3 1 {name=p13 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} -300 -280 0 0 {name=p1 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -220 -260 0 0 {name=p2 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 150 -150 0 0 {name=p14 sig_type=std_logic lab=ctrl_source}
C {devices/lab_pin.sym} 150 -130 0 0 {name=p15 sig_type=std_logic lab=ctrl_width[1:0]}
C {sky130_fd_pr/corner.sym} 690 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -340 490 0 0 {name=VD value=0}
C {devices/gnd.sym} -340 520 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -220 490 2 0 {name=VG value=0}
C {devices/lab_pin.sym} -340 440 3 1 {name=p3 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} -220 540 1 1 {name=p4 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} -140 490 2 0 {name=VS value=0}
C {devices/lab_pin.sym} 0 390 0 1 {name=p5 sig_type=std_logic lab=VS}
C {devices/lab_pin.sym} 140 -210 2 1 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 40 -190 2 1 {name=p7 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} 140 -230 2 1 {name=p8 sig_type=std_logic lab=VS}
C {devices/vsource.sym} 120 490 0 0 {name=VS_EN value=0}
C {devices/gnd.sym} -140 350 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 690 70 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* VGS Sweep Test
*****************************************
* this test does a ID vs VGS DC sweep for a common source configuration
* and plots the current vs "ideal" PMOS devices.
* plots 1-4 represent each programmed PMOS width
*****************************************
.model switch SW(Ron=1m, Roff=1G, Vt=0.5, Vh=0.1)
.control
   save all
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   alter VD 0
   alter VCW1 0
   alter VCW0 0
   alter VCS 1.8
   alter VS_EN 0
   repeat 2
      repeat 2
         dc VG 0 3.3 0.01
         alter VCW0 1.8
      end
      alter VCW1 1.8
      alter VCW0 0
   end
   plot dc1.i(Vmeas_DUT) dc1.i(Vmeas_1x); ylog
   plot dc4.i(Vmeas_DUT) dc4.i(Vmeas_4x); ylog
   plot deriv(dc1.i(Vmeas_DUT)) deriv(dc1.i(Vmeas_1x))
   plot deriv(dc4.i(Vmeas_DUT)) deriv(dc4.i(Vmeas_4x))
.endc
"}
C {devices/switch_ngspice.sym} -60 390 1 0 {name=S1 model=switch}
C {devices/gnd.sym} 120 520 0 0 {name=l11 lab=GND}
C {devices/ammeter.sym} -400 910 0 0 {name=Vmeas_1x}
C {devices/ammeter.sym} 110 -190 1 0 {name=Vmeas_DUT}
C {devices/ammeter.sym} -160 910 0 0 {name=Vmeas_2x}
C {devices/ammeter.sym} 300 910 0 0 {name=Vmeas_4x}
C {devices/ammeter.sym} 60 910 0 0 {name=Vmeas_3x}
C {pmos_prog.sym} 280 -210 0 0 {name=x1}
C {devices/lab_pin.sym} -400 700 0 0 {name=p12 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -480 810 2 1 {name=p16 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -420 810 0 0 {name=M1
L=0.5
W=30
nf=6
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
C {devices/lab_pin.sym} -240 810 2 1 {name=p18 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} -180 810 0 0 {name=M3
L=0.5
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
C {devices/lab_pin.sym} -20 810 2 1 {name=p20 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 40 810 0 0 {name=M6
L=0.5
W=90
nf=18
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
C {devices/lab_pin.sym} 220 810 2 1 {name=p22 sig_type=std_logic lab=VG}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 280 810 0 0 {name=M8
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
C {devices/lab_pin.sym} -400 1000 1 1 {name=p23 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} -160 1000 1 1 {name=p24 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} 60 1000 1 1 {name=p25 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} 300 1000 1 1 {name=p26 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} -220 430 3 1 {name=p11 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} -140 540 1 1 {name=p17 sig_type=std_logic lab=VAPWR}

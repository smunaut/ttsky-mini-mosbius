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
N -240 440 -240 460 {
lab=VG}
N -140 440 -140 460 {
lab=#net1}
N -30 390 -0 390 {
lab=VS}
N -140 390 -90 390 {
lab=#net1}
N -140 390 -140 440 {
lab=#net1}
N 140 -230 180 -230 {
lab=#net2}
N 140 -210 180 -210 {
lab=VG}
N 140 -190 180 -190 {
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
N -400 970 -400 1040 {
lab=GND}
N -400 940 -360 940 {
lab=GND}
N -360 940 -360 1020 {
lab=GND}
N -400 1020 -360 1020 {
lab=GND}
N -480 940 -440 940 {
lab=VG}
N -160 970 -160 1040 {
lab=GND}
N -160 940 -120 940 {
lab=GND}
N -120 940 -120 1020 {
lab=GND}
N -160 1020 -120 1020 {
lab=GND}
N -240 940 -200 940 {
lab=VG}
N 300 970 300 1040 {
lab=GND}
N 300 940 340 940 {
lab=GND}
N 340 940 340 1020 {
lab=GND}
N 300 1020 340 1020 {
lab=GND}
N 220 940 260 940 {
lab=VG}
N 40 -230 80 -230 {
lab=VD}
N 300 880 300 910 {
lab=#net4}
N -160 880 -160 910 {
lab=#net5}
N -400 880 -400 910 {
lab=#net6}
N -400 760 -400 820 {
lab=VD}
N -400 760 60 760 {
lab=VD}
N 300 760 300 820 {
lab=VD}
N -160 760 -160 820 {
lab=VD}
N 60 760 300 760 {
lab=VD}
N 60 970 60 1040 {
lab=GND}
N 60 940 100 940 {
lab=GND}
N 100 940 100 1020 {
lab=GND}
N 60 1020 100 1020 {
lab=GND}
N -20 940 20 940 {
lab=VG}
N 60 880 60 910 {
lab=#net7}
N 60 760 60 820 {
lab=VD}
C {nmos_prog.sym} -50 -200 0 0 {name=x1}
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
C {sky130_fd_pr/corner.sym} 1120 -490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} -340 490 0 0 {name=VD value=3.3}
C {devices/gnd.sym} -340 520 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -240 490 0 0 {name=VG value=0}
C {devices/gnd.sym} -240 520 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -340 440 3 1 {name=p3 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} -240 440 3 1 {name=p4 sig_type=std_logic lab=VG}
C {devices/vsource.sym} -140 490 0 0 {name=VS value=0}
C {devices/gnd.sym} -140 520 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 0 390 0 1 {name=p5 sig_type=std_logic lab=VS}
C {devices/lab_pin.sym} 140 -210 2 1 {name=p6 sig_type=std_logic lab=VG}
C {devices/lab_pin.sym} 40 -230 2 1 {name=p7 sig_type=std_logic lab=VD}
C {devices/lab_pin.sym} 140 -190 2 1 {name=p8 sig_type=std_logic lab=VS}
C {devices/vsource.sym} 120 490 0 0 {name=VS_EN value=0}
C {devices/gnd.sym} -140 350 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 1140 -310 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* VGS Sweep Test
*****************************************
* this test does a ID vs VGS DC sweep for a common source configuration
* and plots the current vs "ideal" NMOS devices.
* plots 1-4 represent each programmed NMOS width
*****************************************
.model switch SW(Ron=1m, Roff=1G, Vt=0.5, Vh=0.1)
.control
   save all
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   alter VD 3.3
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
   plot dc2.i(Vmeas_DUT) dc2.i(Vmeas_2x); ylog
   plot dc3.i(Vmeas_DUT) dc3.i(Vmeas_3x); ylog
   plot dc4.i(Vmeas_DUT) dc4.i(Vmeas_4x); ylog
.endc
"}
C {devices/switch_ngspice.sym} -60 390 1 0 {name=S1 model=switch}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -420 940 0 0 {name=M1
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
C {devices/gnd.sym} 120 520 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} -400 1040 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -480 940 2 1 {name=p11 sig_type=std_logic lab=VG}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -180 940 0 0 {name=M2
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
C {devices/gnd.sym} -160 1040 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -240 940 2 1 {name=p12 sig_type=std_logic lab=VG}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 280 940 0 0 {name=M3
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
C {devices/gnd.sym} 300 1040 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 220 940 2 1 {name=p16 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} -400 850 0 0 {name=Vmeas_1x}
C {devices/ammeter.sym} 110 -230 3 0 {name=Vmeas_DUT}
C {devices/ammeter.sym} -160 850 0 0 {name=Vmeas_2x}
C {devices/ammeter.sym} 300 850 0 0 {name=Vmeas_4x}
C {devices/lab_pin.sym} -400 760 2 1 {name=p17 sig_type=std_logic lab=VD}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 940 0 0 {name=M4
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 60 1040 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -20 940 2 1 {name=p18 sig_type=std_logic lab=VG}
C {devices/ammeter.sym} 60 850 0 0 {name=Vmeas_3x}

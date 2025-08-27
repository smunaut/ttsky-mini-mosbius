v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -160 -110 -120 {
lab=GND}
N -810 180 -810 240 {
lab=VDPWR}
N -890 180 -890 240 {
lab=VAPWR}
N -140 -350 -110 -350 {
lab=VDPWR}
N -140 -370 -110 -370 {
lab=VAPWR}
N -890 -340 -860 -340 {
lab=VDPWR}
N -890 -360 -860 -360 {
lab=VAPWR}
N -920 -220 -920 -130 {
lab=GND}
N -920 -220 -860 -220 {
lab=GND}
N -920 -200 -860 -200 {
lab=GND}
N -920 -170 -860 -170 {
lab=GND}
N -660 -300 -580 -300 {
lab=VAPWR}
N -660 -260 -620 -260 {
lab=VAPWR}
N -620 -300 -620 -260 {
lab=VAPWR}
N -660 -280 -620 -280 {
lab=VAPWR}
N -1060 -360 -1060 -300 {
lab=vbias}
N -1060 -300 -860 -300 {
lab=vbias}
N -1000 -460 -1000 -420 {
lab=GND}
N -1060 -460 -1000 -460 {
lab=GND}
N -1060 -460 -1060 -420 {
lab=GND}
N -140 -230 -110 -230 {
lab=vbias}
N 90 -300 160 -300 {
lab=#net1}
N 220 -300 340 -300 {
lab=VAPWR}
N 90 -280 160 -280 {
lab=#net2}
N 160 -280 160 -220 {
lab=#net2}
N 160 -220 240 -220 {
lab=#net2}
N 300 -220 320 -220 {
lab=VAPWR}
N 320 -300 320 -220 {
lab=VAPWR}
N -400 0 -400 20 {
lab=#net3}
N -400 20 -280 20 {
lab=#net3}
N -280 0 -280 20 {
lab=#net3}
N -340 20 -340 40 {
lab=#net3}
N -280 -280 -280 -60 {
lab=#net4}
N -280 -280 -110 -280 {
lab=#net4}
N -400 -300 -110 -300 {
lab=#net5}
N -400 -300 -400 -60 {
lab=#net5}
N -140 -210 -110 -210 {
lab=ctrl_tail[1:0]}
N -140 -190 -110 -190 {
lab=ctrl_source}
N -890 500 -890 520 {
lab=ctrl_tail[1]}
N -790 500 -790 520 {
lab=ctrl_tail[0]}
N -690 500 -690 520 {
lab=ctrl_source}
N -440 -10 -440 20 {
lab=GND}
N -240 -10 -240 20 {
lab=GND}
N -560 -50 -560 40 {
lab=VINDIFF}
N -560 -50 -440 -50 {
lab=VINDIFF}
N -240 -50 -200 -50 {
lab=VINDIFF}
C {diff_n.sym} -10 -250 0 0 {name=x1}
C {sky130_fd_pr/corner.sym} 660 -510 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 660 -320 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* Vin DC Sweep Test
*****************************************
* this test sweeps the differential input voltage
* and plots the differential output current (and gm)
* for various magnitudes of tail current
*****************************************
.control
   save all
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   alter VCM 1
   alter VCT1 0
   alter VCT0 0
   alter VCS 0
   repeat 2
      repeat 2
         dc VINDIFF -1 1 0.01
         alter VCT0 1.8
      end
      alter VCT1 1.8
      alter VCT0 0
   end
   plot (dc1.i(Vmeasp)-dc1.i(Vmeasn)) (dc2.i(Vmeasp)-dc2.i(Vmeasn)) (dc3.i(Vmeasp)-dc3.i(Vmeasn)) (dc4.i(Vmeasp)-dc4.i(Vmeasn))
   plot deriv(dc1.i(Vmeasp)-dc1.i(Vmeasn)) deriv(dc2.i(Vmeasp)-dc2.i(Vmeasn)) deriv(dc3.i(Vmeasp)-dc3.i(Vmeasn)) deriv(dc4.i(Vmeasp)-dc4.i(Vmeasn))
.endc
"}
C {devices/gnd.sym} -110 -120 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -890 270 0 0 {name=VAPWR value=3.3}
C {devices/vsource.sym} -810 270 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} -890 300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -810 300 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -890 180 1 0 {name=p1 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -810 180 1 0 {name=p2 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} -140 -370 0 0 {name=p3 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -140 -350 0 0 {name=p4 sig_type=std_logic lab=VDPWR}
C {mirror_n.sym} -810 -300 0 0 {name=x2}
C {devices/lab_pin.sym} -890 -360 0 0 {name=p5 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -890 -340 0 0 {name=p6 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} -920 -130 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -580 -300 0 1 {name=p7 sig_type=std_logic lab=VAPWR}
C {devices/isource.sym} -1060 -390 0 0 {name=I0 value=100u}
C {devices/gnd.sym} -1000 -420 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1060 -300 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} -140 -230 0 0 {name=p9 sig_type=std_logic lab=vbias}
C {devices/ammeter.sym} 190 -300 1 0 {name=Vmeasp}
C {devices/ammeter.sym} 270 -220 1 0 {name=Vmeasn}
C {devices/lab_pin.sym} 340 -300 0 1 {name=p10 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} -340 70 0 0 {name=VCM value=1.5}
C {devices/gnd.sym} -340 100 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -140 -210 0 0 {name=p11 sig_type=std_logic lab=ctrl_tail[1:0]}
C {devices/lab_pin.sym} -140 -190 0 0 {name=p12 sig_type=std_logic lab=ctrl_source}
C {devices/vsource.sym} -890 550 0 0 {name=VCT1 value=1.8}
C {devices/gnd.sym} -890 580 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -790 550 0 0 {name=VCT0 value=1.8}
C {devices/gnd.sym} -790 580 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -890 500 3 1 {name=p13 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} -790 500 3 1 {name=p14 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/vsource.sym} -690 550 0 0 {name=VCS value=1.8}
C {devices/gnd.sym} -690 580 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -690 500 3 1 {name=p15 sig_type=std_logic lab=ctrl_source}
C {devices/vcvs.sym} -400 -30 0 0 {name=EINP value=0.5}
C {devices/vcvs.sym} -280 -30 0 1 {name=EINM value=-0.5}
C {devices/gnd.sym} -240 20 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -440 20 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -560 70 0 0 {name=VINDIFF value=0}
C {devices/gnd.sym} -560 100 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -560 -50 0 0 {name=p16 sig_type=std_logic lab=VINDIFF}
C {devices/lab_pin.sym} -200 -50 0 1 {name=p17 sig_type=std_logic lab=VINDIFF}

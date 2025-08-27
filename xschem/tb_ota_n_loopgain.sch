v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -90 190 -50 {
lab=GND}
N -670 250 -670 310 {
lab=VDPWR}
N -750 250 -750 310 {
lab=VAPWR}
N 160 -280 190 -280 {
lab=VDPWR}
N 160 -300 190 -300 {
lab=VAPWR}
N -590 -270 -560 -270 {
lab=VDPWR}
N -590 -290 -560 -290 {
lab=VAPWR}
N -620 -150 -620 -60 {
lab=GND}
N -620 -150 -560 -150 {
lab=GND}
N -620 -130 -560 -130 {
lab=GND}
N -620 -100 -560 -100 {
lab=GND}
N -360 -230 -280 -230 {
lab=VAPWR}
N -360 -190 -320 -190 {
lab=VAPWR}
N -320 -230 -320 -190 {
lab=VAPWR}
N -360 -210 -320 -210 {
lab=VAPWR}
N -760 -290 -760 -230 {
lab=vbias}
N -760 -230 -560 -230 {
lab=vbias}
N -700 -390 -700 -350 {
lab=GND}
N -760 -390 -700 -390 {
lab=GND}
N -760 -390 -760 -350 {
lab=GND}
N 160 -160 190 -160 {
lab=vbias}
N -100 -10 -100 10 {
lab=Vcm}
N -100 10 -100 30 {
lab=Vcm}
N 20 -210 190 -210 {
lab=Vcm}
N -100 -230 190 -230 {
lab=VIN}
N 160 -140 190 -140 {
lab=ctrl_tail[1:0]}
N 160 -120 190 -120 {
lab=ctrl_diode}
N -750 570 -750 590 {
lab=ctrl_tail[1]}
N -650 570 -650 590 {
lab=ctrl_tail[0]}
N -550 570 -550 590 {
lab=ctrl_diode}
N -100 -160 -100 -70 {
lab=VIN}
N 390 -230 470 -230 {
lab=Vout}
N 470 -80 470 -60 {
lab=GND}
N -100 -230 -100 -160 {
lab=VIN}
N 560 -180 640 -180 {
lab=Vcm}
N 470 -180 500 -180 {
lab=Vout}
N -100 10 -40 10 {
lab=Vcm}
N 470 -230 470 -140 {
lab=Vout}
C {devices/gnd.sym} 190 -50 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -750 340 0 0 {name=VAPWR value=3.3}
C {devices/vsource.sym} -670 340 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} -750 370 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -670 370 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -750 250 1 0 {name=p1 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -670 250 1 0 {name=p2 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 160 -300 0 0 {name=p3 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 160 -280 0 0 {name=p4 sig_type=std_logic lab=VDPWR}
C {mirror_n.sym} -510 -230 0 0 {name=x2}
C {devices/lab_pin.sym} -590 -290 0 0 {name=p5 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -590 -270 0 0 {name=p6 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} -620 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -280 -230 0 1 {name=p7 sig_type=std_logic lab=VAPWR}
C {devices/isource.sym} -760 -320 0 0 {name=I0 value=100u}
C {devices/gnd.sym} -700 -350 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -760 -230 0 0 {name=p8 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 160 -160 0 0 {name=p9 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} -100 60 0 0 {name=VCM value=2}
C {devices/gnd.sym} -100 90 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 160 -140 0 0 {name=p11 sig_type=std_logic lab=ctrl_tail[1:0]}
C {devices/lab_pin.sym} 160 -120 0 0 {name=p12 sig_type=std_logic lab=ctrl_diode}
C {devices/vsource.sym} -750 620 0 0 {name=VCT1 value=1.8}
C {devices/gnd.sym} -750 650 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -650 620 0 0 {name=VCT0 value=1.8}
C {devices/gnd.sym} -650 650 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -750 570 3 1 {name=p13 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} -650 570 3 1 {name=p14 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/vsource.sym} -550 620 0 0 {name=VCD value=0}
C {devices/gnd.sym} -550 650 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -550 570 3 1 {name=p15 sig_type=std_logic lab=ctrl_diode}
C {devices/vsource.sym} -100 -40 0 0 {name=VIN value="AC 1"}
C {devices/ind.sym} 530 -180 1 0 {name=L6
m=1
value=1T
footprint=1206
device=inductor}
C {sky130_fd_pr/corner.sym} 790 -430 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 790 -240 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* OTA Loop Stability Test
*****************************************
* this test steps the digital control value across full range
* and plots the current as a function of output voltage
*****************************************
.control
   save all
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   alter VCM 1.5
   alter VCT1 0
   alter VCT0 0
   alter VCD 0
   repeat 2
      repeat 2
         ac dec 51 10k 1G
         alter VCT0 1.8
      end
      alter VCT1 1.8
      alter VCT0 0
   end
   plot vdb(ac1.v(Vout)) vdb(ac2.v(Vout)) vdb(ac3.v(Vout)) vdb(ac4.v(Vout))
   plot cph(ac1.v(Vout))/PI*180-180 cph(ac2.v(Vout))/PI*180-180 cph(ac3.v(Vout))/PI*180-180 cph(ac4.v(Vout))/PI*180-180
.endc
"}
C {devices/lab_pin.sym} 470 -230 0 1 {name=p10 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -40 10 0 1 {name=p18 sig_type=std_logic lab=Vcm}
C {devices/capa.sym} 470 -110 2 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 470 -60 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 640 -180 0 1 {name=p20 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 20 -210 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} -100 -230 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {ota_n.sym} -50 -200 0 0 {name=x1}

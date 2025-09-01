v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -90 190 -50 {
lab=GND}
N -510 250 -510 310 {
lab=VDPWR}
N -590 250 -590 310 {
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
N 20 -210 190 -210 {
lab=VIN}
N -100 -230 190 -230 {
lab=VIN}
N 160 -140 190 -140 {
lab=ctrl_tail[1:0]}
N 160 -120 190 -120 {
lab=ctrl_mode[1:0]}
N -590 570 -590 590 {
lab=ctrl_tail[1]}
N -490 570 -490 590 {
lab=ctrl_tail[0]}
N -390 570 -390 590 {
lab=ctrl_mode[1]}
N 460 -210 460 -190 {
lab=Vout}
N 460 -130 460 -110 {
lab=GND}
N -110 -160 -110 -110 {
lab=VIN}
N -110 -50 -110 0 {
lab=Vcm}
N 470 -210 540 -210 {
lab=Vout}
N 600 -210 640 -210 {
lab=Vcm}
N 20 -230 20 -210 {
lab=VIN}
N -310 570 -310 590 {
lab=ctrl_mode[0]}
N 460 -210 470 -210 {lab=Vout}
N 430 -210 460 -210 {lab=Vout}
N 390 -210 430 -210 {lab=Vout}
C {ota_n.sym} -50 -200 0 0 {name=x1}
C {devices/gnd.sym} 190 -50 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} -590 340 0 0 {name=VAPWR value=3.3}
C {devices/vsource.sym} -510 340 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} -590 370 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -510 370 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -590 250 1 0 {name=p1 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -510 250 1 0 {name=p2 sig_type=std_logic lab=VDPWR}
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
C {devices/vsource.sym} -110 30 0 0 {name=VCM value=2}
C {devices/gnd.sym} -110 60 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 160 -140 0 0 {name=p11 sig_type=std_logic lab=ctrl_tail[1:0]}
C {devices/lab_pin.sym} 160 -120 0 0 {name=p12 sig_type=std_logic lab=ctrl_mode[1:0]}
C {devices/vsource.sym} -590 620 0 0 {name=VCT1 value=1.8}
C {devices/gnd.sym} -590 650 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -490 620 0 0 {name=VCT0 value=1.8}
C {devices/gnd.sym} -490 650 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -590 570 3 1 {name=p13 sig_type=std_logic lab=ctrl_tail[1]}
C {devices/lab_pin.sym} -490 570 3 1 {name=p14 sig_type=std_logic lab=ctrl_tail[0]}
C {devices/vsource.sym} -390 620 0 0 {name=VCD1 value=0}
C {devices/gnd.sym} -390 650 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -390 570 3 1 {name=p15 sig_type=std_logic lab=ctrl_mode[1]}
C {devices/vsource.sym} -110 -80 0 0 {name=VIN value="AC 1"}
C {devices/lab_pin.sym} -110 -160 0 1 {name=p16 sig_type=std_logic lab=VIN}
C {devices/ind.sym} 570 -210 1 0 {name=L6
m=1
value=1T
footprint=1206
device=inductor}
C {sky130_fd_pr/corner.sym} 790 -430 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 790 -240 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* OTA CMRR Test
*****************************************
* plots the CMR of the 5T OTA for various tail currents
*****************************************
.control
   save all
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   alter VCM 2
   alter VCT1 0
   alter VCT0 0
   repeat 2
      repeat 2
         ac dec 51 10k 10G
         alter VCT0 1.8
      end
      alter VCT1 1.8
      alter VCT0 0
   end
   plot vdb(ac1.v(Vout)) vdb(ac2.v(Vout)) vdb(ac3.v(Vout)) vdb(ac4.v(Vout))
*   plot ph(ac1.v(Vout))/PI*180 ph(ac2.v(Vout))/PI*180 ph(ac3.v(Vout))/PI*180 ph(ac4.v(Vout))/PI*180
.endc
"}
C {devices/lab_pin.sym} 460 -210 3 1 {name=p10 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} -110 -20 0 1 {name=p18 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} -100 -230 0 0 {name=p19 sig_type=std_logic lab=VIN}
C {devices/capa.sym} 460 -160 2 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 460 -110 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 640 -210 0 1 {name=p17 sig_type=std_logic lab=Vcm}
C {devices/vsource.sym} -310 620 0 0 {name=VCD0 value=1.8}
C {devices/gnd.sym} -310 650 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -310 570 3 1 {name=p20 sig_type=std_logic lab=ctrl_mode[0]}

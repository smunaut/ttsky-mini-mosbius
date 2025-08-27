v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -110 110 -60 {
lab=GND}
N -260 -300 -260 -120 {
lab=VAPWR}
N -260 -300 110 -300 {
lab=VAPWR}
N -180 -280 110 -280 {
lab=VDPWR}
N -180 -280 -180 -120 {
lab=VDPWR}
N -60 -240 -60 -120 {
lab=Ibias}
N -60 -240 110 -240 {
lab=Ibias}
N 310 -240 620 -240 {
lab=VOUTF}
N 620 -240 620 -120 {
lab=VOUTF}
N 540 -220 540 -120 {
lab=VOUT1}
N 310 -220 540 -220 {
lab=VOUT1}
N 310 -200 460 -200 {
lab=VOUT2}
N 460 -200 460 -120 {
lab=VOUT2}
N -160 140 -160 160 {
lab=ictrl_1[1]}
N -60 140 -60 160 {
lab=ictrl_1[0]}
N -160 380 -160 400 {
lab=ictrl_2[1]}
N -60 380 -60 400 {
lab=ictrl_2[0]}
N 80 -160 110 -160 {
lab=ictrl_1[1:0]}
N 80 -140 110 -140 {
lab=ictrl_2[1:0]}
N 620 -120 620 80 {
lab=VOUTF}
N 540 -120 540 -20 {
lab=VOUT1}
N 360 -110 420 -110 {
lab=#net1}
N 360 -10 500 -10 {
lab=#net1}
N 360 90 580 90 {
lab=#net1}
N 360 -110 360 90 {
lab=#net1}
C {mirror_n.sym} 160 -240 0 0 {name=x1}
C {devices/vsource.sym} -260 -90 0 0 {name=VAPWR value=3.3}
C {devices/vsource.sym} -180 -90 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} -260 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -180 -60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 110 -60 0 0 {name=l3 lab=GND}
C {devices/isource.sym} -60 -90 2 0 {name=Ibias value=100u}
C {devices/gnd.sym} -60 -60 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 360 120 0 0 {name=VOUT value=3.3}
C {devices/gnd.sym} 360 150 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -260 -300 0 0 {name=p1 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} -180 -280 0 0 {name=p2 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 620 -240 0 1 {name=p4 sig_type=std_logic lab=VOUTF}
C {devices/lab_pin.sym} 540 -220 0 1 {name=p5 sig_type=std_logic lab=VOUT1}
C {devices/lab_pin.sym} 460 -200 0 1 {name=p6 sig_type=std_logic lab=VOUT2}
C {devices/vsource.sym} -160 190 0 0 {name=VC1_1 value=1.8}
C {devices/gnd.sym} -160 220 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} -60 190 0 0 {name=VC1_0 value=1.8}
C {devices/gnd.sym} -60 220 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -60 -240 0 0 {name=p7 sig_type=std_logic lab=Ibias}
C {devices/lab_pin.sym} -160 140 3 1 {name=p9 sig_type=std_logic lab=ictrl_1[1]}
C {devices/lab_pin.sym} -60 140 3 1 {name=p10 sig_type=std_logic lab=ictrl_1[0]}
C {devices/vsource.sym} -160 430 0 0 {name=VC2_1 value=1.8}
C {devices/gnd.sym} -160 460 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -60 430 0 0 {name=VC2_0 value=1.8}
C {devices/gnd.sym} -60 460 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -160 380 3 1 {name=p12 sig_type=std_logic lab=ictrl_2[1]}
C {devices/lab_pin.sym} -60 380 3 1 {name=p13 sig_type=std_logic lab=ictrl_2[0]}
C {devices/lab_pin.sym} 80 -160 0 0 {name=p14 sig_type=std_logic lab=ictrl_1[1:0]}
C {devices/lab_pin.sym} 80 -140 0 0 {name=p15 sig_type=std_logic lab=ictrl_2[1:0]}
C {sky130_fd_pr/corner.sym} 890 -480 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 890 -300 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* Vout DC Sweep Test
*****************************************
* With a fixed input current, sweeps the output voltage
* and plots the output voltage for (1) programmable mirror 1 across codes
* (2) programmable mirror 2 across codes (3) programmable mirror 1 vs fixed output
*****************************************
.control
   save all
   alter vc1_1 0
   alter vc1_0 0
   alter vc2_1 0
   alter vc2_0 0
   set temp = 27
   set wr_singlescale
   set wr_vecnames
   set output_str = 'tb_mirror_n.raw' ; dont change this. handled in python
   * the below 3x nested loop is required to step ctrl[1:0] from 0 to 3
   * control for idac1 and idac2 are swept together
   repeat 2
      repeat 2
         dc Vout 0 3.3 0.01
         alter vc1_0 1.8
         alter vc2_0 1.8
      end
      alter vc1_1 1.8
      alter vc1_0 0
      alter vc2_1 1.8
      alter vc2_0 0
   end
   plot (-dc1.i(eout1)) (-dc2.i(eout1)) (-dc3.i(eout1)) (-dc4.i(eout1)) ; output current of idac1
   plot (-dc1.i(eout2)) (-dc2.i(eout2)) (-dc3.i(eout2)) (-dc4.i(eout2)); output current of idac2
   plot (-dc1.i(eout1)) (-dc2.i(eoutf)) ; comparing transmission gate output vs ungated output

*   wrdata $output_str (-dc1.i(eout1)) (-dc2.i(eout1)) (-dc3.i(eout1)) (-dc4.i(eout1)) (-dc1.i(eoutf)) (-dc1.i(eout2)) (-dc2.i(eout2)) (-dc3.i(eout2)) (-dc4.i(eout2))
.endc
"}
C {devices/vcvs.sym} 460 -90 0 0 {name=Eout2 value=1}
C {devices/vcvs.sym} 540 10 0 0 {name=Eout1 value=1}
C {devices/vcvs.sym} 620 110 0 0 {name=EoutF value=1}
C {devices/gnd.sym} 460 -60 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 420 -70 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} 500 30 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 540 40 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 580 130 0 0 {name=l18 lab=GND}
C {devices/gnd.sym} 620 140 0 0 {name=l19 lab=GND}

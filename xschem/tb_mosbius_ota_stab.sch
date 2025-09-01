v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 1360 -1270 1360 -590 {}
L 4 1360 -1270 2460 -1270 {}
L 4 1360 -590 2460 -590 {}
L 4 2460 -1270 2460 -590 {}
T {10pF nominal load.
6.5pF load equalizes mosbius OTA and reference OTA} 590 310 0 0 0.4 0.4 {}
T {REFERENCE OTA} 1390 -1240 0 0 0.4 0.4 {}
N 100 100 100 120 {
lab=VAPWR}
N 200 100 200 120 {
lab=VDPWR}
N 280 -1230 300 -1230 {
lab=VDPWR}
N 280 -1250 300 -1250 {
lab=VAPWR}
N 280 -260 280 -240 {
lab=GND}
N 280 -260 300 -260 {
lab=GND}
N 300 100 300 120 {
lab=Ibias}
N 660 -970 700 -970 {
lab=GND}
N 660 -950 700 -950 {
lab=GND}
N 660 -930 700 -930 {
lab=GND}
N 660 -910 700 -910 {
lab=GND}
N 660 -890 700 -890 {
lab=GND}
N 660 -870 700 -870 {
lab=GND}
N 660 -850 700 -850 {
lab=GND}
N 660 -830 700 -830 {
lab=GND}
N 660 -810 700 -810 {
lab=GND}
N 660 -790 700 -790 {
lab=GND}
N 660 -770 700 -770 {
lab=GND}
N 660 -750 700 -750 {
lab=GND}
N 660 -730 700 -730 {
lab=GND}
N 660 -710 700 -710 {
lab=GND}
N 660 -690 700 -690 {
lab=GND}
N 660 -670 700 -670 {
lab=GND}
N 700 -970 700 -640 {
lab=GND}
N 680 240 680 260 {
lab=GND}
N 680 160 680 180 {
lab=vcm}
N 680 80 680 100 {
lab=vin}
N 840 80 840 140 {
lab=vout}
N 840 200 840 260 {
lab=GND}
N 680 170 760 170 {
lab=vcm}
N 760 80 760 170 {
lab=vcm}
N 840 120 900 120 {
lab=vout}
N 960 120 1000 120 {
lab=vcm}
N 1000 120 1000 300 {
lab=vcm}
N 760 300 1000 300 {
lab=vcm}
N 760 170 760 300 {
lab=vcm}
N 660 -1010 740 -1010 {
lab=g,v}
N 150 380 150 400 {
lab=GND}
N 150 280 150 320 {
lab=g}
N 270 280 270 320 {
lab=v}
N 270 380 270 400 {
lab=VDPWR}
N 1850 -1050 1870 -1050 {
lab=VDPWR}
N 1850 -1070 1870 -1070 {
lab=VAPWR}
N 1850 -860 1850 -840 {
lab=GND}
N 1850 -860 1870 -860 {
lab=GND}
N 1450 -970 1470 -970 {
lab=VDPWR}
N 1450 -990 1470 -990 {
lab=VAPWR}
N 1450 -800 1450 -780 {
lab=GND}
N 1450 -800 1470 -800 {
lab=GND}
N 1450 -830 1470 -830 {
lab=GND}
N 1450 -830 1450 -800 {
lab=GND}
N 1450 -850 1470 -850 {
lab=GND}
N 1450 -850 1450 -830 {
lab=GND}
N 1690 -910 1690 -870 {
lab=GND}
N 1670 -910 1690 -910 {
lab=GND}
N 1670 -890 1690 -890 {
lab=GND}
N 380 100 380 120 {
lab=Ibias_ref}
N 1450 -930 1470 -930 {
lab=Ibias_ref}
N 1850 -890 1870 -890 {
lab=g,v}
N 1810 -910 1870 -910 {
lab=g,v}
N 1830 -1000 1870 -1000 {
lab=vin}
N 1830 -980 1870 -980 {
lab=vcm}
N 2150 -1040 2150 -980 {
lab=vout_ref}
N 2150 -920 2150 -860 {
lab=GND}
N 2370 -1000 2410 -1000 {
lab=vcm}
N 1810 -930 1870 -930 {
lab=Ibias_ref}
N 2150 -1000 2310 -1000 {
lab=vout_ref}
N 2250 -920 2250 -860 {
lab=GND}
N 2250 -1000 2250 -980 {
lab=vout_ref}
N 1670 -930 1690 -930 {
lab=GND}
N 1690 -930 1690 -910 {
lab=GND}
N -350 -1010 -350 -1000 {
lab=GND}
N -350 -1010 -330 -1010 {
lab=GND}
N -490 -1150 -330 -1150 {
lab=vout,vcm,g,g,vin}
N -390 -1050 -330 -1050 {
lab=Ibias}
N 100 -1050 120 -1050 {
lab=#net1}
N 120 -1110 120 -1050 {
lab=#net1}
N 120 -1110 300 -1110 {
lab=#net1}
N -350 -1110 -350 -1100 {
lab=GND}
N -350 -1110 -330 -1110 {
lab=GND}
N 240 -1150 300 -1150 {lab=bus_A[6:1]}
N 240 -1130 300 -1130 {lab=bus_B[6:1]}
N -30 -1050 100 -1050 {lab=#net1}
N -30 -1150 0 -1150 {lab=bus_B[4],bus_B[2],bus_A[5],bus_A[3],bus_A[1]}
N 0 -1190 0 -1150 {lab=bus_B[4],bus_B[2],bus_A[5],bus_A[3],bus_A[1]}
N 140 -420 300 -420 {
lab=g,g,g,v,g,g}
N 140 -440 300 -440 {
lab=g,g,g,v,g,g}
N 140 -460 300 -460 {
lab=g,g,g,v,g,g}
N 140 -480 300 -480 {
lab=g,g,g,v,g,g}
N 140 -500 300 -500 {
lab=v,g,g}
N 140 -520 300 -520 {
lab=g,g,g,v,g,g}
N 140 -540 300 -540 {
lab=g,g,g,v,g,g}
N 140 -560 300 -560 {
lab=g,g,g,v,g,g}
N 140 -580 300 -580 {
lab=v,g,g}
N 140 -600 300 -600 {
lab=g,g,g,v,g,g}
N 140 -620 300 -620 {
lab=g,g,g,v,g,g}
N 140 -640 300 -640 {
lab=g,g,v,g,g,g}
N 140 -660 300 -660 {
lab=g,v,g}
N 140 -750 300 -750 {
lab=g,g,g,v,g,g}
N 140 -770 300 -770 {
lab=g,g,g,v,g,g}
N 140 -790 300 -790 {
lab=g,g,g,v,g,g}
N 140 -810 300 -810 {
lab=g,g,g,v,g,g}
N 140 -830 300 -830 {
lab=g,g,g,v,g,g}
N 140 -850 300 -850 {
lab=g,g,g,v,g,g}
N 140 -870 300 -870 {
lab=g,g,g,v,g,g}
N 140 -910 300 -910 {
lab=g,g,g,v,g,g}
N 140 -950 300 -950 {
lab=g,g,g,v,g,g}
N 140 -970 300 -970 {
lab=g,g,g,v,g,g}
N 140 -890 300 -890 {
lab=v,g,g}
N 140 -930 300 -930 {
lab=v,g,g}
N 140 -330 300 -330 {
lab=v,v,g,v,g,g}
N 140 -1010 300 -1010 {
lab=g,g,v}
N 140 -990 300 -990 {
lab=g,g,g,g,g,g}
N 140 -310 300 -310 {lab=g,g,g,v,v,v}
N 140 -400 300 -400 {lab=g,g,g,v,g,g}
N 660 -990 740 -990 {lab=g,v}
N 1810 -890 1850 -890 {lab=g,v}
N 2070 -980 2110 -980 {lab=vout_ref}
N 2110 -1000 2110 -980 {lab=vout_ref}
N 2110 -1000 2150 -1000 {lab=vout_ref}
C {mosbius.sym} 300 -240 0 0 {name=x1}
C {devices/vsource.sym} 100 150 0 0 {name=VAPWR value=3.3}
C {devices/gnd.sym} 100 180 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 100 100 1 0 {name=p2 sig_type=std_logic lab=VAPWR}
C {devices/vsource.sym} 200 150 0 0 {name=VDPWR value=1.8}
C {devices/gnd.sym} 200 180 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 200 100 1 0 {name=p3 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 280 -1250 0 0 {name=p4 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 280 -1230 0 0 {name=p5 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} 280 -240 0 0 {name=l3 lab=GND}
C {devices/isource.sym} 300 150 2 1 {name=Ibias value=100u}
C {devices/gnd.sym} 300 180 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 300 100 1 0 {name=p1 sig_type=std_logic lab=Ibias}
C {devices/gnd.sym} 700 -640 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 680 130 0 0 {name=VSIG value="AC 1"}
C {devices/vsource.sym} 680 210 0 0 {name=VCM value=1.8}
C {devices/gnd.sym} 680 260 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 680 80 1 0 {name=p10 sig_type=std_logic lab=vin}
C {devices/capa.sym} 840 170 0 0 {name=C1
m=1
value=10p ;10pF
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 840 260 0 0 {name=l19 lab=GND}
C {devices/lab_pin.sym} 760 80 1 0 {name=p28 sig_type=std_logic lab=vcm}
C {devices/ind.sym} 930 120 1 0 {name=L23
m=1
value=1T
footprint=1206
device=inductor}
C {sky130_fd_pr/corner.sym} 1410 -370 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 1370 -120 0 0 {name=NGSPICE only_toplevel=true value=
"
*****************************************
* MOSBIUS: 5T OTA Loop Stability Test
*****************************************
* 5T-OTA in voltage follower configuration,
* plots bode plot, and calculates bandwidth and phase margin, 
* compared to reference OTA
*****************************************
* try tuning ctrl_otan_tail[1:0] for variable tail current
*****************************************
* BUS1: [A]  OTA INP   [B] n.a.
* BUS2: [A]  n.a.      [B] OTA INM
* BUS3: [AB] n.a.
* BUS4: [A]  n.a.      [B] OTA OUT
* BUS5: [AB] n.a.
* BUS6: [AB] n.a
*****************************************
.control
   save all
   set temp = 27
   ac dec 51 10k 9G
   let vout_mag = mag(v(vout))                 ; loop gain
   let vout_ref_mag = mag(v(vout_ref))         ; loop gain of reference OTA
   let phase = -180-cph(vout)/PI*180           ; phase margin
   let phase_ref = -180-cph(vout_ref)/PI*180   ; phase margin of reference OTA
   meas ac f_bw WHEN vout_mag=1                ; calc bandwidth
   meas ac f_bw_ref WHEN vout_ref_mag=1        ; calc bandwidth of reference OTA
   meas ac pm FIND phase AT=f_bw               ; calc phase margin
   meas ac pm_ref FIND phase_ref AT=f_bw_ref   ; calc phase margin of reference OTA
   plot vdb(vout) vdb(vout_ref)                ; plot loop gain
   plot cph(vout)/PI*180 cph(vout_ref)/PI*180  ; plot phase
.endc
"}
C {devices/gnd.sym} 150 400 0 0 {name=l10 lab=GND}
C {devices/res.sym} 150 350 0 0 {name=R13
value=1u
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 150 280 0 0 {name=p17 sig_type=std_logic lab=g}
C {devices/res.sym} 270 350 0 0 {name=R14
value=1u
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 270 400 3 0 {name=p18 sig_type=std_logic lab=VDPWR}
C {devices/lab_pin.sym} 270 280 0 0 {name=p19 sig_type=std_logic lab=v}
C {devices/lab_wire.sym} 740 -1010 0 0 {name=p14 sig_type=std_logic lab=g,v}
C {devices/lab_pin.sym} 840 80 1 0 {name=p8 sig_type=std_logic lab=vout}
C {ota_n.sym} 1630 -970 0 0 {name=x4}
C {devices/lab_pin.sym} 1850 -1070 0 0 {name=p13 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 1850 -1050 0 0 {name=p23 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} 1850 -840 0 0 {name=l7 lab=GND}
C {mirror_n.sym} 1520 -930 0 0 {name=x3}
C {devices/lab_pin.sym} 1450 -990 0 0 {name=p26 sig_type=std_logic lab=VAPWR}
C {devices/lab_pin.sym} 1450 -970 0 0 {name=p29 sig_type=std_logic lab=VDPWR}
C {devices/gnd.sym} 1450 -780 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 1690 -870 0 0 {name=l11 lab=GND}
C {devices/isource.sym} 380 150 2 1 {name=Ibias1 value=100u}
C {devices/gnd.sym} 380 180 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 380 100 1 0 {name=p30 sig_type=std_logic lab=Ibias_ref}
C {devices/lab_pin.sym} 1450 -930 0 0 {name=p31 sig_type=std_logic lab=Ibias_ref}
C {devices/lab_pin.sym} 1830 -1000 2 1 {name=p12 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 1830 -980 2 1 {name=p32 sig_type=std_logic lab=vcm}
C {devices/capa.sym} 2150 -950 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2150 -860 0 0 {name=l6 lab=GND}
C {devices/ind.sym} 2340 -1000 1 0 {name=L13
m=1
value=1T
footprint=1206
device=inductor}
C {devices/lab_pin.sym} 2150 -1040 1 0 {name=p33 sig_type=std_logic lab=vout_ref}
C {devices/lab_pin.sym} 2410 -1000 2 0 {name=p34 sig_type=std_logic lab=vcm}
C {devices/lab_wire.sym} 1830 -910 0 0 {name=p35 sig_type=std_logic lab=g,v}
C {devices/lab_wire.sym} 1830 -930 0 0 {name=p36 sig_type=std_logic lab=Ibias_ref}
C {devices/capa.sym} 2250 -950 0 0 {name=C3
m=1
value=11p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 2250 -860 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} -350 -1000 0 0 {name=l18 lab=GND}
C {pad_model.sym} -180 -1130 0 0 {name=x2[5:1]}
C {devices/lab_wire.sym} -350 -1150 0 0 {name=p9 sig_type=std_logic lab=vout,vcm,g,g,vin}
C {pad_model.sym} -180 -1030 0 0 {name=x2}
C {devices/lab_pin.sym} -390 -1050 0 0 {name=p7 sig_type=std_logic lab=Ibias}
C {devices/gnd.sym} -350 -1100 0 0 {name=l20 lab=GND}
C {devices/lab_wire.sym} 240 -1150 0 0 {name=p11 sig_type=std_logic lab=bus_A[6:1]}
C {devices/lab_wire.sym} 240 -1130 0 0 {name=p62 sig_type=std_logic lab=bus_B[6:1]}
C {devices/lab_wire.sym} 0 -1190 0 0 {name=p64 sig_type=std_logic lab=bus_B[4],bus_B[2],bus_A[5],bus_A[3],bus_A[1]}
C {devices/lab_wire.sym} 230 -500 0 0 {name=p27 sig_type=std_logic lab=v,g,g}
C {devices/lab_wire.sym} 230 -580 0 0 {name=p41 sig_type=std_logic lab=v,g,g}
C {devices/lab_wire.sym} 230 -640 0 0 {name=p44 sig_type=std_logic lab=g,g,v,g,g,g}
C {devices/lab_wire.sym} 230 -660 0 0 {name=p45 sig_type=std_logic lab=g,v,g}
C {devices/lab_wire.sym} 230 -890 0 0 {name=p57 sig_type=std_logic lab=v,g,g}
C {devices/lab_wire.sym} 230 -930 0 0 {name=p58 sig_type=std_logic lab=v,g,g}
C {devices/lab_wire.sym} 230 -330 0 0 {name=p25 sig_type=std_logic lab=v,v,g,v,g,g}
C {devices/lab_wire.sym} 230 -1010 0 0 {name=p15 sig_type=std_logic lab=g,g,v}
C {devices/lab_wire.sym} 230 -310 0 0 {name=p65 sig_type=std_logic lab=g,g,g,v,v,v}
C {devices/lab_wire.sym} 230 -990 0 0 {name=p55 sig_type=std_logic lab=g,g,g,g,g,g}
C {devices/lab_wire.sym} 230 -970 0 0 {name=p46 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -850 0 0 {name=p50 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 740 -990 0 0 {name=p37 sig_type=std_logic lab=g,v}
C {devices/lab_wire.sym} 1830 -890 0 0 {name=p38 sig_type=std_logic lab=g,v}
C {devices/lab_wire.sym} 230 -950 0 0 {name=p47 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -910 0 0 {name=p48 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -870 0 0 {name=p49 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -830 0 0 {name=p51 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -810 0 0 {name=p52 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -790 0 0 {name=p53 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -770 0 0 {name=p54 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -750 0 0 {name=p56 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -620 0 0 {name=p6 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -600 0 0 {name=p16 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -560 0 0 {name=p20 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -540 0 0 {name=p21 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -520 0 0 {name=p22 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -480 0 0 {name=p24 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -460 0 0 {name=p39 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -440 0 0 {name=p40 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -420 0 0 {name=p42 sig_type=std_logic lab=g,g,g,v,g,g}
C {devices/lab_wire.sym} 230 -400 0 0 {name=p43 sig_type=std_logic lab=g,g,g,v,g,g}

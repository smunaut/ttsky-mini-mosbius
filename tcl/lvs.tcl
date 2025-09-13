set layout [readnet spice $project.lvs.spice]
set schem  [readnet verilog /dev/null]
readnet spice $::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice $schem
readnet spice   ../xschem/simulation/mosbius.spice $schem
readnet verilog ../src/ctrl_top.synth.v            $schem
readnet verilog ../src/project.v                   $schem
::netgen::format 60
lvs "$layout $project" "$schem $project" $::env(PDK_ROOT)/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs.report -blackbox

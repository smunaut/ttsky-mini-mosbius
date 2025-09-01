#
# Makefile to pre-process verilog sources for LVS
#

ELABORATE_TGT=\
	ctrl_top \
	$(NULL)

ELABORTATE_FILES=$(addsuffix .synth.v, $(ELABORATE_TGT))

all: $(ELABORTATE_FILES)

# Dependencies
ctrl_top.v: \
	ctrl_asw.decap.v \
	ctrl_dev_f.decap.v \
	ctrl_dev_p.decap.v \
	ctrl_dev_b1.decap.v \
	ctrl_dev_e1.decap.v \
	ctrl_dev_b2.decap.v \
	ctrl_dev_m2.decap.v \
	ctrl_dev_e2.decap.v \
	$(NULL)

# Decap
ctrl_asw.decap.v:
	../py/gen_asw_ctrl.py decap > $@

ctrl_dev_f.decap.v:
	../py/gen_dev_ctrl.py decap first 1 > $@

ctrl_dev_p.decap.v:
	../py/gen_dev_ctrl.py decap pass 1 > $@

ctrl_dev_b1.decap.v:
	../py/gen_dev_ctrl.py decap begin 1 > $@

ctrl_dev_e1.decap.v:
	../py/gen_dev_ctrl.py decap end 1 > $@

ctrl_dev_b2.decap.v:
	../py/gen_dev_ctrl.py decap begin 2 > $@

ctrl_dev_m2.decap.v:
	../py/gen_dev_ctrl.py decap mid 2 > $@

ctrl_dev_e2.decap.v:
	../py/gen_dev_ctrl.py decap end 2 > $@

# Elaborate
%.synth.v: %.v
	yosys -p "read_verilog $*.v; hierarchy -top $* -check; write_verilog -noattr $*.synth.v"

# Cleanup
clean:
	rm -f *.synth.v *.decap.v

.PHONY: clean

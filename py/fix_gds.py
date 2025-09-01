#!/usr/bin/env python3

import sys

import gdstk

CELLS = [
	'dev_ctrl_b1',
	'dev_ctrl_e1',
	'dev_ctrl_b2',
	'dev_ctrl_m2',
	'dev_ctrl_e2',
]

PSDM_LY = 94
PSDM_DT = 20

def main(argv0, fn_gds_in, fn_gds_out):

	lib = gdstk.read_gds(fn_gds_in)

	for cell in lib.cells:
		if cell.name not in CELLS:
			continue

		to_rem = [ p for p in cell.polygons if p.layer == PSDM_LY and p.datatype == PSDM_DT ]
		cell.remove(*to_rem)

	lib.write_gds(fn_gds_out)


if __name__ == '__main__':
	main(*sys.argv)

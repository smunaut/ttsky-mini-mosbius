#!/usr/bin/env python3

#
# Generate Input Control block
#
# Copyright (c) 2025 Sylvain Munaut
# SPDX-License-Identifier: Apache-2.0
#

import sys
from collections import namedtuple

from common import *


def main(argv0, op_mode, ctrl_type, ctrl_cnt):
	# Arguments
	if op_mode not in ['decap', 'magic']:
		raise RuntimeError('Invalid operation mode')

	if ctrl_type not in ['begin', 'mid', 'end', 'pass', 'first']:
		raise RuntimeError('Invalid type')

	if ctrl_cnt not in ['1', '2']:
		raise RuntimeError('Invalid count')

	ctrl_cnt = int(ctrl_cnt)

	# Base grid
	grid = Grid(40, 2)

	# Handle passthrough specially
	if ctrl_type == 'pass':
		# Taps
		grid.add_tap_col(13)
		grid.add_tap_col(33)

	# And also the 'first'
	elif ctrl_type == 'first':
		# Taps
		grid.add_tap_col( 1)
		grid.add_tap_col(23)
		grid.add_tap_col(39)

		# Input buffer
		grid.add_cell('buf_dat', CELLS['clkbuf_4'], (33, 0), 1)

		# Delay
		grid.add_cell('dly_dat', CELLS['clkdlybuf4s50_2'], (24, 0), 1)

	# Normal ones
	else:
		# Taps
		grid.add_tap(21, 0)

		# If we're at beginning:
		if ctrl_type == 'begin':
			# Clock/Reset/Enable buffer
			grid.add_cell('buf_clk', CELLS['clkbuf_4'], (34, 0), 1)
			grid.add_cell('buf_rst', CELLS['clkbuf_4'], (28, 0), 1)
			grid.add_cell('buf_ena', CELLS['clkbuf_4'], (22, 0), 1)
		else:
			# Use another tap
			grid.add_tap(39, 0)

		# Add the FF and AND buffers
		for i in range(ctrl_cnt):
			grid.add_cell(f'ff[{i:d}]',  CELLS['dfrtp_1'], (20-20*i, 1), 1)
			grid.add_cell(f'and[{i:d}]', CELLS['and2_2'],  (15- 6*i, 0), 1)

		# If we're at the end:
		if ctrl_type == 'end':
			grid.add_cell('dly_dat', CELLS['clkdlybuf4s50_2'], (0, 0), 1)
		else:
			# Use another tap
			grid.add_tap(0, 0)

	# Fill the rest
	grid.fill()

	# Outputs
	if op_mode == 'magic':
		# Generate main output
		print('\n'.join(grid.gen_script()))

		# Create power rails
		print('\n'.join(grid.gen_rail(   100, 1200, True)))
		print('\n'.join(grid.gen_rail(  1700, 1200, False)))

	elif op_mode == 'decap':
		print('\n'.join(grid.gen_decap()))

	# Pass through has no routing
	if ctrl_type == 'pass':
		return

	# Routing
	if op_mode == 'magic':
		r = Router()

		# Handle the 'first' type specially
		if ctrl_type == 'first':
			# For input just create via to m2
			r.start('li', (37, 0, 2))
			r.via_to('met1')
			r.via_to('met2')
			r.end()

			# Buffer -> Delay
			r.start('li', (33, 0, 2))
			r.via_to('met1')
			r.move_rel( (-1, 0, 0) )
			r.via_to('li')
			r.end()

			# Put delay output where it'll be expected
			r.start('li', (25, 0, 5))
			r.via_to('met1')
			r.move_to( (0, 0, 5) )
			r.end()

			# Generate script
			print('\n'.join(r.gen_script()))

			return

		# Input buffers for 'begin' type
		if ctrl_type == 'begin':
			# Create vias to m2
			for x in [26,32,38]:
				r.start('li', (x, 0, 2))
				r.via_to('met1')
				r.via_to('met2')
				r.end()

		# Clock connection
		if ctrl_type == 'begin':
			# Begin at the output of the buffer
			r.start('li', (34, 0, 2))
			r.via_to('met1')
			r.via_to('met2')
			r.move_rel( (0, 1, -2) )
			r.via_to('met1')

		else:
			# Begin on met1 on previous block
			r.start('met1', (74, 1, 0))

		for i in range(ctrl_cnt):
			r.move_to( (40-i*20, 1, 0) )
			r.push()
			r.via_to('met2')
			r.move_rel( (0, 0, 2) )
			r.via_to('met1')
			r.move_rel( (-1, 0, 0) )
			r.via_to('li')
			r.pop()

		# Reset connection
		if ctrl_type == 'begin':
			# Begin at the output of the buffer
			r.start('li', (28, 0, 2))
			r.via_to('met1')
			r.via_to('met2')
			r.move_rel( (0, 1, -1) )
			r.via_to('met1')

		else:
			# Begin on met1 on previous block
			r.start('met1', (64, 1, 1))

		r.move_to( (44-ctrl_cnt*20, 1, 1) )
		r.end()

		# "Enable" connection
		if ctrl_type == 'begin':
			# Begin at the output of buffer
			r.start('li', (22, 0, 2))
			r.via_to('met1')
			r.move_rel( (0, 0, -2) )

		else:
			# Begin on met1 on previous block
			r.start('met1', (58, 0, 0))

		for i in range(ctrl_cnt):
			r.move_to( (18 - i*6, 0, 0) )
			r.push()
			r.move_rel( (0, 0, 2) )
			r.via_to('li')
			r.pop()

		# FF output to AND2
		r.start('li', (20, 1, 5))
		r.via_to('met1')
		r.via_to('met2')
		r.move_rel( (0, -1, -3))
		r.via_to('met1')
		r.via_to('li')
		r.end()

		if ctrl_cnt == 2:
			r.start('li', ( 0, 1, 5))
			r.via_to('met1')
			r.move_rel( (14, 0, 0))
			r.via_to('met2')
			r.move_rel( (0, -1, -3))
			r.via_to('met1')
			r.via_to('li')
			r.end()

		# Data input
		r.start('met1', (40, 0, 5))
		r.move_rel( (-4, 0, 0))
		r.via_to('met2')
		r.move_rel( ( 0, 1, -2) )
		r.via_to('met1')
		r.via_to('li')
		r.end()

		# Data chaining ?
		if ctrl_cnt == 2:
			r.start('met1', (20, 1, 5))
			r.move_rel( (-2, 0,  0) )
			r.move_rel( ( 0, 0, -2) )
			r.move_rel( (-2, 0,  0) )
			r.via_to('li')
			r.end()

		# Data output
			# Start a route at the output of the last FF
		r.start('met1', (26-ctrl_cnt*6, 0, 2))
		r.move_rel( (0, 0, 3) )

		if ctrl_type == 'end':
			# Bring that route to the input
			r.move_to( (8, 0, 5) )
			r.move_rel( (0, 0, -3) )
			r.via_to('li')
			r.end()

			# Then for actual output, just prepare via
			r.start('li', (1, 0, 5))
			r.via_to('met1')
			r.move_to( (0, 0, 5) )
			r.end()

		else:
			# Bring that route to where it will be expected by the next block
			r.move_to( (0, 0, 5) )
			r.end()

		# Final Control outputs
		for i in range(ctrl_cnt):
			r.start('li', (16-i*6, 0, 3))
			r.via_to('met1')
			r.via_to('met2')
			r.move_rel( (0, 1, 0) )
			r.end()

		# Generate script
		print('\n'.join(r.gen_script()))


if __name__ == '__main__':
	main(*sys.argv)


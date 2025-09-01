#!/usr/bin/env python3

#
# Generate ASW Column Control block
#
# Copyright (c) 2025 Sylvain Munaut
# SPDX-License-Identifier: Apache-2.0
#

import sys
from collections import namedtuple

from common import *


# Operation mode
if len(sys.argv) != 2:
	raise RuntimeError('Need operation mode argument')

OP_MODE = sys.argv[1]

if OP_MODE not in ['decap', 'magic']:
	raise RuntimeError('Invalid operation mode')

# Base grid
grid = Grid(40, 6)

# Taps
grid.add_tap_col(29)

# Clock/Reset/Enable buffer
grid.add_cell('buf_clk', CELLS['clkbuf_4'],        (0, 5), 0)
grid.add_cell('buf_rst', CELLS['clkbuf_4'],        (0, 4), 0)
grid.add_cell('buf_ena', CELLS['clkbuf_4'],        (0, 3), 0)

# Input data delay
grid.add_cell('dly_dat', CELLS['clkdlybuf4s50_2'], (0, 0), 0)

# FFs + ANDs
for i in range(6):
	grid.add_cell(f'ff[{i:d}]', CELLS['dfrtp_1'], ( 9, i), 0)
	grid.add_cell(f'and[{i:d}]', CELLS['and2_2'], (30, i), 0)

# Fill the rest
grid.fill()

# Outputs
if OP_MODE == 'magic':
	# Generate main output
	#print('\n'.join(grid.gen_script()))

	# Create power rails
	#print('\n'.join(grid.gen_rail(   100, 1200, True)))
	#print('\n'.join(grid.gen_rail(  1700, 1200, False)))
	pass

elif OP_MODE == 'decap':
	print('\n'.join(grid.gen_decap()))


# Routing
if OP_MODE == 'magic':
	r = Router()

	# Clock input
	r.start('li', (1, 5, 2))
	r.via_to('met1')
	r.via_to('met2')
	r.end()

	# Clock distribution
	r.start('li', (4, 5, 3))
	r.via_to('met1')
	r.move_to( (9, 5, 3) )
	r.via_to('met2')

	for i in range(6):
		r.move_to( (9, 5-i, 3) )
		r.push()
		r.via_to('met1')
		r.via_to('li')
		r.pop()

	r.end()

	# Reset input
	r.start('li', (1, 4, 2))
	r.via_to('met1')
	r.via_to('met2')
	r.end()

	# Reset distribution
	r.start('li', (4, 4, 3))
	r.via_to('met1')
	r.move_to( (8, 4, 3) )
	r.via_to('met2')

	for i in range(6):
		r.move_to( (8, 5-i, 1) )
		r.push()
		r.via_to('met1')
		r.move_to( (17, 5-i, 1) )
		r.pop()

	# Enable input
	r.start('li', (1, 3, 2))
	r.via_to('met1')
	r.via_to('met2')
	r.end()

	# Enable distribution
	r.start('li', (4, 3, 3))
	r.via_to('met1')
	r.move_to( ( 4, 3, 0) )
	r.move_to( (32, 3, 0) )
	r.via_to('met2')

	for i in range(6):
		r.move_to( (32, 5-i, 2) )
		r.push()
		r.via_to('met1')
		r.via_to('li')
		r.pop()

	r.end()

	# Wire FF out to AND input
	for i in range(6):
		r.start('li', (28, 5-i, 3))
		r.via_to('met1')
		r.move_rel( (2, 0, 0) )
		r.via_to('li')
		r.end()

	# Input to delay for chaining
	r.start('li', (0, 0, 2))
	r.via_to('met1')
	r.move_rel( (-1, 0, 0) )
	r.end()

	# Delay to first FF
	r.start('li', (7 , 0, 4))
	r.via_to('met1')
	r.move_rel( (3, 0,  0) )
	r.move_rel( (0, 0, -1) )
	r.move_rel( (2, 0,  0) )
	r.via_to('li')
	r.end()

	# For the first 5 FF, wire output to input of next
	for i in range(5):
		r.start('met1', (28, i, 3))
		r.move_rel( (-12+i, 0, 0) )
		r.via_to('met2')
		r.move_rel( (0, 1, 0) )
		r.via_to('met1')
		r.move_to( (12, i+1, 3) )
		r.via_to('li')
		r.end()

	# Wire last FF output to edge for chaining
	r.start('met1', (30, 5, 3) )
	r.move_rel( (8, 0, 0) )
	r.via_to('met2')
	r.move_rel( (0, -5, -1) )
	r.via_to('met1')
	r.move_rel( (2, 0, 0) )
	r.end()

	print('\n'.join(r.gen_script()))

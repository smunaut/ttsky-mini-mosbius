#!/usr/bin/env python3

#
# Common code to generate magic script assembling/routing standard cells
#
# Copyright (c) 2025 Sylvain Munaut
# SPDX-License-Identifier: Apache-2.0
#


	# Cell sites
ROW_PITCH = 2720
COL_PITCH =  460

	# Horizontal tracks
TRACK_H_PITCH = 340
TRACK_H_OFFS  = 170
TRACK_H_WIDTH = 140

	# Vertical tracks
TRACK_V_PITCH = 460
TRACK_V_OFFS  = 230
TRACK_V_WIDTH = 140

VIAS = {
	('li', None, 'met1', 'h') : [
		( 'viali', -85,  -85,  85,  85 ),
		( 'met1', -145, -115, 145, 115 ),
	],
	('li', None, 'met1', 'v'): [
		( 'viali', -85,  -85,  85,  85 ),
		( 'met1', -115, -145, 115, 145 ),
	],
	('met1', 'h', 'met2', 'v'): [
		( 'met1', -160, -130, 160, 130 ),
		( 'm2c',  -130, -130, 130, 130 ),
		( 'met2', -130, -160, 130, 160 ),
	],
	('met1', 'v', 'met2', 'h'): [
		( 'met1', -130, -160, 130, 160 ),
		( 'm2c',  -130, -130, 130, 130 ),
		( 'met2', -160, -130, 160, 130 ),
	],
	('met1', 'h', 'met2', 'h'): [
		( 'met1', -160, -130, 160, 130 ),
		( 'm2c',  -130, -130, 130, 130 ),
		( 'met2', -160, -130, 160, 130 ),
	],
	('met1', 'v', 'met2', 'v'): [
		( 'met1', -130, -160, 130, 160 ),
		( 'm2c',  -130, -130, 130, 130 ),
		( 'met2', -130, -160, 130, 160 ),
	],
}

LAYERS = {
	'li'  : ( None, None ),
	'met1': ( 'h', 140 ),
	'met2': ( 'v', 140 ),
}


class Router:

	def __init__(self):
		self.lines = []
		self.stack = []

	def gen_script(self):
		return self.lines

	def paint_box(self, ly, x0, y0, x1, y1):
		self.lines.append(f'box values {x0/1000:.3f}u {y0/1000:.3f}u {x1/1000:.3f}u {y1/1000:.3f}u')
		self.lines.append(f'paint {ly}')

	def pos2xy(self, pos):
		# Split into components
		trk_x = pos[0]
		row   = pos[1]
		trk_y = pos[2]

		# Odd/Even rows
		trk_y += 1

		if row & 1:
			trk_y = ROW_PITCH // TRACK_H_PITCH - trk_y - 1

		# Final coordinates
		return (
			trk_x * TRACK_V_PITCH + TRACK_V_OFFS,
			row * ROW_PITCH + trk_y * TRACK_H_PITCH + TRACK_H_OFFS
		)

	def via_match(self, via_key, via_cur):
		if (via_key[0] == via_cur[0]) and (via_key[2] == via_cur[2]):
			if (via_key[1] is not None) and (via_key[1] != via_cur[1]):
				return False
			if (via_key[3] is not None) and (via_key[3] != via_cur[3]):
				return False
			return True

		elif (via_key[0] == via_cur[2]) and (via_key[2] == via_cur[0]):
			if (via_key[1] is not None) and (via_key[1] != via_cur[3]):
				return False
			if (via_key[3] is not None) and (via_key[3] != via_cur[1]):
				return False
			return True

		return False

	def resolve_via(self):
		# Anything to do ?
		if self.via is None:
			return

		# Base x/y position
		x, y = self.pos2xy(self.pos)

		# Scan all via options
		cur_move = self.move or LAYERS[self.layer][0]
		via_cur = (self.via[0], self.via[1], self.layer, cur_move)

		for via_key, via_desc in VIAS.items():
			# Check for key match
			if not self.via_match(via_key, via_cur):
				continue

			# Draw via
			for ly, x0, y0, x1, y1 in via_desc:
				self.paint_box(ly, x+x0, y+y0, x+x1, y+y1)

			# Done
			break

		else:
			print(via_key, via_cur)
			raise RuntimeError('No via match')

		# Via is resolve
		self.via = None

	def push(self):
		self.stack.append((
			self.layer,
			self.pos,
			self.move
		))

	def pop(self):
		# Resolve any previous pending via
		self.resolve_via()

		# Restore previous state
		self.layer, self.pos, self.move = self.stack.pop()
		self.via = None

	def start(self, layer, pos):
		# Just set current state
		self.layer = layer
		self.pos   = pos
		self.via   = None
		self.move  = None

	def via_to(self, layer, move=None):
		# Resolve any previous pending via
		self.resolve_via()

		# We don't create via yet, just store state we were at
		self.via   = (self.layer, move or self.move or LAYERS[self.layer][0])
		self.layer = layer
		self.move  = None

	def move_to(self, pos):
		# Moving direction ?
		move_h = (self.pos[0] != pos[0])
		move_v = (self.pos[1] != pos[1]) or (self.pos[2] != pos[2])

		if move_h and move_v:
			raise RuntimeError("Manhattan movements only")
		elif not (move_h or move_v):
			return

		self.move = 'h' if move_h else 'v'

		# Resolve any pending via
		self.resolve_via()

		# Get x/y coordinates for current and future position
		cur_x, cur_y = self.pos2xy(self.pos)
		nxt_x, nxt_y = self.pos2xy(pos)

		# Box
		if move_h:
			x0 = min(cur_x, nxt_x) - TRACK_V_WIDTH // 2
			x1 = max(cur_x, nxt_x) + TRACK_V_WIDTH // 2
			y0 = cur_y - TRACK_H_WIDTH // 2
			y1 = cur_y + TRACK_H_WIDTH // 2
		else:
			x0 = cur_x - TRACK_V_WIDTH // 2
			x1 = cur_x + TRACK_V_WIDTH // 2
			y0 = min(cur_y, nxt_y) - TRACK_H_WIDTH // 2
			y1 = max(cur_y, nxt_y) + TRACK_H_WIDTH // 2

		# Paint
		self.paint_box(self.layer, x0, y0, x1, y1)

		# New position
		self.pos = pos

	def move_rel(self, pos_ofs):
		new_pos = (
			self.pos[0] + pos_ofs[0],
			self.pos[1] + pos_ofs[1],
			self.pos[2] + pos_ofs[2],
		)
		self.move_to(new_pos)

	def end(self):
		# Resolve any pending via
		self.resolve_via()

	def pad(self, name, idx, klass=None, usage='digital'):

		cur_x, cur_y = self.pos2xy(self.pos)
		x0 = cur_x - TRACK_V_WIDTH // 2
		x1 = cur_x + TRACK_V_WIDTH // 2
		y0 = cur_y - TRACK_H_WIDTH // 2
		y1 = cur_y + TRACK_H_WIDTH // 2

		self.lines.extend([
			f"box values {x0/1000:.3f}u {y0/1000:.3f}u {x1/1000:.3f}u {y1/1000:.3f}u",
			f"label {{{name}}} FreeSans 0.025u 0 0 0 n {self.layer}",
			f"port make {idx}",
			f"port {{{name}}} use {usage}",
			f"port {{{name}}} class {klass}",
		])


class Cell:

	def __init__(self, name, width):
		self.name = name
		self.width = width


class CellInstance:

	def __init__(self, name, cell, pos, orient):
		self.cell = cell
		self.pos = pos
		self.orient = orient


class Grid:

	FILL = {
		1:  Cell('sky130_fd_sc_hd__fill_1',    1),
		2:  Cell('sky130_fd_sc_hd__fill_2',    2),
		3:  Cell('sky130_fd_sc_hd__decap_3',   3),
		4:  Cell('sky130_fd_sc_hd__decap_4',   4),
		6:  Cell('sky130_fd_sc_hd__decap_6',   6),
		8:  Cell('sky130_fd_sc_hd__decap_8',   8),
		12: Cell('sky130_fd_sc_hd__decap_12', 12),
	}

	TAP = Cell('sky130_fd_sc_hd__tapvpwrvgnd_1', 1)

	def __init__(self, width, height):
		self.width = width
		self.height = height
		self.grid = [ None ] * (width * height)

	def _idx(self, pos):
		return pos[1] * self.width + pos[0]

	def add_cell(self, inst_name, cell, pos, orient):
		ci = CellInstance(inst_name, cell, pos, orient)
		for i in range(cell.width):
			idx = self._idx( (pos[0]+i, pos[1]) )
			if self.grid[idx] is not None:
				raise RuntimeError(f'Grid conflict placing {cell.name} at {pos}')
			self.grid[idx] = (ci, i)

	def add_tap(self, col, row):
		self.add_cell(f'tap_{col}_{row}', self.TAP, (col, row), 0)

	def add_tap_col(self, col):
		for i in range(self.height):
			self.add_cell(f'tap_{col}_{i}', self.TAP, (col, i), 0)

	def fill(self):
		# Sort fill cells
		fc_lst = sorted(self.FILL.values(), key=lambda x: x.width, reverse=True)

		# Scan all rows
		for row in range(self.height):
			# Scan columns
			col = 0
			while col < self.width:
				# Check if spot is taken
				idx = self._idx( (col, row) )
				if self.grid[idx] is not None:
					col += 1
					continue

				# This spot is taken, check how many
				# we can fit
				for fc in fc_lst:
					# Too wide for grid ?
					if col + fc.width > self.width:
						continue

					# Spots taken ?
					if not all([self.grid[idx+i] is None for i in range(fc.width)]):
						continue

					# Place fill cell
					self.add_cell(f'fill_{col}_{row}', fc, (col, row), 0)

					# Move on
					col += fc.width
					break

	def gen_decap(self):
		# Return value
		lines = []

		# Scan all rows
		for row in range(self.height):

			# Scan all columns
			for col in range(self.width):
				# Check if spot is taken
				idx = self._idx( (col, row) )
				ci_idx = self.grid[idx]
				if (ci_idx is None) or (ci_idx[1] != 0):
					continue

				if not 'decap' in ci_idx[0].cell.name:
					continue

				# Generate instance
				lines.extend([
					f"\t{ci_idx[0].cell.name} decap_{col}_{row}_I (",
					"\t\t.VPWR (VDPWR),",
					"\t\t.VGND (VGND),",
					"\t\t.VPB  (VDPWR),",
					"\t\t.VNB  (VGND)",
					"\t);",
				])

		return lines

	def gen_script(self):
		# Return value
		lines = []

		# Scan all rows
		for row in range(self.height):

			# Scan all columns
			for col in range(self.width):
				# Check if spot is taken
				idx = self._idx( (col, row) )
				ci_idx = self.grid[idx]
				if (ci_idx is None) or (ci_idx[1] != 0):
					continue

				MAGIC_ORIENT = {
					(0, 0): '',
					(0, 1): '180v',
					(1, 0): 'v',
					(1, 1): '180',
				}

				orient = MAGIC_ORIENT[ (row & 1, ci_idx[0].orient) ]

				# Generate instance
				pos_x = col * COL_PITCH
				pos_y = row * ROW_PITCH

				if row & 1:
					pos_y += ROW_PITCH
				if ci_idx[0].orient:
					pos_x += ci_idx[0].cell.width * COL_PITCH

				lines.append(f'getcell {ci_idx[0].cell.name} {orient} child 0 0 parent {pos_x/1000:.3f}u {pos_y/1000:.3f}u')

				#lines.append(f'box position {col*COL_PITCH/1000:.3f}u {row*ROW_PITCH/1000:.3f}u')
				#lines.append(f'getcell {ci_idx[0].cell.name} {orient}')

		return lines

	def gen_rail(self, x_pos, width, is_vdpwr=False):
		BOXES = [
			( 'met2',  0,  0 ),
			( 'met3',  0,  0 ),
			( 'm2c',   0, 30 ),
			( 'm3c',  25, 45 ),
			( 'via3',  5, 30 ),
		]
		RAIL_HALF_WIDTH = 240

		# Return value
		lines = []

		# Create the full height rail
		x0 = x_pos
		x1 = x_pos + width
		y0 = 0.0 - RAIL_HALF_WIDTH
		y1 = self.height * ROW_PITCH + RAIL_HALF_WIDTH

		lines.extend([
			f"box values {x0/1000:.3f}u {y0/1000:.3f}u {x1/1000:.3f}u {y1/1000:.3f}u",
			"paint met4",
		])

		if is_vdpwr:
			lines.extend([
				f"label VDPWR FreeSans 0.1u 0 0 0 n met4",
				f"port make",
				f"port index 1",
				f"port VDPWR use power",
				f"port VDPWR class input",
			])
		else:
			lines.extend([
				f"label VGND FreeSans 0.1u 0 0 0 n met4",
				f"port make",
				f"port index 0",
				f"port VGND use ground",
				f"port VGND class input",
			])

		# Draw boxes / via
		for i in range(1 if is_vdpwr else 0, self.height + 1, 2):
			for box_ly, box_x_ofs, box_y_ofs in BOXES:
				x0 = x_pos + box_x_ofs
				x1 = x_pos + width - box_x_ofs
				y0 = (i * ROW_PITCH) - RAIL_HALF_WIDTH + box_y_ofs
				y1 = (i * ROW_PITCH) + RAIL_HALF_WIDTH - box_y_ofs
				lines.extend([
					f"box values {x0/1000:.3f}u {y0/1000:.3f}u {x1/1000:.3f}u {y1/1000:.3f}u",
					f"paint {box_ly}",
				])

		# Done
		return lines



CELLS = { c.name.split('__')[1]:c for c in [
	Cell('sky130_fd_sc_hd__and2_2',           6),
	Cell('sky130_fd_sc_hd__and2_4',           7),
	Cell('sky130_fd_sc_hd__clkbuf_4',         6),
	Cell('sky130_fd_sc_hd__clkbuf_8',        11),
	Cell('sky130_fd_sc_hd__clkbuf_16',       20),
	Cell('sky130_fd_sc_hd__clkdlybuf4s50_2',  9),
	Cell('sky130_fd_sc_hd__dfrtp_1',         20),
	Cell('sky130_fd_sc_hd__dfxtp_1',         16),
	Cell('sky130_fd_sc_hd__dfxtp_2',         17),
	Cell('sky130_fd_sc_hd__dfxbp_2',         21),
	Cell('sky130_fd_sc_hd__mux4_2',          18),
]}

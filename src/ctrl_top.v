/*
 * Copyright (c) 2025 Sylvain Munaut
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module ctrl_top (
    input  wire         VGND,
    input  wire         VDPWR,
    input  wire         clk,
    input  wire         rst_n,
	input  wire         enable,
	input  wire         data_in,
	output wire         data_out,
	output wire [191:0] ctrl_out,
);

	genvar i;


	// Signals
	// -------

	wire g_clk;
	wire g_rst_n;
	wire g_enable;

	wire [26:0] asw_data;
	wire  [1:0] mid_data;
	wire  [7:0] dev_data;


	// Input
	// -----

	// Buffers
	sky130_fd_sc_hd__clkbuf_16 buf_in_I[2:0] (
		.X    ({ g_clk, g_rst_n, g_enable }),
		.A    ({   clk,   rst_n,   enable }),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);

	// Diodes
	sky130_fd_sc_hd__diode_2 diode_in_I[2:0] (
		.DIODE ({ g_clk, g_rst_n, g_enable }),
		.VPWR  (VDPWR),
		.VGND  (VGND),
		.VPB   (VDPWR),
		.VNB   (VGND)
	);


	// Analog SWitch Matrix control
	// ----------------------------

	// Direct input
	assign asw_data[0] = data_in;

	// 26 identical column control block
	generate
		for (i=0; i<26; i=i+1)
		begin
			// Control block
			ctrl_block #(
				.DELAY_PRE(1),
				.DELAY_POST(0),
				.N (6)
			) blk_I (
				.VGND     (VGND),
				.VDPWR    (VDPWR),
				.clk      (g_clk),
				.rst_n    (g_rst_n),
				.enable   (g_enable),
				.data_in  (asw_data[i]),
				.data_out (asw_data[i+1]),
				.ctrl_out (ctrl_out[6*i+:6]),
			);

			// Decaps
			`include "ctrl_asw.decap.v"
		end
	endgenerate


	// Intermediate buffers
	// --------------------

	sky130_fd_sc_hd__clkbuf_4 buf_mid_I[1:0] (
		.X    ({ mid_data[1], mid_data[0] }),
		.A    ({ mid_data[0], asw_data[26] }),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);

	sky130_fd_sc_hd__clkdlybuf4s50_2 dly_mid_I (
		.X    (dev_data[0]),
		.A    (mid_data[1]),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);


	// Device control
	// --------------

	// Dual PMOS
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (6)
	) blk_pmos_dual_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[0]),
		.data_out (dev_data[1]),
		.ctrl_out (ctrl_out[161:156]),
	);

	// PMOS Current Mirror
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (6)
	) blk_pmos_cm_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[1]),
		.data_out (dev_data[2]),
		.ctrl_out (ctrl_out[167:162]),
	);

	// PMOS Differential Pair
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (4)
	) blk_pmos_dp_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[2]),
		.data_out (dev_data[3]),
		.ctrl_out (ctrl_out[171:168]),
	);

	// NMOS Differential Pair
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (4)
	) blk_nmos_dp_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[3]),
		.data_out (dev_data[4]),
		.ctrl_out (ctrl_out[175:172]),
	);

	// NMOS Current Mirror
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (8)
	) blk_nmos_cm_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[4]),
		.data_out (dev_data[5]),
		.ctrl_out (ctrl_out[183:176]),
	);

	// Dual NMOS
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (6)
	) blk_nmos_dual_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[5]),
		.data_out (dev_data[6]),
		.ctrl_out (ctrl_out[189:184]),
	);

	// OTA
	ctrl_block #(
		.DELAY_PRE(0),
		.DELAY_POST(1),
		.N (2)
	) blk_nmos_ota_I (
		.VGND     (VGND),
		.VDPWR    (VDPWR),
		.clk      (g_clk),
		.rst_n    (g_rst_n),
		.enable   (g_enable),
		.data_in  (dev_data[6]),
		.data_out (dev_data[7]),
		.ctrl_out (ctrl_out[191:190]),
	);

	// All decaps
	generate
//		begin ; decap_f
			`include "ctrl_dev_f.decap.v"
//		end

		for (i=0; i<6; i=i+1)
		begin : decap_b2
			`include "ctrl_dev_b2.decap.v"
		end

		for (i=0; i<6; i=i+1)
		begin : decap_e2
			`include "ctrl_dev_e2.decap.v"
		end

		for (i=0; i<5; i=i+1)
		begin : decap_m2
			`include "ctrl_dev_m2.decap.v"
		end

		for (i=0; i<4; i=i+1)
		begin : decap_p
			`include "ctrl_dev_p.decap.v"
		end

		for (i=0; i<1; i=i+1)
		begin : decap_b1
			`include "ctrl_dev_b1.decap.v"
		end

		for (i=0; i<1; i=i+1)
		begin : decap_e1
			`include "ctrl_dev_e1.decap.v"
		end
	endgenerate


	// Output buffer
	// -------------

	sky130_fd_sc_hd__clkbuf_16 buf_out_I (
		.X    (data_out),
		.A    (dev_data[7]),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);

endmodule /* ctrl_top */

`include "ctrl_block.v"
`include "stdcells.v"


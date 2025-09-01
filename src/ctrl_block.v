/*
 * Copyright (c) 2025 Sylvain Munaut
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module ctrl_block #(
	parameter integer DELAY_PRE  = 1,
	parameter integer DELAY_POST = 0,
	parameter integer N = 6
)(
    input  wire         VGND,
    input  wire         VDPWR,
    input  wire         clk,
    input  wire         rst_n,
	input  wire         enable,
	input  wire         data_in,
	output wire         data_out,
	output wire [N-1:0] ctrl_out,
);

	// Signals
	// -------

	wire l_clk;
	wire l_rst_n;
	wire l_enable;

	wire [N:0] shift;


	// Input buffers
	// -------------

	// Optional input delay
	generate

		if (DELAY_PRE)
		begin
			sky130_fd_sc_hd__clkdlybuf4s50_2 in_dly (
				.X    (shift[0]),
				.A    (data_in),
				.VPWR (VDPWR),
				.VGND (VGND),
				.VPB  (VDPWR),
				.VNB  (VGND)
			);
		end
		else
		begin
			assign shift[0] = data_in;
		end
	
	endgenerate

	// Local buffer for clk / rst_n / enable
	sky130_fd_sc_hd__clkbuf_4 buf_I[2:0] (
		.X    ({ l_clk, l_rst_n, l_enable }),
		.A    ({   clk,   rst_n,   enable }),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);


	// Shift register
	// --------------

	sky130_fd_sc_hd__dfrtp_1 ff_I[N-1:0] (
		.Q       (shift[N:1]),
		.CLK     (l_clk),
		.RESET_B (l_rst_n),
		.D       (shift[N-1:0]),
		.VPWR    (VDPWR),
		.VGND    (VGND),
		.VPB     (VDPWR),
		.VNB     (VGND)
	);

	sky130_fd_sc_hd__and2_2 mask_I[N-1:0] (
		.X    (ctrl_out),
		.A    (shift[N:1]),
		.B    (l_enable),
		.VPWR (VDPWR),
		.VGND (VGND),
		.VPB  (VDPWR),
		.VNB  (VGND)
	);


	// Output
	// ------

	generate

		if (DELAY_POST)
		begin
			sky130_fd_sc_hd__clkdlybuf4s50_2 out_dly (
				.X    (data_out),
				.A    (shift[N]),
				.VPWR (VDPWR),
				.VGND (VGND),
				.VPB  (VDPWR),
				.VNB  (VGND)
			);
		end
		else
		begin
			assign data_out = shift[N];
		end
	
	endgenerate

endmodule /* ctrl_block */

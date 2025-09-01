/*
 * BlackBox for standard cells so we can run the file through
 * yosys for elaboration
 *
 * Copyright (c) 2025 Sylvain Munaut
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none


(* blackbox *)
module sky130_fd_sc_hd__clkbuf_4 (
    output wire X,
    input  wire A,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__clkbuf_16 (
    output wire X,
    input  wire A,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__clkdlybuf4s50_2 (
    output wire X,
    input  wire A,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__and2_2 (
    output wire X,
    input  wire A,
    input  wire B,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__dfrtp_1 (
    output wire Q,
    input  wire CLK,
    input  wire RESET_B,
    input  wire D,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__diode_2 (
    inout  wire DIODE,
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__decap_3 (
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__decap_4 (
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__decap_6 (
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__decap_8 (
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

(* blackbox *)
module sky130_fd_sc_hd__decap_12 (
    input  wire VPWR,
    input  wire VGND,
    input  wire VPB,
    input  wire VNB
);
endmodule

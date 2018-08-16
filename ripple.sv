`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10.08.2018 21:47:29
// Design Name: Edgar Campos Duarte. Electronic Engineer
// Module Name: And_Gate
// Project Name: Test of SystemVerilog
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module ripple #(parameter N=4)(
  output wire [N-1:0] Sum, output logic Cout,
  input logic [N-1:0] A,B, input logic Cin
    );

    logic [N-1:1] Ca;
    genvar i;

    full_adder f0 (Sum[0],Ca[1],A[0],B[0],Cin);

    generate for (i = 1; i < N-1; i++) begin: f_loop

    full_adder fi (Sum[i],Ca[i+1],A[i],B[i],Ca[i]);
    end

    endgenerate

    full_adder fN (Sum[N-1],Cout,A[N-1],B[N-1],Ca[N-1]);


endmodule

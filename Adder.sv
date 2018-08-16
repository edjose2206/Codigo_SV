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


module adder #(parameter N=4)(
  output logic [N-1:0] Sum, output logic Cout,
  input logic [N-1:0] A,B,
  input logic Cin
    );

    always_comb 
      {Cout, Sum}=A+B+Cin;

endmodule

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


module full_adder(
  output logic sum, cout,
  input logic a,b,cin
    );

    always_comb
    begin
      sum=a^b^cin;
      cout=a&b | a&cin | b&cin;
    end
      
endmodule

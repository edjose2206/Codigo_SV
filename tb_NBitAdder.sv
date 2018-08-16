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


module test_NBitAdder();

    parameter N=4;
    logic Cin, Cout;
    logic [N-1:0] Sum,A,B;

    adder #(N) s0 (.*);/*(.*) is a wild card to connect signal. This is allowable if the wire and variable names in the testbench are exactly the same as those in the module being instantiated*/

    initial begin
      Cin= 1'b0;
      A=4'b0000;
      B=4'b0000;
      #5ns A=4'b1111;
      #5ns Cin=1'b1;
      #5ns A=4'b0111;
      #5ns B=4'b1111;
      #5ns Cin=1'b0;
    end


endmodule

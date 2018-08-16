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


module dffr(
    output logic q,
    input logic nr,ns,clk,d
    );

    always_ff @(posedge clk, negedge nr, negedge ns)
    if (~ns)
      q<='1;

    else if(~ns)
      q<='0;

    else

      q<=d;
      
endmodule

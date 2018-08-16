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


module fulladder_task #(parameter N=4)(
  output logic [N-1:0] Sum, output logic Cout,
  input logic [N-1:0] A,B,
  input logic Cin
    );

    logic [N-1]:1 Ca;
    genvar i;


  task automatic fulladder(output logic sum, cout, /*The task is declared as automatic to ensure that each call
    has it own copy of variables. Otherwise, variables are shared between each call, which would lead to conflicts between assignments*/
    input logic a,b, cin);

    begin
      sum= a^b^cin;
      cout= a&b | a&cin | b&cin;
    end

  endtask

  always_comb

    fulladder (Sum[0],Ca[1],A[0],B[0],Cin);

    generate for (i=1;i<N-1; i++)
      begin : f_loop
      always_comb
        fulladder (Sum[i],Ca[i+1],A[i],B[i],Ca[i]);
      end

    endgenerate

  always_comb
    fulladder fN (Sum[N-1],Cout,A[N-1],B[N-1],Ca[N-1]);

endmodule

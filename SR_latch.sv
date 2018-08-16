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


module rslatch(
    output logic q,qvar
    input logic r,s
    );

    always @ ( r,s ) begin

      unique case({r,s})

        2'b00: {q,qvar}<=2'b11;
        2'b01: {q,qvar}<=2'b11;
        2'b10: {q,qvar}<=2'b11;
        default
      endcase

    end

endmodule

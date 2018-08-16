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


module three_mux4(
    output wire y,
    input logic a,b,c,d s0,s1
    );

    assign y=('s0&&'s1)?a:'z;
    assign y=(s0&&'s1)?b:'z;
    assign y=('s0&&s1)?c:'z;
    assign y=(s0&&s1)?a:'z;

endmodule

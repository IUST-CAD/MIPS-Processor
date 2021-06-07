`timescale 1ns / 1ps

module SraModule(
    input signed [31:0] a,
    input [4:0] b,
    output [31:0] o
    ); 
	
assign o = a >>> b;


endmodule

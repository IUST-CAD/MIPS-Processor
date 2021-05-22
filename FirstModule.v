`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:03:57 05/23/2021 
// Design Name: 
// Module Name:    FirstModule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FirstModule(
	      input[1:0] a,
	      input[1:0] b,
         input cin,
	      output[1:0] sum,
	      output cout
	     );
 
	wire [1:0] p,g,c;

	assign p=a^b;
	assign g=a&b;
	  
	assign c[0]=cin;
	assign c[1]= g[0]|(p[0]&c[0]);
	assign cout= g[1] | (p[1]&g[0]) | p[1]&p[0]&c[0];

	assign sum=p^c;

endmodule

`timescale 1ns / 1ps

module AddModule(
    	input [31:0] a,
    	input [31:0] b,
	input [15:0] immediate,
	 // opcode == 00: Add
	 // opcode == 01: Addi
	 // opcode == 10: lw
	 // opcode == 11: sw 
    	input [2:0] opcode,
    	output reg [31:0] o
    	);

reg [31:0] immediateReg;

always @(*) begin

assign immediateReg = {immediate, 16'b0};

if (opcode == 2'b00) begin
	assign o = a + b;
end

//else if (opcode == 2'b01) begin
	//assign o = 
//end

//else if (opcode == 2'b11) begin
	//assign o =
//end

else begin
	assign o = a + immediateReg;
end

end
endmodule
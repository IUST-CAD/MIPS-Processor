`timescale 1ns / 1ps

module OrModule(
    input [31:0] a,
    input [31:0] b,
	 input [15:0] immediate,
	 // opcode == 0 : OR
	 // opcode == 1 : ORi
    input opcode,
    output reg [31:0] o
    );

reg [31:0] immediateReg;

always @(*) begin

immediateReg = {immediate, 16'b0};

if (opcode == 0) begin

o = a | b;

end

else begin

o = a | immediateReg;

end

end
endmodule

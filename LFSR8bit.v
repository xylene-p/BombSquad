module LFSR8bit(enable, reset, clk, output_sequence);
	
	input enable;
	output [7:0] output_sequence;
	reg [7:0] output_sequence;
	
	input reset, clk;
	
	reg [7:0] LFSR;

	always @(posedge clk)
	begin
		output_sequence <= LFSR;
		if (reset == 0) LFSR <= 8'b11111111;
		else begin LFSR[0] <= LFSR[0] ^ LFSR[7]; LFSR[7:1] <= LFSR[6:0]; end
	end
endmodule

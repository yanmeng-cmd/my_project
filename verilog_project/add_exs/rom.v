module rom(
	input 	wire [31:0]  	inst_addr_i,
	output  reg [31:0]   	inst_o
);
	reg [31:0] rom_mem [0:31];
	
	always(*)begin
		inst_o = rom_mem[inst_addr>>2];
	end
endmodule
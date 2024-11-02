module ifetch(
	input  wire[31:0]	 pc_addr_i,
	input  wire[31:0]	 rom_inst_i,
	output wire [31:0]	 if_rom_addr_o,
	output wire[31:0]	 inst_addr_o,
	output wire [31:0]	 inst_o
);
	assign if_rom_addr_o  	= pc_addr_i;
	assign inst_addr_o	    = pc_addr_i;
	assign inst_addr_o	    = rom_inst_i;
endmodule
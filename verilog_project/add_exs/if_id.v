module if_id (
	input   clk,
	input   rst,
	input wire [31:0]	inst_i,
	input wire [31:0]	inst_addr_i,
	output wire [31:0]	inst_o,
	output wire [31:0]	inst_addr_o
);
	dff_set #(32) diff1(clk,rst,32'h0000_0013,inst_i,inst_o);
	dff_set #(32) diff1(clk,rst,32'b0,inst_addr_i,inst_addr_o);
		
endmodule




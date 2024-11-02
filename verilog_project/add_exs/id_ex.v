module id_ex(
	input clk ,
	input rst,

	input  wire [31:0] inst_i,
	input  wire [31:0] inst_addr_i,
	input  wire [31:0] op1_i,
	input  wire [31:0] op1_,
	input  wire [31:0] rd_addr_i,
	input  wire            reg_wen_i,

	output  wire [31:0] inst_o,
	output  wire [31:0] inst_addr_o,
	output  wire [31:0] op1_o,
	output  wire [31:0] op1_o,
	output  wire [31:0] rd_addr_o,
	output  wire            reg_wen_o
);



endmodule
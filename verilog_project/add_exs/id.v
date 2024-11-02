module id(
	input wire [31:0]	inst_i,
	input wire [31:0]	inst_addr_i,

	input wire [31:0]	rs1_data_i,
	input wire [31:0]	rs2_data_i,

	output reg [4:0]	rs1_addr_o,
	output reg [4:0]	rs2_addr_o,

	output reg [31:0]	inst_o,
	output reg [31:0]	inst_addr_o,
	output reg [31:0]	op1_o,
	output reg [31:0]	op2_o,
	output reg [4:0]	rd_addr_o,
	output reg	reg_wtite_en

);
	wire [6:0] 	opcode;
	wire [4:0] 	rd;
	wire [2:0]	fun3;
	wire [4:0]	rs1;
	wire [11:0]	imm;
	
	assign	opcode = inst_i[6:0],
		  	rd	   = inst_i[11:7];
		  	fun3   = inst_i[14:12];
		 	rs1    = inst_i[19:15];
		  	imm    = inst_i[31:20];

	always@(*)begin
	      inst_i		 = inst_o;
	      inst_addr_o	 = inst_addr_o;
		case(opcode)
			7'b0010011:begin
				case(fun3)
					3'b000:begin
						rs1_addr_o  = rs1;
						rs2_addr_o  = 5'b0;
						op1_o	    = rs1_data_i;
						op2_o 	    = {{20{imm[11]}},imm};
						rd_addr_o   = rd;
						reg_wen     =1'b1;
					end
					default:begin
						rs1_addr_o  = 5'b0;
						rs2_addr_o  = 5'b0;
						op1_o	    = 32'b0;
						op2_o 	    = 32'b0;
						rd_addr_o   = 5'b0;
						reg_wen     =1'b0;
					end
				endcase
			end
			default:begin
				rs1_addr_o  = 5'b0;
				rs2_addr_o  = 5'b0;
				op1_o	    = 32'b0;
				op2_o 	    = 32'b0;
				rd_addr_o   = 5'b0;
				reg_wen     =1'b0;
			end
		endcase
	end

endmodule
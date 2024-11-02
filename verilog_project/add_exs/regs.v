module regs(
	
	input wire [4:0]	reg1_raddr_i,
	input wire [4:0]	reg2_raddr_i,

	output reg[31:0]	reg1_rdata_o,
	output reg[31:0]	reg2_rdata_o,
	
	input wire [4:0]	reg_waddr_i,
	input wire [31:0]	reg_wdata_i
	input		reg_wen

);
	reg[31:0] regs[0:31];

	always@(*)begin
		if(rst==1'b0)
				reg1_rdata_o <=32'b0,
		else if(reg1_raddr_i==5'b0)
				reg1_rdata_o<= 32'b0;
		else 	reg1_rdata_o <= regs [reg1_rdaar_i];
	end

	always@(*)begin
		if(rst==1'b0)
			reg2_rdata_o <=32'b0,
		else if(reg2_raddr_i==5'b0)
			reg2_rdata_o<= 32'b0;
		else 	reg2
  ._rdata_o <= regs [reg1_rdaar_i];
	end

endmodule
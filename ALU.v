module ALU(
	input [31:0] dato1,
	input [31:0] dato2,
	input [3:0] OP,
	output reg ZF,
	output reg [31:0] datoOut
);

always @(OP)
	begin
	case (OP)
	4'b0000: datoOut = dato1 & dato2;
	4'b0001: datoOut = dato1 | dato2;
	4'b0010: datoOut = dato1 + dato2;
	4'b0110: datoOut = dato1 - dato2;
	4'b0111: datoOut=(dato1<dato2)?32'd1:32'd0;
	4'b1100: datoOut = ~(dato1 | dato2);
	default: datoOut = 4'd0;
	endcase
	
	if(datoOut==32'd0)
	begin
		ZF=1'b0;
	end
	else
	begin
		ZF=1'b1;
	end
end

endmodule
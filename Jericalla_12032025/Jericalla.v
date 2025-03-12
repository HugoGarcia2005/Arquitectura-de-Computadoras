module Jericalla(
	input [16:0] instruccion,
	output [31:0] salida,
	output ZF_J
);

wire [31:0] c_1;
wire [31:0] c_2;
wire [31:0] c_3;

Mem_ROM ROM_J (
	.dir1(instruccion[8:5]),
	.dir2(instruccion[4:1]),
	.dato1(c_1),
	.dato2(c_2)
);

ALU ALU_J (
	.dato1(c_1),
	.dato2(c_2),
	.OP(instruccion[12:9]),
	.ZF(ZF_J),
	.datoOut(c_3)
);

Mem_RAM RAM_J(
	.dir1(instruccion[16:13]),
	.datoIn(c_3),
	.En(instruccion[0]),
	.DS(salida)
);

endmodule
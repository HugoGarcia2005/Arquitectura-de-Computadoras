`timescale 1ns/1ns

module Jericalla_TB();
	reg [16:0] instruccion;
	wire [31:0] salida;
	wire ZF_J;

Jericalla J_TB(
	.instruccion(instruccion),
	.salida(salida),
	.ZF_J(ZF_J)
);

initial begin
	$readmemb("datos_ROM.txt",J_TB.ROM_J.mem_rom);
	$readmemb("datos_RAM.txt",J_TB.RAM_J.mem_ram);
end

initial begin
	#100;
	instruccion=17'b00000000000000000;
	#100;
	instruccion=17'b00001111111111110;
	#100;
	instruccion=17'b00011111111111110;
	#100;
end

endmodule
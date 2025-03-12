module Mem_RAM(
	input [3:0] dir1,
	input [31:0] datoIn,
	input En,
	output reg [31:0] DS
);

reg [31:0] mem_ram [0:15];

always @* begin
	if(En)begin
		mem_ram[dir1]=datoIn;
	end
	else begin
		DS=mem_ram[dir1];
	end
end
endmodule

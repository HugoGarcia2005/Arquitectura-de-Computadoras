module Mem_ROM(
	input [3:0] dir1,
	input [3:0] dir2,
	output reg [31:0] dato1,
	output reg [31:0] dato2
);

reg [31:0] mem_rom [0:15];
always @* begin
	dato1 = mem_rom[dir1];
	dato2 = mem_rom[dir2];
end
endmodule

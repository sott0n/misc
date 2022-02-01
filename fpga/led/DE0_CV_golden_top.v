module blinker (
	input wire [3:0] KEY,
	output wire [9:0] LEDR
);
	reg flag;
	wire clk;
	wire clr;
	
	always @(posedge clk or negedge clr)
		begin
			if(~clr)
				flag=0;
			else
				flag=~flag;
		end

	assign clk = KEY[0];
	assign clr = KEY[1];
	assign LEDR[0] = (flag)?0:1;
	assign LEDR[1] = (flag)?1:0;
	assign LEDR[2] = (flag)?0:1;
	assign LEDR[3] = (flag)?1:0;
	assign LEDR[4] = (flag)?0:1;
	assign LEDR[5] = (flag)?1:0;
	assign LEDR[6] = (flag)?0:1;
	assign LEDR[7] = (flag)?1:0;
	assign LEDR[8] = (flag)?0:1;
	assign LEDR[9] = (flag)?1:0;
	
endmodule

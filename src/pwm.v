
`default_nettype none
`timescale 1ns/1ns
module pwm (
    input wire clk, // drives the pwm signal
    input wire reset,
    output wire out,
    input wire [7:0] level
    );

	
	reg [7:0] counter; // keeps track of the clock cycle
	
	always @(posedge clk) begin
		if(reset) begin // if the reset signal is active
			counter <= 0;
	
		end else begin
			counter <= counter + 1'b1; // increments by 1 on each count cycle
		end
		
	end
	
	assign out = counter < level; // comparator -> 1 if true. 0 if false

endmodule
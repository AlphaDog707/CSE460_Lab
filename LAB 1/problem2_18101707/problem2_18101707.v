module problem2_18101707(in,out);

input [3:0]in;
output reg [1:0]out;

always@(in)
begin
	if(in[3])
		out=2'b11;
	else if(in[0])
		out=2'b00;
	else if(in[1])
		out=2'b01;
	else
		out=2'b10;
end

endmodule


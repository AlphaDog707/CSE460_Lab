module problem1_18101707(d,load,clk,q);
input [3:0]d;
input load,clk;
output reg[3:0]q;
always @(negedge clk)
	if (load)
		q<=d;
	else
//q[3:0]<={q[0],q[3:1]};
		begin
			
			q[2]<=q[3];
			q[1]<=q[2];
			q[0]<=q[1];
			q[3]=1'b0;
		end
		
endmodule

module problem3_18101707(i,z,selector);

input [8:0]i;
input [2:0]selector;

output reg z;

always@(i or selector)
begin

if (selector==0)
	z=i[0];
else if(selector==1)
	z=i[1];
else if(selector==2)
	z=i[2];
else if(selector==3)
	z=i[3];
else if(selector==4)
	z=i[4];
else if(selector==5)
	z=i[5];
else if(selector==6)
	z=i[6];
else
	z=i[7];

end


endmodule

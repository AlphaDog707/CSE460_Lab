
module problem1_18101707(A,B,S,addorsub,cout);

input [4:0]A,B;
input addorsub;
output [4:0]S;
output cout;

wire [4:0]x;

xor(x[0],B[0],addorsub);
xor(x[1],B[1],addorsub);
xor(x[2],B[2],addorsub);
xor(x[3],B[3],addorsub);
xor(x[4],B[4],addorsub);

fulladd stage0(S[0],cout0,A[0],x[0],addorsub);
fulladd stage1(S[1],cout1,A[1],x[1],cout0);
fulladd stage2(S[2],cout2,A[2],x[2],cout1);
fulladd stage3(S[3],cout3,A[3],x[3],cout2);
fulladd stage4(S[4],cout ,A[4] ,x[4],cout3);
endmodule 

module fulladd(s,cout,a,b,cin);

input a,b,cin;
output s,cout;

assign s=a^b^cin;
assign cout= ( a & b ) | ( cin & (a ^ b ));
endmodule

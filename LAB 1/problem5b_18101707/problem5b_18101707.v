module problem5b_18101707(A,B,C,D,E,Q,X);

input A,B,C,D,E;
output Q,X;
assign Q = ( ~(~(A & B) |  ~(~C & D)) & E );
assign X = (  (~(A & B) |  ~(~C & D)) & E );

endmodule

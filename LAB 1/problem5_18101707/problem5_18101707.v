module problem5_18101707(A,B,C,D,E,Q,X);

input A,B,C,D,E;
output Q,X;

nand(F,A,B);
nand(H,~C,D);
nor(I,F,H);
and(Q,I,E);
and(X,~I,E);

endmodule

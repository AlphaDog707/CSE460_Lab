module problem1_18101707 (Clock, Resetn, w, z);


input Clock, Resetn, w;
output reg z;
reg [2:1]y, Y;
parameter A = 2'b00, B = 2'b01, C=2'b10, D = 2'b11;


always @(w, y)

	case (y)
		A: if (w)
				begin
					z = 0;
					Y = B;
				end
			else
				begin
					z = 0;
					Y = A;
				end

		B: if (w)
				begin
					z = 0;
					Y = C;
				end
			else
				begin
					z = 0;
					Y = D;
				end
				
		C: if (w)
				begin
					z = 0;
					Y = C;
				end
			else
				begin
					z = 1;
					Y = D;
				end
				
		D: if (w)
				begin
					z = 1;
					Y = B;
				end
			else
				begin
					z = 0;
					Y = A;
				end

	endcase
	
always @(negedge Resetn, posedge Clock)
	if (Resetn == 0) y <= A;
	else y <= Y;
endmodule
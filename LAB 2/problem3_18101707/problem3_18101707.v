module problem3_18101707(Clk,reset,Count);

    
    //input ports and their sizes
    input Clk,reset;
    //output ports and their size
    output [3 : 0] Count;
    //Internal variables
    reg [3 : 0] Count = 1;  
    
     always @(posedge(Clk) or posedge(reset))
     begin
        if(reset == 1) 
            Count <= 1;
        else    

           if(Count == 9)
              Count <= 1;
           else
              Count <= Count + 2; //Incremend Counter

     end    
    
endmodule

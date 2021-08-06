module four_bit_Comparator(X,Y,XlessthanY,XequalY,XgreaterthanY);
    
    input [3:0] X;
    input [3:0] Y;
    
    output  XlessthanY;
     output XequalY;
     output XgreaterthanY; 
     
     reg XlessthanY;
     reg XequalY;
     reg XgreaterthanY;

    always @(X or Y)
     begin
        if(X > Y)   begin  
            XlessthanY = 0;
            XequalY = 0;
            XgreaterthanY = 1; 
			end
        else if(X == Y) begin 
            XlessthanY = 0;
            XequalY = 1;
            XgreaterthanY = 0; 
			end
        else    begin 
            XlessthanY = 1;
            XequalY = 0;
            XgreaterthanY =0;
        end 
    end
endmodule

module testbench_Comparator;
  
    reg [3:0] X;
    reg [3:0] Y;

    wire XlessthanY;
    wire XequalY;
    wire XgreaterthanY;
  
    four_bit_Comparator Compare(.X(X),.Y(Y),.XlessthanY(XlessthanY),.XequalY(XequalY),
	 .XgreaterthanY(XgreaterthanY));

    initial begin
        
        X = 6;
        Y = 9;
        #30;
        X = 12;
        Y = 7;
        #30;
        X = 8;
        Y = 8;
        #30;
    end
      
endmodule
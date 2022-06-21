module nhan_8bit(a,b,ketqua);
input  [7:0] a,b;
output [16:0] ketqua;
wire [16:0] X1,X2,X3,X4,X5,X6,X7,X8,X9,X10;
	assign X1  = b[0]?{9'b0,a}:17'b0;
	assign X2  = b[1]?{8'b0,a,1'b0}:17'b0;
        assign X3  = b[2]?{7'b0,a,2'b0}:17'b0;
        assign X4  = b[3]?{6'b0,a,3'b0}:17'b0;
        assign X5  = b[4]?{5'b0,a,4'b0}:17'b0;
        assign X6  = b[5]?{4'b0,a,5'b0}:17'b0;
        assign X7  = b[6]?{3'b0,a,6'b0}:17'b0;
        assign X8  = b[7]?{2'b0,a,7'b0}:17'b0;
        
       
assign ketqua= X1+X2+X3+X4+X5+X6+X7+X8;
      
endmodule


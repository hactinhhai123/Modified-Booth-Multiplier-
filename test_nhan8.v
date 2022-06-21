
module t_nhan_24bit;
	reg [7:0]A,B;
	wire [16:0]AxB;	
	nhan_8bit m7(A[7:0],B[7:0],AxB[16:0]);
	initial begin
	#0	
          
        B=8'b0000_0001; 
        A=8'b0000_0001;
       #10	
          
        A=8'b0000_0100; 
        B=8'b0000_1000;
       #10
	A=8'b0000_1001;
	B=8'b1111_0001;
	#10
	A=8'b0000_0111;
	B=8'b0000_0000;
	
	
	end
endmodule


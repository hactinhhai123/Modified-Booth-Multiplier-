module t_bonhan;
	reg [7:0]A,B;
	wire [16:0]AxB,ketqua;	
        wire dau;
        wire [7:0]dau1,dau2,dau3,a_gt,b_gt;
	bonhan m7(A,B,AxB,ketqua,dau,dau1,dau2,dau3,a_gt,b_gt);
        
initial $monitor($time," so A %b so B %b ( %c%d)*( %c%d)= %c%d ",A,B,dau1,a_gt,dau2,b_gt,dau3,AxB );
	initial begin
	#0	
        B=8'b0000_0001;   // 1 
        A=8'b1110_1110;   // -18
       #10	
        A=8'b1111_1011;   // -5
        B=8'b1111_1011;   // -5
       #10
	A=8'b0000_1001;   // 9
	B=8'b1111_1110;   // -2 
	#10
	A=8'b0000_0111;   // 7
	B=8'b1110_0111;   // -25 
	#10
	A=8'b0000_0111;   // 7
	B=8'b0000_1000;   // 8
	
	end
endmodule

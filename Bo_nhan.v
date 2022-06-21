module bonhan(a, b , c,ketqua,dau,dau1,dau2,dau3,a_gt,b_gt); 
input [7:0]a, b ; 
output [16:0]c,ketqua;
output dau;
output [7:0]dau1,dau2,dau3,a_gt,b_gt;
wire dau;
wire [7:0]a_gt,b_gt;
wire [16:0]ketqua;
assign a_gt=(a[7]==0)?a:((~a)+1);
assign b_gt=(b[7]==0)?b:((~b)+1);
assign dau=a[7]^b[7];
nhan_8bit u1(a_gt,b_gt,c);
assign dau3=(dau==1)?8'h2D:8'h2B;
assign dau1=(a[7]==1)?8'h2D:8'h2B;
assign dau2=(b[7]==1)?8'h2D:8'h2B;
assign ketqua= (dau==1)?((~c)+1):c;

endmodule 


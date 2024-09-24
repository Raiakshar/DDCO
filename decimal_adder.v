module decimal_adder(A,B,C_in,Sum,Carry);
input [3:0] A;
input [3:0] B;
input C_in;
output[3:0]Sum;
output Carry;
reg[4:0]temp;
reg[3:0]Sum;
reg Carry;
always@(A,B,C_in)
begin
 temp=A+B+C_in;
 if(temp>9)
 begin
	temp=temp+6;
	Carry=1;
	Sum=temp[3:0];
 end
 else
 begin 
	Carry=0;
	Sum=temp[3:0];
 end
 end
 endmodule

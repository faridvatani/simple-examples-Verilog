module stimulus;
reg [2:0]E;
wire sum,carry;
fulladder m1(E[0],E[1],E[2],sum,carry);

initial begin
E=3'b000;
repeat(8)
#10 E=E+1'b1;
end

initial
$monitor($time,"  E[0]=   %b,  E[1]=   %b,  E[2]=   %b,  sum=   %b,  carry=   %b;  ", E[0], E[1] , E[2] , sum , carry );
endmodule
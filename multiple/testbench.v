module stimulus;
reg [3:0]E;
wire a,S1,S2,C2;
multiple m1(E[0],E[1],E[2],E[3],a,S1,S2,C2);

initial begin
E=4'b0000;
repeat(15)
#10 E=E+1'b1;
end

initial
$monitor($time,"  A0=   %b,  A1=   %b,  B0=   %b,  B1=   %b,  a=   %b;    ,  S1=   %b;  ,   S2=   %b;  ,    C2=   %b;  ", E[0] , E[1] , E[2] , E[3] , a , S1 , S2 , C2 );
endmodule  
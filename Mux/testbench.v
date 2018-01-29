module stimulus;
reg [5:0]E;
wire Y;
Mux m1(E[0],E[1],E[2],E[3],E[4],E[5],Y);

initial begin
E=6'b000000;
repeat(63)
#10 E=E+1'b1;
end

initial
$monitor($time,"  I0=   %b,  I1=   %b,  I2=   %b,  I3=   %b,  S1=   %b,  S0=   %b,  Y=   %b; ", E[0] , E[1] , E[2] , E[3] , E[4] ,  E[5] ,Y );
endmodule  
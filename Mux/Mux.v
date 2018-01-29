module Mux (I0,I1,I2,I3,S1,S0,Y);
input I0,I1,I2,I3,S1,S0;
output Y;
wire X1,X2,X3,X4,X5,X6;
not(X1,S0);
not(X2,S1);

and(X3,I0,X2,X1);
and(X4,I1,S1,X1);
and(X5,I2,X2,S0);
and(X6,I3,S1,S0);

or(Y,X3,X4,X5,X6);

endmodule
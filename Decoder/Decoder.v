module Decoder (x,y,z,sum,carry);
input x,y,z;
output sum,carry;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;

not (a,x);
not (b,y);
not (c,z);

and (Y0,a,b,c);
and (Y1,a,b,z);
and (Y2,a,y,c);
and (Y3,a,y,z);
and (Y4,x,b,c);
and (Y5,x,b,z);
and (Y6,x,y,c);
and (Y7,x,y,z);

or (sum,Y1,Y2,Y4,Y7);
or (carry,Y3,Y5,Y6,Y7);

endmodule
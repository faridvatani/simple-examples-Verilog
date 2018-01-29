module fulladder (a,b,c,sum,carry);
input a,b,c;
wire x1,x2,x3;
output sum,carry;
xor xor1(sum,a,b,c);
or or1(carry,z1,z2,z3);
and and1(z1,a,b);
and and2(z2,b,c);
and and3(z3,a,c);
endmodule
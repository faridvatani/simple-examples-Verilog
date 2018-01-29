module multiple (A0,A1,B0,B1,a,S1,S2,C2);
input A0,A1,B0,B1;
output a,S1,S2,C2;
wire C1,z2,z3,z4;

and(a,A0,B0);
and(z2,A1,B0);
and(z3,A0,B1);
and(z4,A1,B1);

xor(S1,z2,z3);
and(C1,z2,z3);

xor(S2,z4,C1);
and(C2,z4,C1);

endmodule
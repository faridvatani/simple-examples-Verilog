module halfadder(a,b,sum,cout);
output sum,cout;
input a,b;

xor (sum,a,b);
and (cout,a,b);

endmodule
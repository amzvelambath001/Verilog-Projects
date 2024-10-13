module full_addersructural_(
a,b,s,cin,cout
);
  wire t1,t2,t3;
input a,b,cin;
output s,cout;
  xor a1(t1,a,b);
  xor a2(s,t1,cin);
  and g1(t2,a,b);
  and g2(t3,t1,cin);
  or h1(cout,t2,t3);
  
endmodule

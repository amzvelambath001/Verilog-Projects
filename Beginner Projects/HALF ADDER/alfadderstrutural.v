module halfadderstrutural_ (a,b,s,c);
  input a,b;
  output s,c;
  xor a1(s,a,b);
  and b1(c,a,b);
endmodule

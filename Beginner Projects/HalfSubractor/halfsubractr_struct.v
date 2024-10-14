module half_subtractor(a,b,d,b0);
  input a,b;
  output d,b0;
  wire abar;
  xor (d,a,b);
  not (abar,a);
  and (b0,abar,b);
  endmodule

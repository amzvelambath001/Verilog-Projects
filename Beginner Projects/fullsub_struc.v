module fullsub_struc(output d,b0, input a,b,bin);
wire abar,t1,t1bar,t2,t3;
  not a1(t1bar,t1);
  not  a2(abar,a);
  xor  a3(t1,a,b);
  xor a4(d,t1,bin);
  and a5(t2,abar,b);
  and a6(t3,t1bar,bin);
  or a7(b0,t2,t3);
endmodule
  
  

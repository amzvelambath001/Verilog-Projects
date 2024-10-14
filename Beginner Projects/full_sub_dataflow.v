module fullsub_dataflow(output d,b0, input a,b,bin);
wire abar,t1,t1bar,t2,t3;
 assign d=a^b^bin;
  assign b0=(~a) & b|~(a^b)&bin;
endmodule
  
  

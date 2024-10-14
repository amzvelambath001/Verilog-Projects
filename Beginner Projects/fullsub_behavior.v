module fullsub_behavior(output reg d,b0, input a,b,bin);
wire abar,t1,t1bar,t2,t3;
  always @(*)
    begin
      d=a^b^bin;
      b0=((~a) & b)|(~(a^b))& bin);
    end
endmodule
  
  

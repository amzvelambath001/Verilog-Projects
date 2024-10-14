module halfsub_dataflow(output d,b0 , input a,b );
  assign d=(a^b);
  assign b0=(~a & b);
endmodule

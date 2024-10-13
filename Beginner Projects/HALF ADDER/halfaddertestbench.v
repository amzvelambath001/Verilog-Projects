module tb_halfadder
  reg a,b;
  wire s,c;
  tb_halfadder uut (
    .a(a)
    .b(b)
    .c(c)
    .s(s)
  );

  
  initial
    begin
      a=1'b0;b=1'b0;
      #2 a=1'b0;b=1'b1
      #2 a=1'b1;b=1'b0
      #2 a=1'b1;b=1'b1
    end
  initial $monitor("time=%g,s=%b,c=%b,a=%b,b=%b",$time,s,c,a,b);
  initial $20 $finish
endmodule

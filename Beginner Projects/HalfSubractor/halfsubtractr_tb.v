module halfsubtractr_tb
reg a,b,abar;
wire d,b0;

  halfsubtractr_tb uut(
    .a(a),
    .b(b),
    .d(d),
    .b0(b0),
  );
  initial begin 
    a=0; b=0;
    a=0; b=1;
    a=1; b=0;
    a=1; b=1;
  end 
  initial $monitor("d=%b,b0=%b,a=%b,b=%b",d,b0,a,b);
  initial #20 $finish
  endmodule

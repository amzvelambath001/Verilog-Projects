module half_sub_behavior(output reg d,b0,input a,b );
  always @(*)
    begin
      d=a^b;
      b0=~a&b;
    end
endmodule

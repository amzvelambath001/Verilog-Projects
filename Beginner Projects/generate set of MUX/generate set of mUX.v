module generate_set_of_MUX(a,b,select,f);
  input[3:0]a,b;
  input select ;
  output[3:0]f;
  assign f=select?a:b;
endmodule

module level_sensititve_latch(D,En,Q);
  input D,En;
  output Q;
  assign Q=En?D:Q;
endmodule;

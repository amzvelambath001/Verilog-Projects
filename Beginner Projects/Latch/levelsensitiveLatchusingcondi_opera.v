module level_sensititve_latch_condi_opera(D,En,Q);
  input D,En;
  output Q;
  assign Q=En?D:Q;
endmodule;

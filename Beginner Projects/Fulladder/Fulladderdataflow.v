module full_adderdataflow_(
a,b,s,cin,cout
);
input a,b,cin;
output s,cout;
  assign s=(a^B^cin);
  assign cout=(a&b)|(b&cin)(a&cin);
endmodule

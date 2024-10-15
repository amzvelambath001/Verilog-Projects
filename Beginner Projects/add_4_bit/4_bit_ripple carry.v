module add_4_bit(s,cout,cin,a,b);
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;
wire [2:0] c;

full3_ add1 (s[0], c[0], a[0], b[0], cin);
full3_ add2 (s[1], c[1], a[1], b[1], c[0]);
full3_ add3 (s[2], c[2], a[2], b[2], c[1]);
full3_ add4 (s[3], cout, a[3], b[3], c[2]);

endmodule

module full3_(
s,cout,a,b,cin
);
input a,b,cin;
output reg cout,s;
always @(*)
begin 
s=a^b^cin;
cout=(a&b)|(b&cin)|(a&cin);
end
endmodule

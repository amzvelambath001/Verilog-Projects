module fulladder_behav(
a,b,cin,cout,s
);
input a,b,cin;
output reg cout,s;
always @(*)
begin 
s=a^b^cin;
cout=(a&b)|(b&c)|(a&c);
end
endmodule



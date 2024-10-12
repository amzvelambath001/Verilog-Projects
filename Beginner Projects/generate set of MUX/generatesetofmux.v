module generate_setof_MUX(a,c,d,f);
input [15:0]a,c,d;
output f;
assign f=(a==0)?(c+d):(c-d);
endmodule

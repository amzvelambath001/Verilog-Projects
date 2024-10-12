module 16to1_mux(
data,select,out
);
input [15:0]data;
input[3:0]select;
output out;
assign out=data[select]
endmodule

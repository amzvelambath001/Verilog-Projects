module fulladder_tb
reg a,b,cin;
wire cout,s;

fulladder_tb uut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.s(s),
);

initial begin
a=0; b=0; c=0;
a=0 ; b=0;c=1;
a=0; b=1; c=0;
a=0; b=1; c=1;
a=1; b=0; c=0;
a=1; b=0; c=1;
a=1; b=1; c=0;
a=1; b=1; c=1;
end
initial $monitor("time=%g,a=%b,b=%b,cin=%b,cout=%b,s=%b",$time,a,b,cin,cout,s);
initial $finish
endmodule

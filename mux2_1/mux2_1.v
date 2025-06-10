module mux2_1(out,sel,a,b);
input sel,a,b;
output out;
assign out = sel ? b : a;
endmodule
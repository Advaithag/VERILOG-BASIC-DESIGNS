module mux2_1(out,sel,a,b);
input sel,a,b;
output out;
assign out = sel ? b : a;
endmodule

module mux8_1_2_1(out,sel,in);
input [2:0]sel;
input [7:0]in;
output out;
wire [5:0]w;

mux2_1 m1(w[0],sel[0],in[0],in[1]);
mux2_1 m2(w[1],sel[0],in[2],in[3]);
mux2_1 m3(w[2],sel[0],in[4],in[5]);
mux2_1 m4(w[3],sel[0],in[6],in[7]);

mux2_1 m5(w[4],sel[1],w[0],w[1]);
mux2_1 m6(w[5],sel[1],w[2],w[3]);

mux2_1 m7(out,sel[2],w[4],w[5]);
endmodule

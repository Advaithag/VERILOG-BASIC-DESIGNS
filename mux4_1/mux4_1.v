module mux4_1(out,sel,in);
input [1:0]sel;
input [3:0]in;
output out;
assign out = sel[1] ? (sel[0] ? in[3] : in[2] ) : (sel[0] ? in[1] : in[0] );
endmodule
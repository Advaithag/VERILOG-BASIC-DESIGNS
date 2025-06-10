`include "mux4_1.v"
module mux4_1_tb();
reg [1:0]sel;
reg [3:0]in;
wire out;
mux4_1 uut (out,sel,in);
initial begin
    $dumpfile("mux4_1.vcd");
    $dumpvars(0,mux4_1_tb);
    in[3] = 0; in[2] = 0; in[1] = 0; in[0] = 0; sel[1] = 0; sel[0] = 0; #10
    in[3] = 0; in[2] = 0; in[1] = 1; in[0] = 1; sel[1] = 0; sel[0] = 1; #10
    in[3] = 0; in[2] = 0; in[1] = 0; in[0] = 0; sel[1] = 1; sel[0] = 0; #10
    in[3] = 1; in[2] = 0; in[1] = 0; in[0] = 1; sel[1] = 1; sel[0] = 1; #10

    $finish;
end
endmodule
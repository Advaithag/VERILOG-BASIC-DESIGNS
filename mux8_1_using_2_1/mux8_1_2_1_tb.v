`include "mux8_1_2_1.v"
module mux8_1_2_1_tb();
reg [2:0]sel;
reg [7:0]in;
wire out;
mux8_1_2_1 uut(out,sel,in);
initial begin
    $dumpfile("mux8_1_2_1.vcd");
    $dumpvars(0,mux8_1_2_1_tb);
    in=8'b10101010;
 sel=3'b000; #10
 sel=3'b001; #10
 sel=3'b010; #10
 sel=3'b011; #10
 sel=3'b100; #10
 sel=3'b101; #10
 sel=3'b110; #10
 sel=3'b111; #10
 in=8'b11110000; 
 sel=3'b000; #10
 sel=3'b001; #10
 sel=3'b010; #10
 sel=3'b011; #10
 sel=3'b100; #10
 sel=3'b101; #10
 sel=3'b110; #10
 sel=3'b111; #10
 $finish;
 end
 endmodule

`include "hex_to_binary.v"
module hex_to_binary_tb();
 reg [15:0] in;
 wire [3:0]out;
 hex_to_binary uut(in,out);
 initial
 begin
    $dumpfile("hex_to_binary.vcd");
    $dumpvars(0,hex_to_binary_tb);
 in=16'h0000; #10
 in=16'h8000; #10
 in=16'h0400; #10
 in=16'h0002; #10
 $finish;
 end
 endmodule

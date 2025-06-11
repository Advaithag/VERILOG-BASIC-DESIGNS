`include "decimal_to_bcd.v"
module decimal_to_bcd_tb();
 reg [9:0] in;
 wire [3:0] out;
 decimal_to_bcd uut (out,in);
 initial
 begin
    $dumpfile("decimal_to_bcd.vcd");
    $dumpvars(0,decimal_to_bcd_tb);
 in=10'b0000000100; #10
 in=10'b1000000000; #10
 in=10'b0000100000; #10
 in=10'b0000001010; #10
 $finish;
 end
endmodule
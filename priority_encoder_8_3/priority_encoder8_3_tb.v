`include "priority_encoder8_3.v"
module priority_encoder8_3_tb();
reg [7:0] in;
wire [2:0] out;
priority_encoder8_3 uut (out,in);
initial begin
    $dumpfile("priority_encoder8_3.vcd");
    $dumpvars(0,priority_encoder8_3_tb);
 in=8'b10000001; #10
 in=8'b11100010; #10
 in=8'b00110100; #10
 in=8'b00011000; #10
 in=8'b00011000; #10
 in=8'b00111100; #10
 in=8'b01000000; #10
 in=8'b10000110; #10
 $finish;
 end
endmodule
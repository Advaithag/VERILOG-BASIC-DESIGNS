`include "octal_to_binary.v"
module octal_to_binary_tb();
reg [7:0]in;
wire [2:0]out;
octal_to_binary uut (in,out);
initial begin
    $dumpfile("octal_to_binary.vcd");
    $dumpvars(0,octal_to_binary_tb);
 in=8'b00000000; #10
 in=8'b00000001; #10
 in=8'b00000010; #10
 in=8'b00000100; #10
 in=8'b00001000; #10
 in=8'b00010000; #10
 in=8'b00100000; #10
 in=8'b01000000; #10
 in=8'b10000000; #10
 $finish;
 end
endmodule

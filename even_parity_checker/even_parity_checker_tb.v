`include "even_parity_checker.v"
module even_parity_checker_tb();
reg [3:0]in;
reg p;
wire error;
even_parity_checker uut (in,p,error);
initial begin
    $dumpfile("even_parity_checker.vcd");
    $dumpvars(0,even_parity_checker_tb);
 in=4'b0000;p=1'b0; #10
 in=4'b0001;p=1'b1; #10
 in=4'b0010;p=1'b0; #10
 in=4'b0011;p=1'b1; #10
 in=4'b0100;p=1'b0; #10
 in=4'b0101;p=1'b1; #10
 in=4'b0110;p=1'b0; #10
 in=4'b0111;p=1'b1; #10
 in=4'b1000;p=1'b0; #10
 in=4'b1001;p=1'b1; #10
 in=4'b1010;p=1'b0; #10
 in=4'b1011;p=1'b1; #10
 in=4'b1100;p=1'b0; #10
 in=4'b1101;p=1'b1; #10
 in=4'b1110;p=1'b0; #10
 in=4'b1111;p=1'b1; #10
 $finish;
 end
endmodule
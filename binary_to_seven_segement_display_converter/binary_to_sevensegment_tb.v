`include "binary_to_sevensegment.v"
module binary_to_sevensegment_tb();
 reg[3:0]bin;
 wire a,b,c,d,e,f,g;
 binary_to_sevensegment uut(bin,a,b,c,d,e,f,g);
 initial
 begin
    $dumpfile("binary_to_sevensegment.vcd");
    $dumpvars(0,binary_to_sevensegment_tb);
 bin=4'b0000; #10
 bin=4'b0001; #10
 bin=4'b0010; #10
 bin=4'b0011; #10
 bin=4'b0100; #10
 bin=4'b0101; #10
 bin=4'b0110; #10
 bin=4'b0111; #10
 bin=4'b1000; #10
 bin=4'b1001; #10
 bin=4'b1010; #10
 
 $finish;
 end
 endmodule

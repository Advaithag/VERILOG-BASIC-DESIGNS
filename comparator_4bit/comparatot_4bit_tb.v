`include "comparator_4bit.v"
module comparator_4bit_tb();
reg [3:0]a,b;
wire agb,aeb,alb;
comparator_4bit uut (agb,aeb,alb,a,b);
initial begin
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0,comparator_4bit_tb);
    a = 4'b0000; b = 4'b0000; #10
    a = 4'b0000; b = 4'b1111; #10
    a = 4'b0101; b = 4'b1010; #10
    a = 4'b0011; b = 4'b1100; #10
    a = 4'b1110; b = 4'b0111; #10
    $finish;
end
endmodule
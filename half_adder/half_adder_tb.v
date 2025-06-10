`include "half_adder.v"
module half_adder_tb();
reg in1,in2;
wire sum,carry;
half_adder uut(
    .sum(sum),
    .carry(carry),
    .in1(in1),
    .in2(in2)
);
initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
    in1 = 0; in2 = 0; #10
    in1 = 0; in2 = 1; #10
    in1 = 1; in2 = 0; #10
    in1 = 1; in2 = 1; #10
    $finish;
 end
endmodule

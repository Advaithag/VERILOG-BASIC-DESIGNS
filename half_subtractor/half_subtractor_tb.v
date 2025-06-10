`include "half_subtractor.v"
module half_subtractor_tb();
reg a,b;
wire difference,borrow;
half_subtractor uut (difference,borrow,a,b);
initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(0,half_subtractor_tb);

    a = 0; b = 0; #10
    a = 0; b = 1; #10
    a = 1; b = 0; #10
    a = 1; b = 1; #10
    $finish;
end
endmodule

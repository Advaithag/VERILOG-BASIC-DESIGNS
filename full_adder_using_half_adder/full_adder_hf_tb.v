`include "full_adder_hf.v"
module full_adder_hf_tb();
reg a,b,cin;
wire sum,carry;
full_adder_hf uut(sum,carry,a,b,cin);
initial begin
    $dumpfile("full_adder_hf.vcd");
    $dumpvars(0,full_adder_hf_tb);

    a = 0; b = 0; cin = 0; #10
    a = 0; b = 0; cin = 1; #10
    a = 0; b = 1; cin = 0; #10
    a = 0; b = 1; cin = 1; #10
    a = 1; b = 0; cin = 0; #10
    a = 1; b = 0; cin = 1; #10
    a = 1; b = 1; cin = 0; #10
    a = 1; b = 1; cin = 1; #10

    $finish;
end
endmodule
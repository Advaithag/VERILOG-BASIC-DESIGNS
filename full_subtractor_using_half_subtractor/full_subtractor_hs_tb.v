`include "full_subtractor_hs.v"
module full_subtractor_hs_tb();
reg a,b,cin;
wire difference,borrow;
full_subtractor_hs uut(difference,borrow,a,b,cin);
initial begin
    $dumpfile("full_subtractor_hs.vcd");
    $dumpvars(0,full_subtractor_hs_tb);

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
`include "ripple_carry_adder.v"
module ripple_carry_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
ripple_carry_adder uut(a,b,cin,sum,carry);
initial begin
    $dumpfile("ripple_carry_adder.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    
    a = 4'b0000; b = 4'b0000; cin = 0; #10
    a = 4'b0001; b = 4'b0001; cin = 1; #10
    a = 4'b1001; b = 4'b0011; cin = 0; #10
    a = 4'b1010; b = 4'b0110; cin = 1; #10
    a = 4'b0101; b = 4'b0111; cin = 0; #10
    a = 4'b1011; b = 4'b1011; cin = 1; #10
    a = 4'b0100; b = 4'b1111; cin = 0; #10
    a = 4'b1011; b = 4'b1101; cin = 1; #10
    a = 4'b1111; b = 4'b1111; cin = 0; #10
  $finish;
end
endmodule
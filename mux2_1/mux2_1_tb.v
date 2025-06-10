`include "mux2_1.v"
module mux2_1_tb();
reg sel,a,b;
wire out;
mux2_1 uut (out,sel,a,b);
initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars(0,mux2_1_tb);
     a=0;b=1; sel=0; #10
     a=0;b=1; sel=1; #10
     a=1;b=0; sel=0; #10
     a=1;b=0; sel=1; #10

     $finish;
end
endmodule
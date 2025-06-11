`include "demux1_8.v"
module demux1_8_tb();
reg [2:0]sel;
reg in;
wire [7:0]out;
demux1_8 uut(out,sel,in);
initial begin
    $dumpfile("demux1_8.vcd");
    $dumpvars(0,demux1_8_tb);
    in = 1;
    sel = 3'b000; #10
    sel = 3'b001; #10
    sel = 3'b010; #10
    sel = 3'b011; #10
    sel = 3'b100; #10
    sel = 3'b101; #10
    sel = 3'b110; #10
    sel = 3'b111; #10
    in = 0; sel = 3'b101; #10
    $finish;
end
endmodule

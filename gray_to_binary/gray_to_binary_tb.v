`include "gray_to_binary.v"
module gray_to_binary_tb();
reg [3:0] gray;
wire [3:0] bin;
gray_to_binary uut (gray,bin);
initial begin
    $dumpfile("gray_to_binary.vcd");
    $dumpvars(0,gray_to_binary_tb);
    gray = 4'b0000; #10;
    gray = 4'b0001; #10;
    gray = 4'b0011; #10;
    gray = 4'b0110; #10;
    gray = 4'b0111; #10;
    gray = 4'b0101; #10;
    gray = 4'b0100; #10;
    gray = 4'b1100; #10;
    gray = 4'b1101; #10;
    gray = 4'b1111; #10;
    gray = 4'b1110; #10;
    gray = 4'b1010; #10;
    gray = 4'b1011; #10;
    gray = 4'b1001; #10;
    gray = 4'b1000; #10;

    $finish;
end
endmodule

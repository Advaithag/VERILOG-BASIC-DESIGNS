module half_adder(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
assign sum = in1 ^ in2;
assign carry = in1 & in2;
endmodule
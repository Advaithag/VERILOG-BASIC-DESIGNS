module half_adder(sum,carry,in1,in2);
input in1,in2;
output sum,carry;
assign sum = in1 ^ in2;
assign carry = in1 & in2;
endmodule

module full_adder_hf(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire partial_sum,partial_carry,carry1;
half_adder h1 (partial_sum,partial_carry,a,b);
half_adder h2 (sum,carry1,partial_sum,cin);
assign carry = partial_carry | carry1;
endmodule

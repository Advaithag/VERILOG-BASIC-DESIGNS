module half_subtractor(difference,borrow,a,b);
input a,b;
output difference,borrow;
assign difference = a ^ b;
assign borrow = (~a) & b;
endmodule

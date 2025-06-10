module half_subtractor(difference,borrow,a,b);
input a,b;
output difference,borrow;
assign difference = a ^ b;
assign borrow = (~a) & b;
endmodule

module full_subtractor_hs(difference,borrow,a,b,cin);
input a,b,cin;
output difference,borrow;
wire partial_difference,partial_borrow,borrow1;
half_subtractor h1 (partial_difference,partial_borrow,a,b);
half_subtractor h2 (difference,borrow1,partial_difference,cin);
assign borrow = partial_borrow | borrow1;
endmodule
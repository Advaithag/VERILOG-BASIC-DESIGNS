module full_subtractor (difference,borrow,a,b,cin);
input a,b,cin;
output difference,borrow;
assign difference = a ^ b ^ cin;
assign borrow = ((~a)&b) | (b&cin) | ((~a)&cin);
endmodule
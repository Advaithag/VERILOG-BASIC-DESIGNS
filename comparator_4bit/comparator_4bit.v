module comparator_4bit(agb,aeb,alb,a,b);
input [3:0]a,b;
output agb,aeb,alb;
assign agb = (a>b);
assign aeb = (a==b);
assign alb = (a<b);
endmodule
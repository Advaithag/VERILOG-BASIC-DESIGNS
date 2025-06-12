 module even_parity_checker(in,p,error);
 input[3:0]in;
 input p;
 output error;
 assign error=in[3]^in[2]^in[1]^in[0]^p;
 endmodule
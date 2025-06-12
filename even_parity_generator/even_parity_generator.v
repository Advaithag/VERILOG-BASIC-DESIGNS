 module even_parity_generator(in,p);
 input [3:0]in;
 output p;
 assign p=in[3]^in[2]^in[1]^in[0]; //sets the parity bit high if odd number of input bits is high.
 endmodule
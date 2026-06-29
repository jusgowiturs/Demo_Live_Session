module Mycircuit(
input logic  a,b,c ,
output logic z);
// z= a'bc' + b'c'
// wire q,w;
assign z= ~a&b&~c + ~b&~c;
//not N1(q,a);
//Procedural


endmodule

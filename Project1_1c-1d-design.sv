// Code your design here
module four_bit_RCA_RCS(A, B, Cin, S, Cout);//4 bit adder

input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;//this will be c4,8,12,ect for bigger adders

  wire b0,b1,b2,b3;//inverted value for be
  xor(b0,B[0],Cin);//invert B with Cin to get B'
  xor(b1,B[1],Cin);
  xor(b2,B[2],Cin);
  xor(b3,B[3],Cin);
  
  wire c1, c2, c3;//c0 is Cin
  
  one_bit_full_adder Fa0(A[0], b0, Cin, S[0], c1);//call to other module 
  one_bit_full_adder Fa1(A[1], b1, c1, S[1], c2);
  one_bit_full_adder Fa2(A[2], b2, c2, S[2], c3);
  one_bit_full_adder Fa3(A[3], b3, c3, S[3], Cout);//Cout is c4

endmodule

module one_bit_full_adder(a, b, Cin, S, Cout);//1b

input a, b, Cin;
output S, Cout;

 wire w1, w2, w3;
  xor(w1,a,b);
  and(w2,a,b);
  xor(S,w1,Cin);//this is gives sum
  and(w3,Cin,w1);
  or(Cout, w3,w2);//gives Cout
  

endmodule
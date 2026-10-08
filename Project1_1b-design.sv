// Code your design here

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
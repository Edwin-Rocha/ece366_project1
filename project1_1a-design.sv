// Code your design here
// Code your design here
module a_one_bit_full_adder(a, b, Cin, S, Cout);//1a

input a, b, Cin;//hello i did this in github
output S, Cout;

  assign S= (a^b)^Cin;//Xor(^) a,b then xor (a,b),Cin  
  assign Cout=(a&b)|(a&Cin)|(b&Cin);//check if any combination produced a 1 other wise it will output 0
endmodule

// Code your testbench here
// or browse Examples
module CLA_test;
  reg[31:0] A, B;
  reg Cin;
  wire[31:0] S;
  wire Cout;
  wire[7:0] c;// to read carry outvalues
  
  thertytwo_bit_PPA BB(A, B, Cin, S, Cout, c[7:0]);
  
  initial begin
    $monitor("2a/b) a=%0d, b=%0d, cin=%b -> sum=%0d, cout=%b c4=%b c8=%b c12=%b c16=%b c20=%b c24=%b c28=%b c32/Cout=%b",A, B, Cin, S, Cout,c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7]);//use %0d in this one to show the numerical number
    A= 128; B=128; Cin=0; #10//addition with positive
    A=32767; B=1; Cin=0; #10//addition 4 propergation
    A= 128; B=-128; Cin=0; #10//addition with negative
    A= 1; B=4294967295; Cin=0; #10//carryout    
  $finish;  
 
  
  end  
endmodule
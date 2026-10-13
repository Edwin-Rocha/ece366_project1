// Code your testbench here
// or browse Examples
module PPA_test;
  reg [15:0] A, B;
  reg Cin;
  wire[15:0] S;
  wire Cout;
  
  PPA pp(A, B, Cin, S, Cout);
  
  initial begin
  $monitor("A=%0d; B=%0d; Cin=%b; S=%0d: Cout=%b",A, B, Cin, S, Cout);
     A= 3; B=1; Cin=0; #10//addition with positive
     A= 128; B=-127; Cin=0; #10//addition with negative
     A=255 ; B=1; Cin=0; #10// carry propergation
     A= 65535; B=1; Cin=1; #10//carry out and overflow
   
    
    $finish;
  end  
endmodule
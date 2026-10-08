// Code your testbench here
// or browse Examples
module four_bit_RCA_RCS_test;
 
  reg[3:0] A, B;
  wire[3:0] S;
  reg Cin;
  wire Cout;
  
four_bit_RCA_RCS uut(A, B, Cin, S, Cout);  
  
  initial begin
    $monitor("1d) a=%b, b=%b, cin=%b -> sum=%b, cout=%b",A, B, Cin, S, Cout);
    $dumpfile("waveform.vcd");
    $dumpvars(0, four_bit_RCA_RCS_test);
    
    	A=2; B=2; Cin=0; #10;//unsigned addition
    
    	A=2; B=2; Cin=1; #10;//unsigned subtraction
    
    	A=3; B=2; Cin=0; #10;//signed addition
    	
    	A=3; B=2; Cin=1; #10;//signed subtraction
    
    	A=8; B=8; Cin=0;//carry out case
    
  end
endmodule
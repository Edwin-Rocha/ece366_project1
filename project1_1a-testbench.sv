// Code your testbench here
// or browse Examples
module a_one_bit_full_adder_test;//dont give it the same name as the design name
  
  reg a, b, Cin;
  wire S, Cout;
  
  a_one_bit_full_adder uut(a, b, Cin, S, Cout);//calls design module don't for get uut its important
  
  initial begin//will begin test
    $monitor("1a) a=%b, b=%b, cin=%b -> sum=%b, cout=%b",a, b, Cin, S, Cout);//will watch over the changes of values and print them
           a=0; b=0; Cin=0; #10;//#10 makes the program wait 10 units of time also this should look like truth table
    		a=0; b=1; Cin=0; #10;
			a=1; b=0; Cin=0; #10;
  			a=1; b=1; Cin=0; #10;
    		a=0; b=0; Cin=1; #10;
    		a=0; b=1; Cin=1; #10;
			a=1; b=0; Cin=1; #10;
  			a=1; b=1; Cin=1; #10;
    $finish;//tell monitor to stop looking
  	end
  
endmodule
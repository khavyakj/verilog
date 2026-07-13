// Code your testbench here
// or browse Examples
module fulladder_tb;
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, fulladder_tb);
    $monitor("a = %d, b=%d, cin=%d, sum=%d, cout=%d", a,b,cin,sum,cout);
  end
  
  
  fulladder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  
  
  initial begin
     a = 0; b = 0; cin = 0; #10;
     a = 0; b = 0; cin = 1; #10;
     a = 0; b = 1; cin = 0; #10;
     a = 0; b = 1; cin = 1; #10;
     a = 1; b = 0; cin = 0; #10;
     a = 1; b = 0; cin = 1; #10;
     a = 1; b = 1; cin = 0; #10;
     a = 1; b = 1; cin = 1; #10;
  	$finish;
  end
endmodule
     

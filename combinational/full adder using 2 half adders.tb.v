// Code your testbench here
// or browse Examples
module fulladder_2ha_tb;
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0, fulladder_2ha_tb);
    $monitor("a=%d,b=%d,cin=%d,sum=%d,cout=%d", a,b,cin,sum,cout);
  end
  
  fulladder_2ha uut (.a(a), .b(b), .cin(cin), .sum(sum),     	.cout(cout));
  
  
  initial begin
    a=0;b=0;cin=0;#5;
    a=0;b=0;cin=1;#5;
    a=0;b=1;cin=0;#5;
    a=0;b=1;cin=1;#5;
    a=1;b=0;cin=0;#5;
    a=1;b=0;cin=1;#5;
    a=1;b=1;cin=0;#5;
    a=1;b=1;cin=1;#5;
    $finish;
  end
endmodule
  
  

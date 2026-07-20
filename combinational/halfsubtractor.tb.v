// Code your testbench here
// or browse Examples
module halfsubtractor_tb;
  reg a;
  reg b;
  wire difference;
  wire borrow;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,halfsubtractor_tb);
    $monitor("time=%t,a=%b,b=%b,difference=%b,borrow=%b",$time,a,b,difference,borrow);
  end
  
  halfsubtractor uut(.a(a),.b(b),.difference(difference),.borrow(borrow));
  
  initial begin
     a=0;b=0;#10;
     a=0;b=1;#10;
     a=1;b=0;#10;
     a=1;b=1;#10;
    $finish;
  end
  endmodule
    

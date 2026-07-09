module halfadder_tb;
  reg a;
  reg b;
  wire sum;
  wire carry;
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, halfadder_tb);
  
  $monitor("time= %0t,a=%b,b =%b,sum =%b, carry =%b ",$time, a,b, sum,carry);
  end
  half_adder uut(.a(a), .b(b), .sum(sum), .carry(carry));
  
  initial begin 
    a = 1; b = 1; #5;
    a = 1; b = 0; #5;
    a = 0; b = 1; #5;
    a = 0; b = 0; #5;
    $finish;
  end
endmodule

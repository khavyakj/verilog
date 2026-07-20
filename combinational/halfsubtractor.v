// Code your design here
module halfsubtractor(
	input wire a,
	input wire b,
	output wire difference,
	output wire borrow
);
  
  assign difference = a^b;
  assign borrow = ~a&b;
endmodule

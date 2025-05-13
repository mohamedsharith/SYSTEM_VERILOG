// Code your design here
// Code your design here
module alu(
  input [3:0]a,b,
  input [2:0]alu_sel,
  output reg [7:0]alu_out);
  
//   reg add,sub,mul,div;
  
//   assign add=a+b;
//   assign sub=a-b;
//   assign mul=a*b;
//   assign div=a/b;
  
  always @(*) begin
    case(alu_sel)
      3'b000: alu_out =  a+b;	//adiition
      3'b001: alu_out =  a-b;	//subtraction
      3'b010: alu_out =  a&b;	//bitwise and
      3'b011: alu_out =  a|b;	//bitwise or
      3'b100: alu_out =  a^b;	//bitwise xor
      3'b101: alu_out =   ~a;	//bitwise not a
      3'b110: alu_out =  a*b;	//multiplication
      3'b111: alu_out =  a<<b;	//logical left shift
      default: alu_out = 8'b000000000;
    endcase
  end
endmodule
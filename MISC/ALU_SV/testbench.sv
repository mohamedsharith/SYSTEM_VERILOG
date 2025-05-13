// Code your testbench here
// or browse Examples

`include "interface.sv"
`include "packages.sv"

module testbench;
  alu_int vif();
  test tst(vif);
  
  alu
  dut(
    .a(vif.a),
    .b(vif.b),
    .alu_sel(vif.alu_sel),
    .alu_out(vif.alu_out)
  );
  
  initial #100 $finish(); 
endmodule
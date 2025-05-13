class transaction;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [2:0] alu_sel;
  logic [7:0] alu_out;
  
  function display (string name);
    $display("[%0t] [%s] a=%b | b=%b | alu_sel=%b | alu_out[%b]",$time,name,a,b,alu_sel,alu_out);
  endfunction
endclass
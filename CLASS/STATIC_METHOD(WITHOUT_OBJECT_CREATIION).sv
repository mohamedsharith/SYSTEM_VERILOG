class transaction;
  static int s_id;
  
  static function void incr_s_id(); 
    s_id++;
  endfunction
  
endclass

module class_example;
  transaction tr;
  initial begin
    transaction::incr_s_id(); 
    tr.incr_s_id(); 
    $display("After incr_id function call");
    $display("Value of s_id = %0h using tr handle", tr.s_id);
    $display("Value of s_id = %0h using scope resolution operator", transaction::s_id);
  end
endmodule

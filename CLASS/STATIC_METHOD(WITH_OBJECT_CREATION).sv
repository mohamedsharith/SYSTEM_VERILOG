class transaction;
  static int s_id;
  int id;
  
  static function void incr_s_id();
    s_id++;
    
  endfunction
  
  function void incr_id();
    s_id++;
    id++;
  endfunction
  
endclass

module class_example;
  transaction tr[5], tr_new;
  initial begin
    foreach (tr[i]) begin 
      tr[i] = new();
      tr[i].incr_s_id();
      $display("On calling incr_s_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
    tr[0].s_id = 0; 
    foreach (tr[i]) begin 
      tr[i].incr_id();
      $display("On calling incr_id: Value of s_id = %0h, id = %0h", tr[i].s_id, tr[i].id);
    end
  end
endmodule

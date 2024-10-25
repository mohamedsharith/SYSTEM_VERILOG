class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 100;
    id = 1;
    display();
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module class_example;
  transaction tr;
  
  initial begin
    tr = new();
  end
endmodule

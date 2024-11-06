class packet;
  int addr;

  function display();
    $display ("[base]addr=0x%0h",addr);
  endfunction

endclass

class exxtpacket extends packet;
  function display();
    super.display();
    $display("[child]addr=0x%0h",addr);
  endfunction

  function new();
    super.new();
  endfunction
endclass

module tb;
  packet p;
  extpacket ep;
  initial begin
    ep = new();
    p = new();
    ep.display()
  end
endmodule

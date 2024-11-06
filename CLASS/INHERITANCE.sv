class packet
  int addr;

  function new(int addr);
    this.addr=addr;
  endfunction


  function display();
    $display("[base]addr=0x%0h",addr);
  endfunction

endclass

class extpacket extends packet;
  int data;
  
  function new (int addr,data);
    super.new(addr);
    this.data=data;
  endfunction
  
  function display();
    $display("[child]addr=0x%0h",addr);
  endfunction
  
endclass

module tb;
  packet bc;
  extpacket sc;
  initial begin
    bc=new(32'hfeed_feed,32'h1234_5678);
    sc.display();
  end
endmodule

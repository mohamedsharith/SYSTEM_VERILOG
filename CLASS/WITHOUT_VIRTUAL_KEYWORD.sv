class packet;
  int addr;

  function new(int addr);
    this.addr=addr;
  endfunction

  function void display();
    $display("[base] addr =0x%0d",addr);
  endfunction
endclass


module tb;
  packet bc;
  ExtPacket sc();

  initial begin
    sc = new(32'hfeed_feed,32'h1234_5678);
    bc = sc;
    bc.display();
  end
endmodule
  

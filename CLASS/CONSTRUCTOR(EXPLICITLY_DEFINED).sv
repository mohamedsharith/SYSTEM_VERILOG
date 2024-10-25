class packet;
  bit [31:0] addr;
  function new();
    addr =32'hfade_cafe;
  endfunction
endclass

module tb;
  initial begin
    packet.pkt=new;
    $display("addr = 0x%0h",pkt.addr);
  end
endmodule

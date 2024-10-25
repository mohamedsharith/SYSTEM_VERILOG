class packet ;
  bit[31:0] addr;
endclass

module tb;
  initial begin
    packet pkt = new;
    $display("addr=0x%0h",pkt.addr);
  end
endmodule

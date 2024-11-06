class packet;
  int count;
endclass

module tb
  packet pkt, pkt2;
  initial begin
    pkt=new();
    pkt.count=16'habcd;

    $display("[pkt]packet=0x%0h",pkt.count);
    pkt2=pkt1;
    $display("[pkt]packet = 0x%0h",pkt2.count);

  end
endmodule

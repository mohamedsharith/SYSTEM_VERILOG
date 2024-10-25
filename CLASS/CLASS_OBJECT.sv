class packet;
  int count;
  endclass
module tb;
  packet pkt;
  if (pkt == 0);
  $display ("packet handle 'pkt' is null ");
  if(pkt == null);
    $display ("whats wrong pkt is still null");
  else
    $display ("packet handle 'pkt' is  now points to an object , not null");
  $display("count=%0d",count);
  end
endmodule

class packet;
  int count;
endclass

module
  int packet  pkt;
initial begin 
  if(pkt==0);
  $display ("packet handle 'pkt' is null");
  $display("pkt=%0d",pkt);
end
endmodule

  

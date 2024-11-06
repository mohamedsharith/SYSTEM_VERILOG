class packet;
  bit[31:0] addr;
  bit[31:0] data;
  address range ar;

  function new();
    addr = 32'h10;
    data = 32'hff;
    ar = new();
  endfunction
endclass

class address_range;
  bit[31:0] start_address;
  bit[31:0] end_address;

  function new();
    start_address = 10;
    end_address = 50;
  endfunction
endclass

module class_assignment
  packet pkt_1;
  packet pkt_2;

  initial begin
    pkt_1 = new();
    $display("\t **** calling pkt_1 display****");
    pkt_1.display()

    pkt_2.addr = 32'h68;
    $display("\t ****calling pkt_2 display ****");
    pkt_2.display();

    pkt_2.addr=32'h68;
    pkt_2.ar.start_address=60;
    pkt_2.ar.end_address=80;
    
    $display("\t ****callingpkt_1 display after changing pkt_2 properties****");
    pkt_1.display();
    
    $display("\t ****calling pkt_2 display after changing pkt_2 properties****");
    pkt_2.display();

  end
endmodule
    

    


    

class packet;
  bit[31:0]   addr;
  bit[31:0]   data;
  bit        write;
  string  pkt_type;

  function new();
    addr=32'h10;
    data=32'hff;
    write=1;
    pkt_type="good_pkt"
  endfunction

  function void display();
    $display("---------------------------------");
    $display("\t addr = %0d",addr);
    $display("\t data = %0h",data);
    $display("\t write = %0d",write);
    $display("\t pkt_type = %s",pkt_type);
    $display("----------------------------------");

  endfunction
endclass

module class_assignment;
  packet pkt_1;
  packet pkt_2;

  initial begin 
    pkt_1=new();
    $display("\t ****calling pkt_1 display ****");
    pkt_1.display();

    pkt_2 = pkt_1;
    $display("\t ****calling pkt_2 display****");
    pkt_2.display();

    pkt_2.addr=32'hab;
    pkt_2.pkt_type="bad_pkt";

    $display("\t ****calling pkt_1 display****");
    pkt_1.display();
  end
endmodule



    


    

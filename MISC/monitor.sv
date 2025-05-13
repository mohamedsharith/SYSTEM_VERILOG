class monitor;
 
   virtual intf vif;
  transaction tr2;
  mailbox mon2sb;
  

  function new(mailbox mon2sb, virtual intf vif);
    this.mon2sb=mon2sb;
    this.vif=vif;
   
  endfunction
  
 
  
   task main;
      mon2sb=new();
   tr2=new(); 
     forever begin
     
      
       mon_write();
      
       mon_read();
       
//     tr2.winc<=vif.winc;
//     tr2.wdata<=vif.wdata;
//     tr2.rinc<=vif.rinc;
//     tr2.rdata<=vif.rdata;
       
//       $display("MONITOR :: WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b,rrst=%0b,rdata=%0b,rinc=%0b",tr2.wrst_n,tr2.wdata,tr2.winc,tr2.rrst_n,tr2.rdata,tr2.rinc); 
       
       
       
       
      mon2sb.put(tr2);
       $display("MONITOR :: PUT THE DATA");
    end
  endtask
      
      
      
      
//       task mon_run();
        
//         @(posedge vif.wclk);
//     fifo_pkt.wrst_n<=0;
//     fifo_pkt.wdata<=0;
//     fifo_pkt.winc<=0;
//         `uvm_info("MONITOR",$sformatf("WRITE OP IN RST CODN::wrst=%0b,wdata=%0b,winc=%0b",fifo_pkt.wrst_n,fifo_pkt.wdata,fifo_pkt.winc),UVM_MEDIUM)  
    
    
    
//      @(posedge vif.wclk);
//     fifo_pkt.wrst_n<=vif.wrst_n;
    
//     fifo_pkt.winc<=vif.winc;
//     fifo_pkt.wdata<=vif.wdata;
//         `uvm_info("MONITOR",$sformatf("WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",fifo_pkt.wrst_n,fifo_pkt.wdata,fifo_pkt.winc),UVM_MEDIUM)  
      
//       endtask
        
        
  
  
  
  task mon_write();
    
    @(posedge vif.wclk)
    
    tr2.winc<=vif.winc;
    tr2.wdata<=vif.wdata;
    
    $display("MONITOR :: WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",tr2.wrst_n,tr2.wdata,tr2.winc); 
  endtask
  
  
  
  
   task mon_read();
    
     @(posedge vif.rclk);
    tr2.rinc<=vif.rinc;
    tr2.rdata<=vif.rdata;
     
     $display("MONITOR :: READ OPERATION::rrst=%0b,rdata=%0b,rinc=%0b",tr2.rrst_n,tr2.rdata,tr2.rinc); 
  
  endtask
        
        
endclass
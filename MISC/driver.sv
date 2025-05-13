class driver;
 
   virtual intf vif;
   mailbox gen2dri;
   transaction tr1;
  
  function new(mailbox gen2dri,virtual intf vif);
    this.gen2dri=gen2dri;
    this.vif=vif;
  endfunction

  task main;
    @(posedge vif.wclk)
    
    
    forever begin
          tr1=new();

    gen2dri.get(tr1);
      if(vif.rrst_n==0 && vif.wrst_n==0) 
      reset;
      else if (vif.wrst_n==1 && vif.rrst_n==0)
       write;
      else if (vif.wrst_n==1 && vif.rrst_n==0)
       read;
    else if (tr1.wrst_n==1 && tr1.rrst_n==1)
      read_write;
    
    end
  endtask
  
 
  task reset;
    
    @(posedge vif.wclk)
     vif.wrst_n<=0;
     vif.rrst_n<=0;
     vif.winc<=0;
     vif.rinc<=0;
     vif.wdata<=0;
     vif.rdata<=0;
    
    $display("DRIVER ::RESET OPERATION::rrst=%0b,rdata=%0b,rinc=%0b,wrst=%0b,wdata=%0b,winc=%0b",vif.rrst_n,vif.rdata,vif.rinc,vif.wrst_n,vif.wdata,vif.winc); 
  endtask
  
  
  task write;
    @(posedge vif.wclk)

    vif.wrst_n<=1;
    vif.winc<=1;
    vif.wdata<=tr1.wdata;
    
    
    $display("DRIVER::WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",vif.wrst_n,vif.wdata,vif.winc); 
  endtask
    
  
  
  task read;
    @(posedge vif.rclk)
    
    vif.rrst_n<=1;
    vif.rinc<=1;
    tr1.rdata<=vif.rdata;
    
     
    $display("DRIVER :: READ OPERATION::rrst=%0b,rinc=%0b,rdata=%0d",vif.rrst_n,vif.rinc,tr1.rdata); 
  
  endtask
  
  
  task read_write;
    
//     tr1.rd_rst.constraint_mode(1);
//        tr1.wr_rst.constraint_mode(1);
//        tr1.cn_wen.constraint_mode(1);
//        tr1.cn_ren.constraint_mode(1);
//        tr1.wr_only.constraint_mode(0);
//        tr1.rd_only.constraint_mode(0);
     @(posedge vif.wclk)
    vif.winc<=tr1.winc;
    vif.wdata<=tr1.wdata;
    $display("DRIVER::WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",vif.wrst_n,vif.wdata,vif.winc); 
    
    
      @(posedge vif.rclk)
    vif.rinc<=tr1.rinc;
    tr1.rdata<=vif.rdata;
    $display("DRIVER :: READ OPERATION::rrst=%0b,rinc=%0b,rdata=%0d",vif.rrst_n,vif.rinc,tr1.rdata);
    
    
    
//     $display("DRIVER :: READ_WRITE OPERATION::rrst=%0b,rdata=%0b,rinc=%0b,wrst=%0b,wdata=%0b,winc=%0b",vif.rrst_n,tr1.rdata,vif.rinc,vif.wrst_n,vif.wdata,vif.winc); 
 
  endtask
  
  
  
  
  
  
  
//   virtual task run_phase(uvm_phase phase);
    
//     super.run_phase(phase);
   
//     forever begin
// //     repeat(2)begin
// //     seq_item fifo_pkt;
      
//       fifo_pkt=seq_item::type_id::create("fifo_pkt",this);
//       `uvm_info("DRIVER","run phase working",UVM_MEDIUM);
//       seq_item_port.get_next_item(fifo_pkt);
       
// //       fork 
//       fifo_write(fifo_pkt);
//       fifo_read(fifo_pkt);
// //       join_any
      
// //           @(posedge vif.wclk);

//       seq_item_port.item_done();
//     end
//   endtask
  
  
//   task fifo_write(seq_item fifo_pkt);
    
//     @(posedge vif.wclk);
//     if(vif.wrst_n==0)begin
//     vif.winc<=0;
//     vif.wdata<=0;
//       `uvm_info("DRIVER","WRITE RESET CONDITION ON",UVM_NONE);
//     end
    
//     else begin
//     vif.winc<=fifo_pkt.winc;
//     vif.wdata<=fifo_pkt.wdata;
//       `uvm_info("DRIVER"," WRITE RESET CONDITION OFF",UVM_NONE);
//     end
    
    
    
//     
    
//      @(posedge vif.wclk);
//     fifo_pkt.waddr<=vif.waddr;
//     fifo_pkt.wptr<=vif.wptr;
//     fifo_pkt.rptr<=vif.rptr;
//     fifo_pkt.rq2_wptr<=vif.rq2_wptr;
    
//     `uvm_info("DRIVER",$sformatf("WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b,wptr=%0d,rptr=%0b",vif.wrst_n,vif.wdata,vif.winc, fifo_pkt.wptr, fifo_pkt.rptr),UVM_MEDIUM)  
    
    
    
//      @(posedge vif.wclk);
// //     vif.wrst_n<=1;
// //     if(vif.wrst_n==1)begin
    
// //     vif.winc<=1;
// //     vif.wdata<=fifo_pkt.wdata;
// //     end
    
//       @(posedge vif.wclk);
// //     fifo_pkt.waddr<=vif.waddr;
//     fifo_pkt.wptr<=vif.wptr;
//     fifo_pkt.rptr<=vif.rptr;
// //     fifo_pkt.rq2_wptr<=vif.rq2_wptr;
    
//     `uvm_info("DRIVER",$sformatf("WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",vif.wrst_n,vif.wdata,vif.winc),UVM_MEDIUM) 
//   endtask
  
  
//  task fifo_read(seq_item fifo_pkt);
    
//    @(posedge vif.rclk);
//    if(vif.rrst_n==0)begin
//     vif.rinc<=0;
//     vif.rdata<=0;
//      `uvm_info("DRIVER","READ RESET CONDITION ON",UVM_NONE);
//     end
    
//     else begin
//     vif.rinc<=fifo_pkt.rinc;
//     fifo_pkt.rdata<=vif.rdata;
//       `uvm_info("DRIVER","READ RESET CONDITION OFF",UVM_NONE);
//     end
    
    
    
    
    
//      @(posedge vif.wclk);
//     fifo_pkt.waddr<=vif.waddr;
//     fifo_pkt.wptr<=vif.wptr;
//     fifo_pkt.rptr<=vif.rptr;
//     fifo_pkt.rq2_wptr<=vif.rq2_wptr;
    
//     `uvm_info("DRIVER",$sformatf("WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b,wptr=%0d,rptr=%0b",vif.wrst_n,vif.wdata,vif.winc, fifo_pkt.wptr, fifo_pkt.rptr),UVM_MEDIUM)  
    
    
    
//      @(posedge vif.wclk);
// //     vif.wrst_n<=1;
// //     if(vif.wrst_n==1)begin
    
// //     vif.winc<=1;
// //     vif.wdata<=fifo_pkt.wdata;
// //     end
    
//       @(posedge vif.wclk);
// //     fifo_pkt.waddr<=vif.waddr;
//     fifo_pkt.wptr<=vif.wptr;
//     fifo_pkt.rptr<=vif.rptr;
// //     fifo_pkt.rq2_wptr<=vif.rq2_wptr;
    
//    `uvm_info("DRIVER",$sformatf("READ OPERATION::rrst=%0b,rdata=%0b,rinc=%0b",vif.rrst_n,fifo_pkt.rdata,vif.rinc),UVM_MEDIUM) 
  
//   endtask
endclass
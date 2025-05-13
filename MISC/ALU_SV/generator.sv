class generator;
  mailbox gen2drv;
  transaction trnx;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task run();
    trnx=new();
    trnx.randomize();
    trnx.display("GEN");
    gen2drv.put(trnx);
    
  endtask
  
endclass
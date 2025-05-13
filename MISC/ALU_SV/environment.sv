class environment;
  virtual alu_int vif;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  
  mailbox mon2scb;
  mailbox gen2drv;
  
  function new(virtual alu_int vif);
    gen2drv=new();
    mon2scb=new();
    this.vif=vif;
    gen=new(gen2drv);
    mon=new(vif,mon2scb);
    drv=new(vif,gen2drv);
    scb=new(mon2scb);
  endfunction
  
  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
      scb.run();
    join
  endtask  
endclass
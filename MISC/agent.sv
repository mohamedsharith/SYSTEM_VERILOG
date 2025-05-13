`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class agent;
  
  virtual intf vif;
  driver dri;
  generator gen;
  monitor mon;
  mailbox gen2dri;
  mailbox mon2sb;
  
  
  
  function new(mailbox mon2sb,virtual intf vif);
    this.mon2sb=mon2sb;
     this.vif=vif;
     gen2dri=new();
    dri=new(gen2dri,vif);
    gen=new(gen2dri);
    mon=new(mon2sb,vif);
  endfunction
  
//   task mem;
//     initial begin
    
//     end
//   endtask
  
  task main();
    fork
     gen.main;
      
      dri.main;
      
      mon.main;
    join
  endtask
  
endclass
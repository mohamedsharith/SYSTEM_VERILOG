`include "environment.sv"

class test;
  
   virtual intf vif;
   mailbox mon2sb;
  environment envi;
  
  function new(virtual intf vif);
    this.vif=vif;
//     this.m1=m1;
  endfunction
  
 task mem;
   envi=new(mon2sb,vif);
 endtask
   
  task main;
    fork
    envi.mem;
    envi.main;
    join
  endtask
  

  
endclass
  
  
  
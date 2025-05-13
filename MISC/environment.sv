`include "agent.sv"
`include "scoreboard.sv"

class environment;
  
  virtual intf vif;
  agent agt;
  scoreboard sb;
  mailbox mon2sb;
  
  function new(mailbox mon2sb,virtual intf vif);
    this.mon2sb=mon2sb;
    this.vif=vif;
   
  endfunction
  
  
  task mem;
    
    agt=new(mon2sb,vif);
    sb=new(mon2sb);
  
  endtask
 
  task main;
    
fork 
//   agt.mem;
  agt.main;
  sb.main;
join
  endtask
  
  
endclass
  
  
  
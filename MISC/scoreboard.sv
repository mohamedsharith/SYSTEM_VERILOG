

class scoreboard;
   
//   parameter DSIZE =8
//  parameter ASIZE =4
  
  transaction pkt;
  mailbox mon2sb;
//   virtual intf vif
//   event hold;
  
  bit [7:0] read_data_sb;
  bit wfull;
  bit rempty;
  bit [7:0] write_data_sb[$];
  
 function new(mailbox mon2sb);
    this.mon2sb=mon2sb;
 endfunction
  
 
 
  task main;
    mon2sb=new();
    mon2sb.get(pkt);  
  
  
     
    forever begin
      
      $display("SCOREBOARD INSIDE LOGIC");
    
      if(pkt.wrst_n && !pkt.wfull && pkt.winc)begin
      
        write_data_sb.push_front(pkt.wdata);
        $display("SCOREBOARD :: data in queue:din=%0d",pkt.wdata);
      end
      else  $display("SCOREBOARD :: FIFO FULL"); 
        
      
    
    
      if(pkt.rrst_n && !pkt.rempty && pkt.rinc) begin 
        if(write_data_sb.pop_back()== pkt.rdata)begin
          $display("SCOREBOARD PASS");
        end
              else
                $display("SCOREBOARD FAIL");
              end
      
//       if(write_data_sb == pkt.wdata)begin
//       $display("WRITE DATA MATCHED ::write_data_SB=%0b,vif.wdata=%0b",write_data_sb,vif.wdata);
//     end
//       else begin
//         $display("WRITE DATA NOT MATCHED:: write_data_SB=%0b,vif.wdata=%0b",write_data_sb,vif.wdata);
//     end
      
      
    end
//  -> hold;   
  endtask
  
endclass
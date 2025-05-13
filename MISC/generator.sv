`include "transaction.sv"
class generator;
   
  transaction tr;
  mailbox gen2dri;
  
  function new(mailbox gen2dri);
    this.gen2dri=gen2dri;
  endfunction

   task main;
   
     repeat(100) begin
    tr=new();
    tr.randomize();
      $display("Generator::randomization done=%0d",tr.wdata);
    gen2dri.put(tr);
    end
  endtask
  

endclass
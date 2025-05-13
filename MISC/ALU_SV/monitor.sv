class monitor;
  virtual alu_int vif;
  mailbox mon2scb;
  
  function new(virtual alu_int vif,mailbox mon2scb);
    this.mon2scb=mon2scb;
    this.vif=vif;
  endfunction
  
  task run();
    forever begin
//       repeat(10)begin
      transaction trnx=new();
      trnx.a=vif.a;
      trnx.b=vif.b;
      trnx.alu_sel=vif.alu_sel;
      trnx.alu_out=vif.alu_out;
      trnx.display("MON");
      #10;
      mon2scb.put(trnx);
//       end
    end
  endtask  
endclass
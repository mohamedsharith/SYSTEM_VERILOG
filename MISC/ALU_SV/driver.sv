class driver;
  virtual alu_int vif;
  mailbox gen2drv;
  
  function new(virtual alu_int vif, mailbox gen2drv);
    this.gen2drv=gen2drv;
    this.vif=vif;
  endfunction
  
  task run();
    forever begin
      transaction trnx = new();
      gen2drv.get(trnx);
      vif.a=trnx.a;
      vif.b=trnx.b;
      vif.alu_sel=trnx.alu_sel;
//       vif.alu_expected=trnx.alu_expected;
      trnx.display("DRV");
      #10;
    end
  endtask  
endclass
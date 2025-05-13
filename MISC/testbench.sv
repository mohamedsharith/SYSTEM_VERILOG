`include "interface.sv" 
`include "test.sv"

`timescale 1ns/1ns

module testbench;

//   mailbox gen2dri;
  test tst;
  intf vif();
  
//   reg [`ASIZE-1:0] waddr, raddr;
//   wire [`ASIZE:0] wptr, rptr;

  
  fifo1 #(
    .DSIZE(8),  // Data size
    .ASIZE(4)   // Address size
  ) 
  dut(
    
      .rempty(vif.rempty),
      .rdata(vif.rdata),
      .wfull(vif.wfull),
      .wdata(vif.wdata),
      .winc(vif.winc),
      .wclk(vif.wclk),
      .wrst_n(vif.wrst_n),
      .rinc(vif.rinc),
      .rclk(vif.rclk),
    .rrst_n(vif.rrst_n)
);

  initial begin
//     gen2dri=new();
    tst=new(vif);
   
    fork
    tst.main;
    tst.mem;
    
    join
  end
  
    initial begin
      vif.wclk<=0;
      vif.rclk<=0;
      #10 vif.wrst_n<=0;
       vif.rrst_n<=0;
      
      
      #20 vif.wrst_n<=1;
       vif.rrst_n<=1;
      
       #35 vif.winc<=0;
       vif.rinc<=0;
      
     #50 vif.winc<=1;
       vif.rinc<=1;
      
       #2000 $finish;

    end
  
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);
  end
  

  
  /** Read and Write clocks in same speed**/
  always #10 vif.wclk=~vif.wclk;
  always #10 vif.rclk=~vif.rclk;
  
    /** Read clk > Write clk ** empty occurs earlier than full*/
//   always #10 vif.wclk=~vif.wclk;
//   always #15 vif.rclk=~vif.rclk;

      /** Read clk < Write clk **/
//   always #10 vif.wclk=~vif.wclk;
//   always #7.5 vif.rclk=~vif.rclk;
  
endmodule
  
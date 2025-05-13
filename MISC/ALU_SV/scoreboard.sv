class scoreboard;
  mailbox mon2scb;
  transaction trnx;
  bit [7:0] alu_expected;
  
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
  endfunction
  
  task run();
    trnx=new();
    case(alu_expected)
      
      3'b000: alu_expected =  trnx.a+trnx.b;	//adiition  [give by using handle name]
      3'b001: alu_expected =  trnx.a-trnx.b;	//subtraction
      3'b010: alu_expected =  trnx.a&trnx.b;	//bitwise and
      3'b011: alu_expected =  trnx.a|trnx.b;	//bitwise or
      3'b100: alu_expected =  trnx.a^trnx.b;	//bitwise xor
      3'b101: alu_expected =   ~trnx.a;	//bitwise not a
      3'b110: alu_expected =  trnx.a*trnx.b;	//multiplication
      3'b111: alu_expected =  trnx.a<<trnx.b;	//logical left shift
      default: alu_expected = 8'b000000000;
    endcase
    forever begin
      trnx=new();
      mon2scb.get(trnx);
      if(trnx.alu_out==alu_expected) 
        $display("[%0t] [SCB] PASSED",$time);
        else 
          $error("[%0t] [SCB] FAILED",$time);
            
    end
  endtask  
endclass
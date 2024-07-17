module datatype;
  integer a;                          //4 state - 32 bit signed
  int b;                                 //2 state - 32 bit signed
  shortint c;                         //2 state - 16 bit signed
  longint d;                          //2 state - 64 bit signed
  logic [7:0] e;                  //4-state - unsigned <91>logic<92>
  logic signed [7:0] f;      //4-state - signed <91>logic<92>
  byte g;                             //2-state signed <91>byte<92>
  reg [7:0] h;                       //4-state - unsigned <91>reg<92>

  initial
    begin
      a = 'h xxzz_ffff; //integer - 4 state - 32 bit signed
      b = -1;                //int - 2 state - 32 bit signed
      c = 'h fxfx;         //shortint - 2 state - 16 bit signed
      d = 'h ffff_xxxx_ffff_zzzz; //longint - 2 state - 64 bit signed
      e = -1 ; //signed assignment to unsigned 'logic<92>
      f = -1; //signed assignment to signed 'logic'
      g = -1; //signed byte
      h = 8'b xzxz_0101; //'reg'  - unsigned 4-state
    end

 initial
   begin #10;
     $display("a = %h b = %h c = %h d = %h", a, b, c, d);
     $display("e = %0d f=%0d g = %0d h = %b",e,f,g,h);
     #10 $finish(2);
   end
 endmodule

/* Simulation Log

a = xxzzffff   b = ffffffff   c = f0f0   d = ffff0000ffff0000
e = 255  f= -1  g = -1  h = xzxz0101 */

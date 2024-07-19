module sv_datatype;
  int a;					//2_state-32 bit signed
  integer b;				//4_state-32 bit signed
  shortint c;				//2_state-16 bit signed
  longint d;				//2_state-64 bit signed
  logic [7:0] e;			//4_state-unsigned
  logic signed [7:0] f;		//4_state-signed
  byte g;					//2_state-signed
  reg [7:0] h;				//4_state-unsigned
  
initial begin
  a=  -1 ;
  b= 'h xxzz_ffff;
  c= 'h fxfx;
  d= 'h ffff_xxxx_ffff_zzzz;
  e= -1;
  f= -1;
  g= -1;
  h= 8'bxzxz_0101;
end
   
initial begin 
  #10;
  $display("a=%0d b=%h c=%h d=%h",a,b,c,d);
  $display("e=%0d f=%0d g=%0d h=%b" ,e,f,g,h);
  end
endmodule

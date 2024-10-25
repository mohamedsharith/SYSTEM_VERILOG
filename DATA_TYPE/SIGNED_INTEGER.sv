module Signed_integer
  shortint var_a;
       int var_b;
   longint var_c;


  initial begin
    $display("sizes var_a=%0d var_b=%0d var_c=%0d",$bits(var_a),$bits(var_b),$bits(var_c));
    #1 var_a = 'h7FFF;
       var_b = 'h7FFF_FFFF;
       var_c = 'h7FFF_FFFF_FFFF_FFFF;
    #1 var_a += 1;
       var_b += 1;
       var_c += 1;
  end
  initial
  $monitor("var_a=%0d var_b=%0d var_c=%0d",var_a,var_b,var_c);
endmodule
    

module conversion;
  real real1, real2, real3;
  integer i1;
  bit [63:0] bit1;
  initial begin
      real1 = 123.45;
      i1 = $rtoi(real1);
      real2 = $itor(i1);
      bit1 = $realtobits ( real1);
      real3 = $bitstoreal(bit1);
    end
 initial begin
     #10;
     $display("real1 = %f real2 = %f i1=%0d",real1,real2,i1);
     $display("bit1 = %b real3=%f",bit1,real3);
     #10 $finish(2);
   end
 endmodule

/* 
____________________________OUTPUT________________________________________

real1 = 123.450000
i1=123
real2 = 123.000000
bit1 = 0100000001011110110111001100110011001100110011001100110011001101
real3=123.450000

*/

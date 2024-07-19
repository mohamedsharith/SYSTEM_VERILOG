
module string_example;
  string s2 = "hello world";
  string s3 = "hello\0world";
  string s4, s5;
  string s6 = "compare";
  string s7 = "compare";
  string s8;
  integer s2len, s3len;

  initial begin
    #10; $display ("s2=%s s3=%s",s2,s3);        // DISPLAY S2 AND S3 
    #100 $finish;
  end

 initial begin
      #15;
      s2len = s2.len( ); $display("String Length s2 = %0d",s2len);      //DISPLAY THE LENGTH OF THE STRING
      s3len = s3.len( ); $display("String Length s3 = %0d",s3len);

      if (s2 == s3) $display("s2 = s3"); else $display("s2 != s3");      //COMPARE THE STRING
      if (s6 == s7) $display("s6 = s7"); else $display("s6 != s7");

   s4 = s2.substr(1,6);                //PRINT THE STRING FROM 1-6
      $display("s4 = %s",s4);

      s5 = "later ";
      s8 = {3{s5}};                    //ASSIGN THE STRING
      $display("s8 = %s",s8);
    end
 endmodule



/* 
__________________OUTPUT____________________

s2=hello world s3=helloworld
String Length s2 = 11
String Length s3 = 10
s2 != s3
s6 = s7
s4 = ello w
s8 = later later later

*/

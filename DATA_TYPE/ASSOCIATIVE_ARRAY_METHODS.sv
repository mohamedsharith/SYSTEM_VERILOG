module aa_methods;
int fruits_10[string];
initial begin 
 fruits_10='{"apple":4,
            "orange":10,
           "plum" :9,
            "guava":1};
             
  $display("fruits_10.size()=%0d",fruits_10.size());
  $display("fruits_10.num()=%0d",fruits_10.num());
  
  if(fruits_10.exists ("orange"))
   $display("found %0d orange!",fruits_10["orange"]);
   
   
   if(!fruits_10.exists("apricots"))
   $display("sorry,season for apricots is over....");
   
   begin
    string f;
    if(fruits_10.first(f))
    $display("fruits_10.first [%s]=%0d",f,fruits_10[f]);
   end
   
   begin 
    string f;
    if(fruits_10.last(f))
    $display("fruits_10.last[%s]=%0d",f,fruits_10[f]);
   end
   
   begin
    string f="orange";
    if(fruits_10.prev(f))
    $display("fruits_10.prev[%S]=%0d",f,fruits_10[f]);
   end
   
   begin 
    string f="orange";
    if(fruits_10.next(f))
    $display("fruits_10.last[%s]=%0d",f,fruits_10[f]);
  end
  end
endmodule

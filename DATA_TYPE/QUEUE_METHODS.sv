module queue_methods;
  string  fruits[$]={"orange","apple","kiwi"};
  initial begin
    foreach (fruits[i])
    $display("fruits[%0d]=%s",i,fruits[i]);
    $display("fruits=%p",fruits);
   end
   
   initial begin 
      $display("number of fruits %0d fruits =%p",fruits.size(),fruits);
      
    fruits[$+1]={"pineapple"};
    $display("fruits=%p",fruits);
    
    fruits.insert(1,"peach");
     $display("number of fruits %0d fruits =%p",fruits.size(),fruits);
     $display("remove orange  ,fruits=%p",fruits[1:$]);
    
    fruits.delete(3);
     $display("number of fruits %0d fruits =%p",fruits.size(),fruits);
     
     fruits.push_front("apricots");
      $display("number of fruits %0d fruits =%p",fruits.size(),fruits);
      
      fruits.push_back("plum");
       $display("number of fruits %0d fruits =%p",fruits.size(),fruits);
       
        $display("number of fruits %0d fruits =%p",pop_front(),fruits.size(),fruits); 
         $display("number of fruits %0d fruits =%p",pop_back(),fruits.size(),fruits);
    fruits={};
    $display("after deletion ,fruits=%p",fruits);
  end
 
endmodule

    
      

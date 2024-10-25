module Da_associative_array;
  int fruits [] [string];
  
  initial begin
   fruits = new [2];
    
    
    fruits [0] = '{ "apple" : 1, "grape" : 2 };
    fruits [1] = '{ "melon" : 3, "cherry" : 4 };
   
    foreach (fruits[i])
      foreach (fruits[i][fruit])
        $display ("fruits[%0d][%s] = %0d", i, fruit, fruits[i][fruit]);
    
  end
endmodule

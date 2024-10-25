module aa_example;
int array1[int];
int array2[string];
string array3[string];

initial begin
array1='{1:22,
        6:34};
        
array2='{"ross":100,
         "joey":60};
         
array3='{"apple":"orange",
          "pears":"44"};
          
          
 $display("array1=%p",array1);
 $display("array2=%p",array2);
 $display("array3=%p",array3); 
 end    
          
endmodule

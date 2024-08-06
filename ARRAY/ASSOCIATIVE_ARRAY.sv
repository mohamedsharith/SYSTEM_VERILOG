module associative_array;
  int a[*];
  string abc[string];
  initial begin 
    a='{41:2,22:33,33:44};
    abc='{"fruits":"apple","yellow":"mango","colour":"banana"};
    $display("The values of array a is %p",a[22]);
    $display("The values of array abc is %p",abc["yellow"]);
    $display("The values of array a is %p",a);// the values are printed in ascending order while displaying the values in this array.
    $display("The values of array abc is %p",abc);//the strings are displayed in lexicographical order(i.e. strings will be displayed based on the first letter of each string is arranged in alphabetical order).
  end 
endmodule 



/* __________________________________OUTPUT___________________________________
 KERNEL: The values of array a is 33
# KERNEL: The values of array abc is "mango"
# KERNEL: The values of array a is '{22:33, 33:44, 41:2}
# KERNEL: The values of array abc is '{"colour":"banana", "fruits":"apple", "yellow":"mango"}
*/

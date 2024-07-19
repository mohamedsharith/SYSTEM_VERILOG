module dynamic_array_example;
  int array [];
  initial begin
    array = new[5];
    array = '{5, 10, 15, 20, 25};
    
    // Print elements of an array
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // size of an array
    $display("size of array = %0d", array.size());
    
    // Resizing of an array and copy old array content
    array = new[4] (array);
//     array = '{5,10,15,20,25,30};
    $display("size of array after resizing = %0d", array.size());
    
    // Print elements of an array
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // Override existing array: Previous array elememt values will be lost
    array = new[6];
    array ='{5,3,4,5,6,2,1};        //THE SIZE OF THE ARRAY SHOULD BE 7
    $display("size of array after overriding = %0d", array.size());      //SO THE DISPLAY SHOULD PRINT 7 ONLY
    
    // Print elements of an array
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    array.delete();
    $display("size of array after deleting = %0d", array.size());
    
  end
endmodule

/*
________________OUTPUT__________________

array[0] = 5
array[1] = 10
array[2] = 15
array[3] = 20
array[4] = 25
size of array = 5
size of array after resizing = 4
array[0] = 5
array[1] = 10
array[2] = 15
array[3] = 20
size of array after overriding = 7
array[0] = 5
array[1] = 3
array[2] = 4
array[3] = 5
array[4] = 6
array[5] = 2
array[6] = 1
size of array after deleting = 0 

*/

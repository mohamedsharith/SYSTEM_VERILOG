module array_ordering_method;
  int arr[8]={1,1,2,2,3,4,5,6};
  initial begin 
    arr.sort();
    $display("The sorted value of an array is %p",arr);
    arr.reverse();
    $display("The reverse order of an array is %p",arr);
    arr.rsort();
    $display("The reverse sorted order of an array is %p",arr);
    arr.shuffle();
    $display("The shuffled value of an array is %p",arr);
  end 
endmodule


/*
______________________OUTPUT__________________
# KERNEL: The sorted value of an array is '{1, 1, 2, 2, 3, 4, 5, 6}
# KERNEL: The reverse order of an array is '{6, 5, 4, 3, 2, 2, 1, 1}
# KERNEL: The reverse sorted order of an array is '{6, 5, 4, 3, 2, 2, 1, 1}
# KERNEL: The shuffled value of an array is '{2, 1, 6, 2, 3, 1, 4, 5}
*/

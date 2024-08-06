module array_locator_with_clause;
  int arr[6]={1,1,2,2,3,4};
  int result[$];
  initial begin 
    result=arr.min();
    $display("The minimum value of an array is %p",result);
    result=arr.max();
    $display("The maximum value of an array is %p",result);
    result=arr.unique();
    $display("The unique value of an array is %p",result);
    result=arr.unique_index();
    $display("The unique index value of an array is %p",result);
  end 
endmodule

/*
________________________________OUTPUT__________________________
# KERNEL: The minimum value of an array is '{1}
# KERNEL: The maximum value of an array is '{4}
# KERNEL: The unique value of an array is '{1, 2, 3, 4}
# KERNEL: The unique index value of an array is '{1, 3, 4, 5}
*/

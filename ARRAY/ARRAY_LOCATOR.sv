module array_locator;
  string arr[5]={"ba","ye","ma","old","new"};
  string result[$];
  int a[$];
  string check;
  initial begin 
    $display("The values inside the arr is %p",arr);
    result=arr.find(check)with(check>="old");
    $display("The value of result is %p",result);
    a=arr.find_index(check)with(check=="ye");
    $display("The value of index which satisfies the condition is %p",a);
    result=arr.find_first(check)with(check<"ye"&check>="new");
    $display("The value of result after this condition is %p",result);
    a=arr.find_first_index(check)with(check<"ye");
    $display("The value of index is %p",a);
    result=arr.find_last(check)with(check<"oldtown");
    $display("The value of the string in the array is %p",result);
    a=arr.find_last_index(check)with(check<"oldtown");
    $display("The value of index is %p",a);
  end
endmodule



/*
______________________OUTPUT____________________
# KERNEL: The values inside the arr is '{"ba", "ye", "ma", "old", "new"}
# KERNEL: The value of result is '{"ye", "old"}
# KERNEL: The value of index which satisfies the condition is '{1}
# KERNEL: The value of result after this condition is '{"old"}
# KERNEL: The value of index is '{0}
# KERNEL: The value of the string in the array is '{"new"}
# KERNEL: The value of index is '{4}
*/

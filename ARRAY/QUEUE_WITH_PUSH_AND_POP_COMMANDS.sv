module queue_data_type_2;
  string queue1[$];
  initial begin 
    queue1={"Hi","hallo","welcome","namaste"};
    $display("The value inside the queue1 is %p",queue1);
    $display("The value after pop front is %p",queue1.pop_front());
    $display("The value after pop back is %p",queue1.pop_back());
    queue1.push_back("namaskar");
    $display("The value after push back is %p",queue1);
    queue1.push_front("vanakkam");
    $display("The value after push front is %p",queue1);
  end 
endmodule


/*
________________________OUTPUT_________________________
# KERNEL: The value inside the queue1 is '{"Hi", "hallo", "welcome", "namaste"}
# KERNEL: The value after pop front is "Hi"
# KERNEL: The value after pop back is "namaste"
# KERNEL: The value after push back is '{"hallo", "welcome", "namaskar"}
# KERNEL: The value after push front is '{"vanakkam", "hallo", "welcome", "namaskar"}
*/

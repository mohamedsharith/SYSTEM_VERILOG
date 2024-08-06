module queue_data_type;
  int queue[$];
  initial begin 
    queue='{1,4,3,2,7,9};
    $display("The values inside the queue is %p",queue);
    $display("The size of the queue is %d",queue.size());
    queue.delete(0);
    $display("The values inside the queue after delete is %p",queue);
    queue.insert(1,5);
    $display("The values inside the queue after insert is %p",queue);
     queue.delete();
    $display("The values inside the queue after delete is %p and %d",queue,queue.size());
  end 
endmodule

/*
________________________OUTPUT_______________________
# KERNEL: The values inside the queue is '{1, 4, 3, 2, 7, 9}
# KERNEL: The size of the queue is           6
# KERNEL: The values inside the queue after delete is '{4, 3, 2, 7, 9}
# KERNEL: The values inside the queue after insert is '{4, 5, 3, 2, 7, 9}
# KERNEL: The values inside the queue after delete is '{} and           0
*/

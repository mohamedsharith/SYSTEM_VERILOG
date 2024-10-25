module Array_reduction;
  int array[4]='{1,2,3,4};
  int res [$];

  initial begin
    $display("sum =%0d",array.sum());
    $display("product =%0d",array.product());
    $display("and =0x%0h",array.and());
    $display("or =0x%0h",array.or());
    $display("xor =0x%0h",array.xor());

  end
endmodule

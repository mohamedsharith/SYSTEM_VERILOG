module darray;  
 int abc[ ][ ];  //array of arrays
 
 initial begin
   abc= new[3]; //sub array still not initialized
   $display("abc = ",abc);
 
   //Create sub-arrays
   foreach (abc[i]) begin
     abc[i] = new[4];
     $display("abc[%0d] = %p", i, abc[i]);
   end
   $display("abc = ",abc);
   
   //assign values to array and sub-array
   foreach(abc[i , j]) begin
     abc[i][j] = (j+1)+i;
   end
 
   //print
   foreach (abc[i , j]) begin
     $display("abc[%0d][%0d] = %0d", i, j, abc[i][j]);
   end
   $display("abc = ",abc);
 end
endmodule

/*
____________________________________OUTPUT_______________________________________
# KERNEL: abc = '{'{}, '{}, '{}}
# KERNEL: abc[0] = '{0, 0, 0, 0}
# KERNEL: abc[1] = '{0, 0, 0, 0}
# KERNEL: abc[2] = '{0, 0, 0, 0}
# KERNEL: abc = '{'{0, 0, 0, 0}, '{0, 0, 0, 0}, '{0, 0, 0, 0}}
# KERNEL: abc[0][0] = 1
# KERNEL: abc[0][1] = 2
# KERNEL: abc[0][2] = 3
# KERNEL: abc[0][3] = 4
# KERNEL: abc[1][0] = 2
# KERNEL: abc[1][1] = 3
# KERNEL: abc[1][2] = 4
# KERNEL: abc[1][3] = 5
# KERNEL: abc[2][0] = 3
# KERNEL: abc[2][1] = 4
# KERNEL: abc[2][2] = 5
# KERNEL: abc[2][3] = 6
# KERNEL: abc = '{'{1, 2, 3, 4}, '{2, 3, 4, 5}, '{3, 4, 5, 6}}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.

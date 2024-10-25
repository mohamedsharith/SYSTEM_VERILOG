module String_1;
  string dialog ="hello!";
   initial begin 
     $display("%s",dialog);
   
   foreach (dialog[i]) begin
      $display("%s",dialog[i]) ;
     end
     end
endmodule 

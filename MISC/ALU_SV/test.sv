program test(alu_int vif);
  environment env;
  initial begin
    env=new(vif);
    env.run();
  end
endprogram
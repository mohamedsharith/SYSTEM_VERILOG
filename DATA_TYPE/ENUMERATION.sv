typedef enum bit [1:0] {RED, YELLOW, GREEN} e_light;

module Enumeration1;
  e_light light;
 
  initial begin
  	light = GREEN;        
  	$display ("light = %s", light.name());

  	light = 0;               
  	$display ("light = %s", light.name());
  
    light = e_light'(1);      
  	$display ("light = %s", light.name());
 
  	
    if (light == RED | light == 2)
    	$display ("light is now %s", light.name());
    
  end    
endmodule

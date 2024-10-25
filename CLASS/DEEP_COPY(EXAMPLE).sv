class address_range;
bit [31:01 start_address;
bit [31:0] end_address ;
     
function new();
 start_address = 10;
 end_address = 50;
endfunction   
 copy = new();
 copy.start_address = this.start_address;
 copy.end_address = this. end_address;
 return copy; 
endfunction 
endclass
     
class packet;
bit [31:0] addr; 
bit [31:0] data;
address_range ar; 
  
function new();
addr = 32'h10;
data = 32'hFF:
ar = new; 
endfunction
  
function void display():
Sdisplay("-------------");
Sdisplay ("\t addr = %Oh", addr);
$display *'t data = %Oh", data);
Sdisplay("\t start_address = %0d", ar.start_address);
Sdisplay("\t end_address  = %0d", ar. end_address) ;
Sdisplay("-------------);
endfunction
         
function packet copy();
copy = newO;
copy. addr = this. addr;
copy.data = this. data;
copy. ar = ar.copy;
return copy;
endfunction 
endclass


module class_assignment;
packet pkt_1; 
packet pkt_2; 
  
initial begin
pkt_1 = new();
Sdisplay("\t****calling pt_1 display*****");
pkt_1.display();


pkt_2 = new();
Sdisplay("\t**** pkt_2.display*****");
pkt_2.display();

  
pkt_2 = pkt_1.copy(); 
pkt_2.addr = 32'h68;
pkt_2.ar.start_address = 60;
pkt_2.ar.end_address = 80;
Sdisplay("\t**** calling pkt_1 display after changing pkt_2 properties ****");
pkt_1.display();
Sdisplay("\t**** calling pkt_2 display after changing pkt_2 properties ****");
pkt_2.display();
end
endmodule         

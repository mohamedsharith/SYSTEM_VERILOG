class packet ;
  bit[31:0] addr;

function new(bit[31:0]addr);
  this.addr=addr;
endfunction

endclass

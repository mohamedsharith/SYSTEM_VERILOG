module tb;
   // 2-D packed array
   // 4 entries(rows) of 8 bits(columns) each
   // Total packed dimension (contiguous bits) = 4*8 = 32 bits
   bit [3:0][7:0]   m_data;   
 
  initial begin
    m_data = 32'h0102_0304;//Assign to 32 contiguous bits
 
    //display 2-d packed array as a contiguous set of bits
    $display ("m_data = 0x%h", m_data);  
 
    //display 1 byte each stored at m_data[0]...m_data[3]
    for (int i = 0; i < 4; i++) begin
        $display ("m_data[%0d] = 0x%0h", i, m_data[i]);
    end
  end
endmodule

/*
_______________________________OUTPUT________________________________________

# KERNEL: m_data = 0x00000001000000100000001100000100
# KERNEL: m_data[0] = 0x00000100
# KERNEL: m_data[1] = 0x00000011
# KERNEL: m_data[2] = 0x00000010
# KERNEL: m_data[3] = 0x00000001
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
*/

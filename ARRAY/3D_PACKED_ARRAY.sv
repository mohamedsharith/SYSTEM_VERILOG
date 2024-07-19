module tb;
  bit [2:0][1:0][7:0]   m_data;   // 3-D packed array
 
  initial begin
    // Assign 16-bits ([1:0][7:0]) at each of the three ([2:0])locations
    m_data[0] = 16'h0102;
    m_data[1] = 16'h0304;
    m_data[2] = 16'h0506;    
       
    // m_data as a single packed value
    $display ("m_data = 0x%h", m_data);
    
    //Assign the entire array with a single value
    m_data = 48'hcafe_face_0708;
    
    // m_data as a single packed value
    $display("m_data = 0x%h", m_data);        
 
      foreach (m_data[i]) begin
        $display ("m_data[%0d] = 0x%h", i, m_data[i]);
        foreach (m_data[i][j]) begin
          $display ("m_data[%0d][%0d] = 0x%h", i, j, m_data[i][j]);
        end
      end
  end
endmodule


/*
___________________________OUTPUT_______________________________

# KERNEL: m_data = 0x050603040102
# KERNEL: m_data = 0xcafeface0708
# KERNEL: m_data[2] = 0xcafe
# KERNEL: m_data[2][1] = 0xca
# KERNEL: m_data[2][0] = 0xfe
# KERNEL: m_data[1] = 0xface
# KERNEL: m_data[1][1] = 0xfa
# KERNEL: m_data[1][0] = 0xce
# KERNEL: m_data[0] = 0x0708
# KERNEL: m_data[0][1] = 0x07
# KERNEL: m_data[0][0] = 0x08
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
*/

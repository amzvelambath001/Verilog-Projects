module mux_4to1 (
    input wire I0,          // Input 0
    input wire I1,          // Input 1
    input wire I2,          // Input 2
    input wire I3,          // Input 3
    input wire S1,          // Select line 1 (MSB)
    input wire S0,          // Select line 0 (LSB)
    output wire Y           // Output
);
    wire S0';              // Declare a wire for the complement of S1 (S1')
    wire S1';              // Declare a wire for the complement of S0 (S0')
    
    assign S1' = ~S1;      // Complement of select line S1
    assign S0' = ~S0;      // Complement of select line S0
    
    // MUX logic
  assign Y = (S1' & S0' & I0) | 
              (S1' & S0 & I1) | 
              (S1 & S0' & I2) | 
              (S1 & S0 & I3);

endmodule

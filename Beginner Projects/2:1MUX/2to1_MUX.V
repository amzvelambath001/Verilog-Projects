module mux_2to1 (
    input wire I0,      // Input 0
    input wire I1,      // Input 1
    input wire S,       // Select line
    output wire Y       // Output
);
    wire S';           // Declare a wire for the complement of S (S')
    
    assign S' = ~S;    // Complement of select line S
    assign Y = (S' & I0) | (S & I1); // MUX logic
    
endmodule

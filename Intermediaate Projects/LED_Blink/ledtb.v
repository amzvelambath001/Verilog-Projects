`timescale 1ns/1ps

module tb_blink_led();

    // Inputs
    reg clk1;
    reg reset1;
    // Output
    wire led_out1;

  
    // Instantiate the Unit Under Test (UUT)
    blink_led uut (
      
        .clk(clk1),
        .reset(reset1),
        .led_out(led_out1)
    );

 
  
    // Clock generation (1 kHz clock = 1 ms period, in nanoseconds = 1_000_000 ns)
    always #50 clk1 = ~clk1; // Toggle clock every 500,000 ns for a 1 kHz clock

  

    // Initial block to simulate inputs
    initial begin
        // Initialize Inputs
        clk1 = 0;
        reset1 = 0;

        // Wait enough time to observe the LED toggling
        #50000; // Simulate for 5 ms

        $dumpfile("dump.vcd");
        $dumpvars;
        // Finish the simulation
        $finish;
    end

    // Monitor the values to observe the changes
    initial begin
      $monitor("Time=%0d, clk1=%b, led_out1=%b", $time, clk1, led_out1);
    end

endmodule

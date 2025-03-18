odule blink_led (
    
                input clk,  //1khz 2000 times/second 
                input reset,
      
                output reg led_out
);
   
//we will now describe the function.
  
  integer count = 0;
  
  reg led = 1'b0;
  
  
  assign led_out = led;
 
  always @(posedge clk)
    begin
    
      
      count <= count+1;
      
      if(count == 10) 
      begin
        led <= ~led;
        count   <= 0;
      end
      
    end 
endmodule

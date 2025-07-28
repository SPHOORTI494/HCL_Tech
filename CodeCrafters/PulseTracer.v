module pulseTracer(
  output reg clean_pulse,
  input wire clk,
  input wire reset,
  input wire noisy_input);
  
  reg temp1, temp2;
  always @(posedge clk)
      begin
    if(reset)
      begin
        clean_pulse <= 0;
        temp1 <= 0;
        temp2 <= 0;
      end
    else
      begin 
        temp1 <=noisy_input;
        temp2 <=temp1;
      
        
        if(temp1==0 && temp2 ==1)
          clean_pulse<=1;
        else
          clean_pulse<=0;
      end 
      end
endmodule

      
  
  

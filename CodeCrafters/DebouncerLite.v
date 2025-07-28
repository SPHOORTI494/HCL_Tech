module debouncerLite(
  output reg clean_pulse,
  input wire clk,
  input wire reset,
  input wire noisy_input);
  
  reg temp1, temp2,temp3;
  always @(posedge clk)
      begin
    if(reset)
      begin
        clean_pulse <= 0;
        temp1 <= 0;
        temp2 <= 0;
        temp3 <= 0;
      end
    else
      begin 
        temp1 <=noisy_input;
        temp2 <=temp1;
        temp3 <=temp2;
      
        
        if(temp1==1 && temp2 ==1 && temp3==1)
          clean_pulse<=1;
        else
          clean_pulse<=0;
      end 
      end
endmodule

      
  
  

// Code your design here
module count1s (output reg [8:0]count, input [7:0]data);
  integer i;
  always @(*) 
    begin
      count =0;
      for( i=0;i<8;i=i+1)
        count = count+data[i];
    end
  
endmodule
  
  
 

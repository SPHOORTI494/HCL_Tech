// Code your design here

module nibbleSwapper(output reg [7:0] arr , input ctrl, input  [7:0] inarr);
  
  

  always@(*)
    begin
      if(ctrl)
        arr = { inarr[3:0],inarr[7:4]};
      else
        arr = arr;
    end
  
endmodule

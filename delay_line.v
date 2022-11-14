`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2022 13:59:34
// Design Name: 
// Module Name: delay_line
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module delay_line(
//input ipulse,isel,
//output oout
input ipulse,
input [C_LENGTH - 1 : 0] ichallenge,
output oout_1,
output oout_2
    );
    `ifndef parameters
`define  parameters

 parameter C_LENGTH = 32; //the length of the chain of the multiplexer 
`endif 
    (* dont_touch = "yes" *) wire  [2 * C_LENGTH + 1 : 0] net;
 //   wire [2 * C_LENGTH + 1 : 0] net;
    assign net [0] =ipulse;
    assign net [1] = ipulse;
    generate
    genvar i;
    for (i =1; i <= C_LENGTH; i = i +1)
    begin
    mux inst_mux_1(
    .ia(net[i *2 -2]),
    .ib(net[i *2 -1]),
    .isel(ichallenge[i-1]),
    .oout(net[i *2])
    );
     mux inst_mux_2(
    .ia(net[i *2 - 1]),
    .ib(net[i *2 -2]),
    .isel(ichallenge[i - 1]),
    .oout(net[i * 2 +1])
    );
    end
           
    endgenerate
    
    assign oout_1 = net [C_LENGTH * 2];
    assign oout_2 = net [C_LENGTH * 2 + 1];
   // wire o1, o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16;
    
   // mux M1(ipulse,ipulse,isel,o1);
    //    mux M2(ipulse,ipulse,isel,o2);
   
    //   mux M3(o1,o2,isel,o3);
      //  mux M4(o2,o1,isel,o4);
        
    //mux M5(o3,o4,isel,o5);
    //    mux M6(o4,o3,isel,o6);
   
     //  mux M7(o5,o6,isel,o7);
     //   mux M8(o6,o5,isel,o8);
        
     //    mux M9(o7,o8,isel,o9);
      //  mux M10(o8,o7,isel,o10);
   
      // mux M11(o9,o10,isel,o11);
      //  mux M12(o10,o9,isel,o12);
        
      //   mux M13(o11,o12,isel,o13);
      //  mux M14(o12,o11,isel,o14);
   
     //  mux M15(o13,o14,isel,o15);
     //   mux M16(o14,o13,isel,o16);
        
       // dff D1(o15,o16,oout);
endmodule

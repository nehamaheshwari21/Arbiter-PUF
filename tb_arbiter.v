`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2022 11:11:12
// Design Name: 
// Module Name: tb_arbiter
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


module tb_arbiter;
reg ipulse;
reg [31:0] ichallenge;

wire oresponse;
arbiter_puf dut(ipulse,ichallenge,oresponse);

//int main(void)

// set_challenge (integer challenge);
//void create_pulse();
//integer get_response();
	//integer challenge;
	//integer resp32;
	//integer i;
	//integer response;
initial begin

  ipulse=1'b0;
     forever #40 ipulse = ~ipulse; end
initial  repeat(100)
begin
ichallenge =$random;
#32 $display ("ichallenge=%d",ichallenge);

//#32 ichallenge=4'b00000000;
//for (ichallenge = 0 ; ichallenge < 100000; ichallenge=ichallenge + 1 ) begin
				//ichallenge(challenge);

			//		resp32 =0;
					
			//		for(i = 0; i< 3; i=i+1) begin
				//		create_pulse();
				//		response = get_response();
				//		resp32 = resp32 | (response << i);
					

				//	if ((resp32 != 0x00000000) && (resp32 != 0xFFFFFFFF))

				//		$display("challenge = %d ,response =%x;\n\r", challenge, resp32);
					

 
//#32 ichallenge=4'b0000;
//#32 ichallenge=4'b0100;
//#32 ichallenge=4'b0010;
//#32 ichallenge=4'b0001;

//end
//end
   end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:26 09/01/2011 
// Design Name: 
// Module Name:    ssg_dec_core 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ssg_dec_core
#( //parameter declarations
   parameter CLK_FREQUENCY_HZ = 50000000, //CLK frequency, default is 50Mhz
   parameter ANODE_ACTIVE_LOW = 1 //Anode is active-low?
   )
(
    input CLK, //system clock
	input RESET,
    input [15:0] DIN, //HEX data to be displayed
	input [31:0] SEG_DATA, //Seven Segment data for each digit, including decimal point
	input [23:0] REFRESH_RATE_DIV, //Division rate for refresh rate
	input [3:0] BLANK, //Blank signal for each anode
	input AUTOBLANK, //Automatically blank most significant digits when in HEX mode
	input [3:0] BLINK, //enable blink for each anode
	input [2:0] BLINK_RATE, //Blink rate
	input USE_SEGMENT_DATA, //enable usage of seven segment data instead of the HEX data
    output [3:0] AN, //Anode output
    output [7:0] SEG //Seven-Segment output
	 );

	//Blink rate division parameters
	 localparam 	DIV_4S = CLK_FREQUENCY_HZ*2,
					DIV_2S = CLK_FREQUENCY_HZ,
					DIV_1HZ = CLK_FREQUENCY_HZ/2,
					DIV_2HZ = CLK_FREQUENCY_HZ/4,
					DIV_4HZ = CLK_FREQUENCY_HZ/8,
					DIV_8HZ = CLK_FREQUENCY_HZ/16,
					DIV_10HZ = CLK_FREQUENCY_HZ/20,
					DIV_12HZ = CLK_FREQUENCY_HZ/24;

	//define the internal signals
	//Refresh rate divider
	reg [23:0] CE_div;
	wire CE_An;
	
	//Blink rate divider
	reg [31:0] BLINK_div;
	reg [31:0] BLINK_DIV_VAL;
	reg BLINK_CE;
	
	reg [3:0] An_Int; //shift register to walk 0 on anodes;
	wire [3:0] An_Cmb; //form the combinational circuit for the anode blanking and/or blinking
	reg [6:0] Ssg_int; //signal coming from the seven segment decoder
	
	//signal multiplexed from the input data
	wire [3:0] mux_data;
	
	//signal multiplexed from the segment data
	wire [6:0] Seg_mux;
	
	//decimal point multiplexed
	wire Dp_mux;
	
	//auto blank signal
	wire [2:0] BLANK_Auto;
	
	//create the refresh rate divider
	always @ (posedge CLK)
   if (RESET) CE_div <= {24{1'b0}};
	else if (CE_div == (REFRESH_RATE_DIV - 1 )) CE_div <={24{1'b0}};
	else CE_div <= CE_div + {{23{1'b0}}, 1'b1};
	
	//assign the divided refresh rate signal
	assign CE_An = (CE_div == (REFRESH_RATE_DIV - 1 )) ? 1'b1:1'b0;
	
	//assign the blink rate division value
	always @ *
		case(BLINK_RATE)
		3'b000: BLINK_DIV_VAL <= DIV_4S;
		3'b001: BLINK_DIV_VAL <= DIV_2S;
		3'b010: BLINK_DIV_VAL <= DIV_1HZ;
		3'b011: BLINK_DIV_VAL <= DIV_2HZ;
		3'b100: BLINK_DIV_VAL <= DIV_4HZ;
		3'b101: BLINK_DIV_VAL <= DIV_8HZ;
		3'b110: BLINK_DIV_VAL <= DIV_10HZ;
		3'b111: BLINK_DIV_VAL <= DIV_12HZ;
		default: BLINK_DIV_VAL <= DIV_1HZ;
		endcase
	
	//create the blink rate divider
	always @ (posedge CLK)
   if (RESET) BLINK_div <= 0;
	else if (BLINK_div >= (BLINK_DIV_VAL - 1 )) BLINK_div <= 0;
	else BLINK_div <= BLINK_div + 1;
	
	//assign the divided blink signal as 50% duty cycle
	always @ (posedge CLK)
	if (RESET) BLINK_CE <= 1'b0;
	else if (BLINK_div == (BLINK_DIV_VAL - 1 )) BLINK_CE <= ~BLINK_CE;
	
	//assign the walking 0 register
	always @ (posedge CLK or posedge RESET)
	if (RESET) An_Int<=4'hf;
	else if (CE_An)
		if (An_Int==4'b0111 || An_Int==4'b0000 || An_Int==4'b1111)
			An_Int<=4'b1110;
		else An_Int <= {An_Int[2:0],1'b1}; //shift register

//assign the autoblank signals
assign BLANK_Auto =	((AUTOBLANK == 1'b1) && (DIN[15:4] == 12'h000)) ?	3'b111 :
                     ((AUTOBLANK == 1'b1) && (DIN[15:8] == 8'h00)) ?	3'b110 :
                     ((AUTOBLANK == 1'b1) && (DIN[15:12] == 4'h0)) ?	3'b100 : 3'b000;

//assign the combinational anode signal
assign An_Cmb = BLANK | {BLANK_Auto, 1'b0} | (BLINK & {4{BLINK_CE}}) | An_Int;

//assign the anode output
assign AN = (ANODE_ACTIVE_LOW) ? An_Cmb : ~An_Cmb;
	//multiplex from the input data

assign mux_data = 	(An_Int==4'b1110) ? DIN[3:0]  :
					(An_Int==4'b1101) ? DIN[7:4]  :
					(An_Int==4'b1011) ? DIN[11:8] :
					(An_Int==4'b0111) ? DIN[15:12] : 4'h0;

assign 	Seg_mux = 	(An_Int==4'b1110) ? SEG_DATA[7:1] :
					(An_Int==4'b1101) ? SEG_DATA[15:9] :
					(An_Int==4'b1011) ? SEG_DATA[23:17]  :
					(An_Int==4'b0111) ? SEG_DATA[31:25]   : 7'b1111111;

assign  Dp_mux = 	(An_Int==4'b1110) ? SEG_DATA[0] :
					(An_Int==4'b1101) ? SEG_DATA[8] :
					(An_Int==4'b1011) ? SEG_DATA[16]  :
					(An_Int==4'b0111) ? SEG_DATA[24]   : 1'b1;
					
//write the seven segment decoder
always @ (mux_data)
case (mux_data)
	4'b0001: Ssg_int=7'b1111001;
	4'b0010: Ssg_int=7'b0100100;
	4'b0011: Ssg_int=7'b0110000;
	4'b0100: Ssg_int=7'b0011001;
	4'b0101: Ssg_int=7'b0010010;
	4'b0110: Ssg_int=7'b0000010;
	4'b0111: Ssg_int=7'b1111000;
	4'b1000: Ssg_int=7'b0000000;
	4'b1001: Ssg_int=7'b0010000;
	4'b1010: Ssg_int=7'b0001000;
	4'b1011: Ssg_int=7'b0000011;
	4'b1100: Ssg_int=7'b1000110; 
	4'b1101: Ssg_int=7'b0100001;
	4'b1110: Ssg_int=7'b0000110;
	4'b1111: Ssg_int=7'b0001110;
	default: Ssg_int=7'b1000000;
endcase

//assign the seven segment output
assign SEG = (USE_SEGMENT_DATA) ? {Seg_mux, Dp_mux} : {Ssg_int, Dp_mux};
		
endmodule

`timescale 1ns / 1ps

module Reg_File(WE, RD, RS1, RS2, Din, Dout_1, Dout_2, clk);
input WE;
input clk;
input[4:0] RD, RS1, RS2;
input [31:0]Din;
output [31:0] Dout_1, Dout_2;

reg [31:0] RFile[31:0];

    initial RFile[0] = 0;    initial RFile[2] = 2;
    initial RFile[1] = 1;    initial RFile[3] = 3;
    initial RFile[4] = 4;    initial RFile[5] = 5;
    initial RFile[6] = 6;    initial RFile[7] = 7;
    initial RFile[8] = 8;    initial RFile[9] = 9;
    initial RFile[10] = 10;   initial RFile[11] = 11;
    initial RFile[12] = 12;    initial RFile[13] = 13;
    initial RFile[14] = 14;    initial RFile[15] = 15;
    initial RFile[16] = 16;    initial RFile[17] = 17;
    initial RFile[18] = 18;    initial RFile[19] = 19;
    initial RFile[20] = 20;    initial RFile[21] = 21;
    initial RFile[22] = 22;    initial RFile[23] = 23;
    initial RFile[24] = 24;    initial RFile[25] = 25;
    initial RFile[26] = 26;    initial RFile[27] = 27;
    initial RFile[28] = 28;    initial RFile[29] = 29;
    initial RFile[30] = 30;    initial RFile[31] = 31;
    
    assign Dout_1 = RFile[RS1];
    assign Dout_2 = RFile[RS2];
    
    always@(posedge clk)
    begin
        if(WE == 1'b1)
            begin
                RFile[RD] = Din;
            end
    end
endmodule

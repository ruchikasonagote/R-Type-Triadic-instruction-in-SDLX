`timescale 1ns / 1ps

module R_triadic(P, OUT, temp, clk, p5);
input clk,p5;
input[3:0]P;
reg [31:0] IR;
output reg [15:0] OUT;
 wire [31:0]Y;
input [7:0]temp;
wire [31:0] dout1, dout2;

always @*
    begin
    if (P[0]) begin
        IR[7:0] = temp;
    end
    else if (P[1]) begin
        IR[15:8] = temp;
    end
    else if (P[2]) begin
        IR[23:16] = temp;
    end
    else if (P[3]) begin
        IR[31:24] = temp;
    end
    if (p5) begin
      OUT = Y[15:0];
      end
    else begin
      OUT = Y[31:16];
    end
    end

Reg_File reg_32_32( .WE(1),.RD(IR[15:11]), .RS1(IR[25:21]), .RS2(IR[20:16]), .Dout_1(dout1), .Dout_2(dout2), .clk(clk), .Din(Y) );
ALU Alu(.A(dout1),  .B(dout2), .ALU_ctrl(IR[5:0]), .Y(Y) );

endmodule


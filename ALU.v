`timescale 1ns / 1ps

module ALU(A, B, ALU_ctrl, Y);
input [31:0]A, B;
input [5:0]ALU_ctrl;
output reg [31:0]Y;
reg signed [31:0] AA, BB;


always@(ALU_ctrl) begin
    AA = A; BB = B;
    case(ALU_ctrl)
        1:  Y = A + B;              //ADD
        2:  Y = A - B;              //SUB
        3:  Y = A & B;              //AND
        4:  Y = A | B;              //OR
        5:  Y = A ^ B;              //XOR
        6:  Y = A << B;     //SLL(shift left logical)
        7:  Y = A >> B;    //SRL(shift right logical)
        8:  Y = A >>> B;   //SRA(shift right arithmetic)
        9:  Y = {A[30:0],A[31]};    //ROL(rotate left)
        10: Y = {A[0], A[31:1]};    //ROR(rotate right)
        11: Y = (A[31])? ( (B[31])? (A>B): 1) : ( (B[31])? 0: (A>B) );          //SLT(signed less than)
        12: Y = (AA>BB)? 1:0;                                                   //SLT(signed greater than)
        13: Y = (AA<=BB)? 1:0;                                                  //SLE(signed less than or equal to)
        14: Y = ~( (A[31])? ( (B[31])? (A>B): 1) : ( (B[31])? 0: (A>B) ) );     //SGE(signed greater than or equal to)
        15:  Y = (A>B)? 1:0;        //UGT
        16:  Y = (A<B)? 1:0;        //ULT
        17:  Y = (A>=B)? 1:0;       //ULE
        18:  Y = (A<=B)? 1:0;       //UGE 
        
        default: Y = 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
        
    endcase

end
endmodule

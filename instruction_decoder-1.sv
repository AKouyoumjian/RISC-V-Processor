`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2023 01:07:40 PM
// Design Name: 
// Module Name: instruction_decoder
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


module instruction_decoder(RegWrite, RegDst, instr_i, ALUSrc1, ALUSrc2, ALUOp, MemWrite, MemToReg, Regsrc, opcode, immediate, offset, nzimm);
    output logic RegWrite, RegDst, ALUSrc1, ALUSrc2, MemWrite, MemToReg, Regsrc;
    output logic[3:0] ALUOp;
    output logic[15:0] instr_i;
    input logic signed[6:0] immediate;
    input logic signed[5:0] nzimm;
    input logic signed[8:0] offset;
    input logic signed[3:0] opcode;
    
    always @(RegWrite, RegDst, instr_i, ALUSrc1, ALUSrc2, ALUOp, MemWrite, MemToReg, Regsrc, opcode, immediate, offset, nzimm) begin
    case(opcode[3:0])
        4'b0000:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = immediate;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0000;
                MemWrite = 1'b0;
                MemToReg = 1'b1;
                Regsrc = 1'b0;
            end
        4'b0001:
            begin
                RegWrite = 1'b0;
                RegDst = 1'b0;
                instr_i = immediate;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0000;
                MemWrite = 1'b1;
                MemToReg = 1'b0;
                Regsrc = 1'b0;
            end
        4'b0010:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = 16'b0;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b0;
                ALUOp = 4'b0000;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b0011:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = nzimm;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0000;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b0100:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = 16'b0;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b0;
                ALUOp = 4'b0010;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b0101:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = immediate;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0010;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b0110:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = 16'b0;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b0;
                ALUOp = 4'b0011;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b0111:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = 16'b0;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b0;
                ALUOp = 4'b1000;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b1000:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = nzimm;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0100;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b1001:
            begin
                RegWrite = 1'b1;
                RegDst = 1'b1;
                instr_i = nzimm;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0101;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b1;
            end
        4'b1010:
            begin
                RegWrite = 1'b0;
                RegDst = 1'b0;
                instr_i = offset;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0110;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b0;
            end
        4'b1011:
            begin
                RegWrite = 1'b0;
                RegDst = 1'b0;
                instr_i = offset;
                ALUSrc1 = 1'b0;
                ALUSrc2 = 1'b1;
                ALUOp = 4'b0111;
                MemWrite = 1'b0;
                MemToReg = 1'b0;
                Regsrc = 1'b0;
            end
        default:
            begin
            end
        endcase
     end
endmodule

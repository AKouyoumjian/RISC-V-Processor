`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2023 01:01:33 PM
// Design Name: 
// Module Name: alu
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


module alu(input logic signed [15:0]a, [15:0]b,
    input logic [3:0]s,
    output logic [15:0]f, ovf, output logic take_branch);
    
    always @(a, b, s, f, ovf, take_branch)begin   
    case (s[3:0])
      4'b0000:
        begin
            f = a+b;
            ovf = (~a[15]&~b[15]&f[15])|(a[15]&b[15]&~f[15]);
            take_branch = 1'b0;
        end
      4'b0001:
        begin
            f = ~b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end
      4'b0010:
        begin
            f = a&b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end 
      4'b0011:
        begin
            f = a|b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end 
      4'b0100:
        begin
            f = a>>>b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end 
      4'b0101:
        begin
            f = a<<b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end 
      4'b0110:
        begin
            f = 16'b0;
            ovf = 1'b0;
            take_branch = (a==0) ? 1 : 0;
        end 
      4'b0111:
        begin
            f = 16'b0;
            ovf = 1'b0;
            take_branch = ~(a==0) ? 1 : 0;
        end
      4'b1000:
        begin
            f = a^b;
            ovf = 1'b0;
            take_branch = 1'b0;
        end
      default: 
        begin
            f = 16'b0;
            ovf = 1'b0;
            take_branch = 1'b0;
        end
      endcase
end
endmodule

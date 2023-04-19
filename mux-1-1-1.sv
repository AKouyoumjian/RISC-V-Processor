`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 02:16:48 PM
// Design Name: 
// Module Name: mux
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


module mux(in0, in1, s, out); 
    input logic [15:0] in0, in1;
    input logic s;
    output logic [15:0] out;
    
    always @(in0, in1, s, out)begin   
    case (s)
      1'b0:
        begin
            out = in0;
        end
      default:
        begin
            out = in1;
        end
      endcase
   end
endmodule
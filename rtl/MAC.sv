`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2024 09:01:42 AM
// Design Name: 
// Module Name: MAC
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


module MAC(
input clk,
input rst,
input logic signed [7:0] a,
input logic signed [7:0] b,

output logic [7:0] x,
output logic [7:0] y,
output logic [15:0] out
);

logic [7:0] x_d;
logic [7:0] y_d;
logic [15:0] out_d;

// pass on a and b
always_comb begin
    x_d = a;
    y_d = b;
end

// mac op
always_comb begin
    out_d = $signed(a)*$signed(b) + out;
end

always @(posedge clk, negedge rst) begin
    if (!rst) begin
        x <= 0;
        y <= 0;
        out <= 0;
    end else begin
        x <= x_d;
        y <= y_d;
        out <= out_d;
    end
end
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2024 02:34:29 PM
// Design Name: 
// Module Name: SystolicArray
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


module SystolicArray(
input logic clk,
input logic rst,
input logic [7:0] A11,
input logic [7:0] A21,
input logic [7:0] A31,
input logic [7:0] B11,
input logic [7:0] B12,
input logic [7:0] B13,
output logic [143:0] C
);

// signals in between the array
logic [7:0] a11_12, a12_13,
            a21_22, a22_23,
            a31_32, a32_33,
            b11_21, b21_31,
            b12_22, b22_32,
            b13_23, b23_33;

// buffer registers
logic [7:0] a21_buffer;
logic [7:0] a31_buffer1, a31_buffer2;

logic [7:0] b12_buffer;
logic [7:0] b13_buffer1, b13_buffer2;

// logic for buffer registers
always_ff @(posedge clk, negedge rst) begin
    if (!rst) begin
        a21_buffer <= 0;
        a31_buffer1 <= 0;
        a31_buffer2 <= 0;
        
        b12_buffer <= 0;
        b13_buffer1 <= 0;
        b13_buffer2 <= 0;
    end else begin
        a21_buffer <= A21;
        a31_buffer1 <= A31;
        a31_buffer2 <= a31_buffer1;
        
        b12_buffer <= B12;
        b13_buffer1 <= B13;
        b13_buffer2 <= b13_buffer1;
    end
end



MAC mac11 (clk, rst, A11, B11, a11_12, b11_21, C[15:0]);
MAC mac12 (clk, rst, a11_12, b12_buffer, a12_13, b12_22, C[31:16]);
MAC mac13 (clk, rst, a12_13, b13_buffer2, , b13_23, C[47:32]);

MAC mac21 (clk, rst, a21_buffer, b11_21, a21_22, b21_31, C[63:48]);
MAC mac22 (clk, rst, a21_22, b12_22, a22_23, b22_32, C[79:64]);
MAC mac23 (clk, rst, a22_23, b13_23, , b23_33, C[95:80]);

MAC mac31 (clk, rst, a31_buffer2, b21_31, a31_32, , C[111:96]);
MAC mac32 (clk, rst, a31_32, b22_32, a32_33, , C[127:112]);
MAC mac33 (clk, rst, a32_33, b23_33, , , C[143:128]);


endmodule

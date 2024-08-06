`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 02:41:59 PM
// Design Name: 
// Module Name: SystolicArray_tb
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


module SystolicArray_tb();

logic clk, rst;
logic [7:0] A11, A21, A31,
            B11, B12, B13;

logic [143:0] C;

// dut instantiation
SystolicArray dut(
    clk,
    rst,
    A11,
    A21,
    A31,
    B11,
    B12,
    B13,
    C
);

initial begin
    clk = 0;
    rst = 1;
    forever #10 clk = ~clk;
end

integer i;

initial begin
    @(posedge clk)
    rst = 0;

    @(negedge clk)
    rst = 1;
    A11 = 1;    A21 = 4;    A31 = 7;
    B11 = 1;    B12 = 2;    B13 = 3;

    @(negedge clk)
    A11 = 2;    A21 = 5;    A31 = 8;
    B11 = 4;    B12 = 5;    B13 = 6;

    @(negedge clk)
    A11 = 3;    A21 = 6;    A31 = 9;
    B11 = 7;    B12 = 8;    B13 = 9;
    
    @(negedge clk)
    A11 = 0;    A21 = 0;    A31 = 0;
    B11 = 0;    B12 = 0;    B13 = 0;
    
    #90;
    for (i=0; i<9; ++i) begin
        $display("C[%0d]: %d", i+1, C[i*16+:16]);
    end
    

end
endmodule

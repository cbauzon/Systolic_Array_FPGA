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
logic [23:0] A, B;
logic [7:0] A11, A21, A31,
            B11, B12, B13;

logic [143:0] C;
logic valid;

assign A = {A31, A21, A11};
assign B = {B13, B12, B11};

// dut instantiation
SystolicArray dut(
    clk,
    rst,
    A,
    B,
    C,
    valid
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
    
    @(valid == 1);
    for (i=0; i<9; ++i) begin
        $display("C[%0d]: %d", i+1, C[i*16+:16]);
    end
    $display("\n");

    @(posedge clk)
    rst = 0;
    
    drive_inputs(1, 1, 4, 7, 9, 8, 7);
    drive_inputs(0, 2, 5, 8, 6, 5, 4);
    drive_inputs(0, 3, 6, 9, 3, 2, 1);
    drive_inputs(0, 0, 0, 0, 0, 0, 0);

    @(valid == 1);
    for (i=0; i<9; ++i) begin
        $display("C[%0d]: %d", i+1, C[i*16+:16]);
    end
    

end

task drive_inputs(input rst_on, input logic [23:0] in1, in2, in3, in4, in5, in6);
    @(negedge clk)
    if (rst_on) rst = 1;
    else rst = 0;
    A11 = in1;    A21 = in2;    A31 = in3;
    B11 = in4;    B12 = in5;    B13 = in6;

endtask



endmodule

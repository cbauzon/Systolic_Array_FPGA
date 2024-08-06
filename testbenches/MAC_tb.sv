`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 02:04:49 PM
// Design Name: 
// Module Name: MAC_tb
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


module MAC_tb();

logic i_clk, i_rst_n;
logic [7:0] i_a, i_b;

logic [7:0] o_x, o_y;
logic [15:0] o_out;

// dut instantiation
MAC dut(
    i_clk,
    i_rst_n,
    i_a,
    i_b,
    o_x,
    o_y,
    o_out
);

// i_clk generation
initial begin
    i_clk = 0;
    i_rst_n = 1;
    forever #10 i_clk = ~i_clk;
end

initial begin
    @(posedge i_clk)
    i_rst_n = 0;
    
    @(negedge i_clk)
    i_rst_n = 1;
    std::randomize(i_a, i_b) with {i_a < 10; i_b < 10;};

    
    repeat(4) begin
    @(negedge i_clk)
    std::randomize(i_a, i_b) with {i_a < 10; i_b < 10;};
    end
    $finish;
end
endmodule

module in_cntrl_logic_tb();

logic         i_clk, i_rst_n;
logic [23:0]  i_A;
logic [23:0]  i_B;
logic         i_push;

logic [23:0] o_A_out;
logic [23:0] o_B_out;

// dut instantiation
in_cntrl_logic dut(
    i_clk, i_rst_n,
    i_A,
    i_B,
    i_push,

    o_A_out,
    o_B_out
);

// i_clk generation
initial begin
    i_clk = 0;
    i_rst_n = 1;
    forever #10 i_clk = ~i_clk;
end

initial begin
    do_rst(1);
    i_rst_n = 1;
    i_A = 'h111;
    i_B = 'h222;
    i_push = 1;

    @(negedge i_clk)
    i_push = 0;
    i_A = 'h222;
    i_B = 'h333;
    
    @(negedge i_clk)
    i_push = 1;
    i_A = 'h333;
    i_B = 'h444;

    @(negedge i_clk)
    i_push = 1;
    i_A = 'h444;
    i_B = 'h555;

    @(negedge i_clk)
    i_push = 0;
    i_A = 'h555;
    i_B = 'h667;

    @(negedge i_clk)
    i_push = 0;
    
end

task do_rst(input int num_times);
    repeat(num_times) begin
        @(posedge i_clk)
        i_rst_n = 0;
    end
    
    @(negedge i_clk)
    i_rst_n = 1;
endtask

endmodule
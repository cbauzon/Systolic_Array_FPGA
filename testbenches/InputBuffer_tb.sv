`timescale 1ns/1ps

module InputBuffer_tb();

parameter DATA_WIDTH = 24, ADDR_WIDTH=2;

logic i_clk, i_rst_n;
logic i_rd, i_wr;
logic [DATA_WIDTH-1:0] i_wr_data;

logic [DATA_WIDTH-1:0] o_data;
logic o_is_empty, o_is_full;

InputBuffer #(DATA_WIDTH, ADDR_WIDTH) dut(
    i_clk,
    i_rst_n,
    i_rd,
    i_wr,
    i_wr_data,
    o_data,
    o_is_empty,
    o_is_full
);

initial begin
    i_clk = 0;
    i_rst_n = 1;
    i_rd = 0;
    i_wr = 0;
    forever #10 i_clk = ~i_clk;
end

initial begin
    do_rst(1);

    write_data('h11_1111);
    write_data('h22_2222);
    write_data('h33_3333);
    

    @(negedge i_clk)
    i_wr = 0;

    read_data_n_times(3);
    read_data_n_times(3);
    
    do_rst(5);
    read_data_n_times(5);
    write_data('h55_5555);
    @(negedge i_clk)
    i_wr = 0;
    $finish;

end

task read_data_n_times(input int n);
    repeat(n) begin
        read_data();
    end
    @(negedge i_clk)
    i_rd = 0;
endtask

task read_data();
    @(negedge i_clk)
    i_rd = 1;
    i_wr = 0;
    
    @(posedge i_clk)
    $display("%h", o_data);

endtask

task write_data(input logic [DATA_WIDTH-1:0] data);
    @(negedge i_clk)
    i_wr = 1;
    i_rd = 0;
    i_wr_data = data;
    
endtask

task do_rst(int num_reps);
    repeat(num_reps) begin
        @(posedge i_clk)
        i_rst_n = 0;
    end
    
    @(negedge i_clk)
    i_rst_n = 1;
endtask


endmodule 
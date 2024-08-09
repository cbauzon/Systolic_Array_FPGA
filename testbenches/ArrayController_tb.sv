`timescale 1ns / 1ps

module ArrayController_tb();

    logic i_clk;
    logic i_rst_n;

    // AXIS Slave interface
    logic s_axis_valid;
    logic s_axis_ready;

    // AXIS Master interface
    logic m_axis_ready;
    logic m_axis_valid;

    // Buffer interface
    logic buff_is_empty, buff_is_full;
    logic buff_rst_n;
    logic buff_rd, buff_wr;

    // Array interface
    logic arr_C_valid;
    logic arr_rst_n;

    ArrayController dut(
        i_clk, 
        i_rst_n, 
        s_axis_valid, 
        s_axis_ready, 
        m_axis_ready, 
        m_axis_valid, 
        buff_is_empty, 
        buff_is_full,
        buff_rst_n,
        buff_rd, 
        buff_wr, 
        arr_C_valid,
        arr_rst_n
    );

    initial begin
        i_clk = 0;
        i_rst_n = 1;
        forever #10 i_clk = !i_clk;
    end

    initial begin
        do_rst(3);
        
        // test WAIT state
        // transition to fill
        s_axis_valid = 1;
        buff_is_full = 1;

        @(negedge i_clk);
        s_axis_valid = 0;
        buff_is_full = 0;
        
        @(negedge i_clk)
        s_axis_valid = 1;
        buff_is_full = 0;


    end

    task do_rst(int num_reps);
        repeat(num_reps) begin
            @(posedge i_clk)
            i_rst_n = 0;
        end
        
        @(negedge i_clk)
        i_rst_n = 1;
    endtask

endmodule
/*  This wrapper is created to interface with an
    AXI DMA.
*/

module SystolicArrayAxiWrapper(
    input axi_clk,
    input axi_clk_n,

    /*  Slave interface
        -s_axis_valid: indicates that the data from the DMA is
            valid
        -s_axis_data: data from DMA
        -s_axis_ready: inidicates that device is ready to recieve data 
    */
    input s_axis_valid,
    input [47:0] s_axis_data,
    output s_axis_ready,

    /*  Master interface
        -m_axis_valid: indicates that device output is valid
        -m_axis_data: data from device
        -m_axis_ready: indicates that DMA is ready to recieve data
    */
    output m_axis_valid,
    output [143:0] m_axis_data,
    input m_axis_ready

);

/* BUFFERS */
parameter DATA_WIDTH=24;
logic buff_rst_n
logic buff_rd, buff_wr; // both data for a and b buffers come in at same time

// buffer for A matrix
logic [DATA_WIDTH-1:0] buff_wr_data_a, o_data_a;
logic o_is_empty_a, o_is_full_a;
InputBuffer A_Buffer (
    i_clk, 
    buff_rst_n,
    buff_rd, 
    buff_wr, 
    buff_wr_data_a, 
    o_data_a, 
    o_is_empty_a, 
    o_is_full_a
);

// buffer for B matrix
logic [DATA_WIDTH-1:0] buff_wr_data_b, o_data_b;
logic o_is_empty_b, o_is_full_b;
InputBuffer A_Buffer (
    i_clk, 
    buff_rst_n,
    buff_rd, 
    buff_wr, 
    buff_wr_data_b, 
    o_data_b, 
    o_is_empty_b, 
    o_is_full_b
);


endmodule
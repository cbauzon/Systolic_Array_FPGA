/*  This wrapper is created to interface with an
    AXI DMA.
*/

module SystolicArrayAxiWrapper(
    input axi_clk,
    input axi_rst_n,

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
logic buff_rst_n;
logic buff_rd, buff_wr; // both data for a and b buffers come in at same time


// buffer for A matrix
logic [DATA_WIDTH-1:0] buff_wr_data_a, o_data_a;
logic o_is_empty_a, o_is_full_a;
assign buff_wr_data_a = s_axis_data[23:0];
InputBuffer A_Buffer (
    axi_clk, 
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
assign buff_wr_data_b = s_axis_data[47:24];
InputBuffer B_Buffer (
    axi_clk, 
    buff_rst_n,
    buff_rd, 
    buff_wr, 
    buff_wr_data_b, 
    o_data_b, 
    o_is_empty_b, 
    o_is_full_b
);

/* SYSTOLIC ARRAY */
logic arr_rst_n;
logic arr_C_valid;
SystolicArray Array(
    .i_clk (axi_clk),
    .i_rst_n (arr_rst_n),
    .i_A (o_data_a),
    .i_B (o_data_b),

    .o_C (m_axis_data),
    .o_C_valid (arr_C_valid)
);

/* ARRAY CONTROLLER */
logic buff_is_empty, buff_is_full;
assign buff_is_empty = o_is_empty_a || o_is_empty_b;
assign buff_is_full = o_is_full_a || o_is_full_b;
ArrayController Controller(
    .i_clk (axi_clk),
    .i_rst_n (axi_rst_n),

    // AXIS Slave interface
    .s_axis_valid (s_axis_valid),
    .s_axis_ready (s_axis_ready),

    // AXIS Master interface
    .m_axis_ready (m_axis_ready),
    .m_axis_valid (m_axis_valid),

    // Buffer interface
    .buff_is_empty (buff_is_empty), 
    .buff_is_full (buff_is_full),
    .buff_rst_n (buff_rst_n),
    .buff_rd (buff_rd), 
    .buff_wr (buff_wr),

    // Array interface
    .arr_C_valid (arr_C_valid),
    .arr_rst_n (arr_rst_n)

);

endmodule
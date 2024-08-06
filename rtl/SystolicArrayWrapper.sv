/*  This wrapper is created to interface with an
    AXI DMA.
*/

module SystolicArrayWrapper(
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


endmodule
module ArrayController(
    input i_clk,
    input i_rst_n,

    // Slave interface
    input s_axis_valid,
    output s_axis_ready,

    // Master interface
    output m_axis_valid,
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


/* STATE MACHINE */
typedef enum {WAIT, FILL, PROCESS, OUT} states;

logic [1:0] PS, NS;

// sequential FSM logic
always_ff @(posedge i_clk) begin
    if (!i_rst_n) begin
        PS <= IDLE;
    end
    else begin
        PS <= NS;
    end
end

// NS Decoder
always_comb begin
    
end





endmodule
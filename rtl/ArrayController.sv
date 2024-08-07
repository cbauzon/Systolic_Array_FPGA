module ArrayController(
    input i_clk,
    input i_rst_n,

    input i_data_valid,
    input i_dma_ready,

    output o_device_ready,
    output o_data_valid
);

typedef enum {IDLE, GET, PROCESS, SEND} states;

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
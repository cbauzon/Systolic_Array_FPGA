module InputBuffer #(DATA_WIDTH=24, ADDR_WIDTH=2)(
    input logic i_clk, i_rst_n,
    input logic i_rd, i_wr,
    input logic [DATA_WIDTH-1:0] i_wr_data,

    output logic [DATA_WIDTH-1:0] o_data
);

// create memory with (2**ADDR_WIDTH) x DATA_WIDTH space
logic [DATA_WIDTH-1:0] mem[(2**ADDR_WIDTH)-1:0];

// create read and write pointers
logic [ADDR_WIDTH-1:0] rd_pntr, wr_pntr;

integer i;

always_ff @(posedge i_clk) begin
    if (!i_rst_n) begin
        for (i=0; i<(2**ADDR_WIDTH); ++i) begin
            mem[i] <= 0;
        end
        rd_pntr <= 0;
        wr_pntr <= 0;
    end
    else begin 
        if (i_rd && !i_wr) begin
//            o_data <= mem[rd_pntr];
            rd_pntr <= rd_pntr + 1;
        end
        
        if (i_wr && !i_rd) begin
            mem[wr_pntr] <= i_wr_data;
            wr_pntr <= wr_pntr + 1;
        end

       
    end
end

assign o_data = mem[rd_pntr];

endmodule
module in_cntrl_logic(

    input logic         i_clk, i_rst_n,
    input logic [23:0]  i_A,
    input logic [23:0]  i_B,
    input logic         i_push,

    output logic [23:0] o_A_out,
    output logic [23:0] o_B_out
);

logic c_cntrl;
logic [2:0] r_cnt;
logic [23:0] c_A_out, c_B_out;

// counter logic
always @(posedge i_clk) begin
    if (!i_rst_n) begin
        r_cnt <= 0;
    end
    else if (i_push || r_cnt == 2) begin
        r_cnt <= r_cnt + 1;
    end
    
    else r_cnt <= r_cnt;
end

// comparator logic
always_comb begin
    if (r_cnt == 3) begin
        c_cntrl = 1;
    end else begin
        c_cntrl = 0;
    end
end

// mux logic
always_comb begin
    case(c_cntrl)
        0: begin
            if (i_push) begin
                c_A_out = i_A;
                c_B_out = i_B;
            end
        end

        default: begin
            c_A_out = '0;
            c_B_out = '0;
        end
    endcase
end

always_ff @(posedge i_clk) begin
    o_A_out <= c_A_out;
    o_B_out <= c_B_out;
end


endmodule
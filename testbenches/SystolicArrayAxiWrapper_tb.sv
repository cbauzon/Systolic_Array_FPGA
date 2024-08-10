module SystolicArrayAxiWrapper_tb();
    logic axi_clk;
    logic axi_rst_n;

    /*  Slave interface
        -s_axis_valid: indicates that the data from the DMA is
            valid
        -s_axis_data: data from DMA
        -s_axis_ready: inidicates that device is ready to recieve data 
    */
    logic s_axis_valid;
    logic [47:0] s_axis_data;
    logic s_axis_ready;

    /*  Master interface
        -m_axis_valid: indicates that device output is valid
        -m_axis_data: data from device
        -m_axis_ready: indicates that DMA is ready to recieve data
    */
    logic m_axis_valid;
    logic [143:0] m_axis_data;
    logic m_axis_ready;
    
    SystolicArrayAxiWrapper dut (
        axi_clk,
        axi_rst_n,

        /*  Slave interface
            -s_axis_valid: indicates that the data from the DMA is
                valid
            -s_axis_data: data from DMA
            -s_axis_ready: inidicates that device is ready to recieve data 
        */
        s_axis_valid,
        s_axis_data,
        s_axis_ready,

        /*  Master interface
            -m_axis_valid: indicates that device output is valid
            -m_axis_data: data from device
            -m_axis_ready: indicates that DMA is ready to recieve data
        */
        m_axis_valid,
        m_axis_data,
        m_axis_ready
    );
    

    initial begin
        axi_clk = 0;
        axi_rst_n = 1;
        forever #10 axi_clk = ~axi_clk;
    end
    
    integer i;
    
    initial begin
        do_rst(3);

        // dma to device
        s_axis_valid = 1;
        s_axis_data = {8'd6, 8'd5, 8'd4, 8'd3, 8'd2, 8'd1};
        m_axis_ready = 1;
        @(posedge axi_clk)
        s_axis_valid = 0;

        @(negedge axi_clk)
        @(negedge axi_clk)
        @(negedge axi_clk)
        s_axis_valid = 1;
        s_axis_data = {8'd12, 8'd11, 8'd10, 8'd8, 8'd5, 8'd2};
        @(posedge axi_clk)
        s_axis_valid = 0;

        @(negedge axi_clk)
        @(negedge axi_clk)
        @(negedge axi_clk)
        s_axis_valid = 1;
        s_axis_data = {8'd7, 8'd8, 8'd9, 8'd10, 8'd11, 8'd12};
        @(posedge axi_clk)
        s_axis_valid = 0;
        
        @(m_axis_valid == 1);
        for (i=0; i<9; ++i) begin
            $display("C[%0d]: %d", i+1, m_axis_data[i*16+:16]);
            
        end
        $display("\n");
        
        @(negedge axi_clk);
        m_axis_ready = 1;

        @(negedge axi_clk);
        m_axis_ready = 0;
        s_axis_valid = 1;
        s_axis_data = {8'd3, 8'd2, 8'd1, 8'd16, 8'd13, 8'd10};
        m_axis_ready = 0;
        
        @(negedge axi_clk)
        s_axis_valid = 1;
        s_axis_data = {8'd6, 8'd5, 8'd4, 8'd17, 8'd14, 8'd11};
        m_axis_ready = 0;
        
        @(negedge axi_clk)
        s_axis_valid = 1;
        s_axis_data = {8'd9, 8'd8, 8'd7, 8'd18, 8'd15, 8'd12};
        m_axis_ready = 0;
        
        @(negedge axi_clk)
        s_axis_valid = 0;
        s_axis_data = 'h0;
        
        @(m_axis_valid == 1);
        for (i=0; i<9; ++i) begin
            $display("C[%0d]: %d", i+1, m_axis_data[i*16+:16]);
            
        end
        

    end
    
    task do_rst(int num_reps);
    repeat(num_reps) begin
        @(posedge axi_clk)
        axi_rst_n = 0;
    end
    
    @(negedge axi_clk)
    axi_rst_n = 1;
endtask
endmodule
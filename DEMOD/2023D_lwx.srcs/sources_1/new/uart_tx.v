module uart_tx #(
    parameter CLK_FREQ = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input wire clk,
    input wire rst_n,
    input wire tx_start,
    input wire [7:0] tx_data,
    output reg uart_txd,
    output reg tx_busy
);

    localparam BAUD_CNT_MAX = CLK_FREQ / BAUD_RATE;
    
    // 状态定义
    localparam IDLE  = 3'd0;
    localparam START = 3'd1;
    localparam DATA  = 3'd2;
    localparam STOP  = 3'd3;
    
    reg [2:0] state;
    reg [15:0] baud_cnt;
    reg [2:0] bit_cnt;
    reg [7:0] tx_data_latch;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            uart_txd <= 1'b1;
            baud_cnt <= 16'd0;
            bit_cnt <= 3'd0;
            tx_data_latch <= 8'd0;
            tx_busy <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    uart_txd <= 1'b1;
                    tx_busy <= 1'b0;
                    
                    if (tx_start) begin
                        state <= START;
                        tx_data_latch <= tx_data;
                        tx_busy <= 1'b1;
                        baud_cnt <= 16'd0;
                    end
                end
                
                START: begin
                    uart_txd <= 1'b0;  // 发送起始位
                    
                    if (baud_cnt == BAUD_CNT_MAX - 1) begin
                        state <= DATA;
                        baud_cnt <= 16'd0;
                        bit_cnt <= 3'd0;
                    end else begin
                        baud_cnt <= baud_cnt + 16'd1;
                    end
                end
                
                DATA: begin
                    uart_txd <= tx_data_latch[bit_cnt];  // LSB先发送
                    
                    if (baud_cnt == BAUD_CNT_MAX - 1) begin
                        baud_cnt <= 16'd0;
                        
                        if (bit_cnt == 3'd7) begin
                            state <= STOP;
                        end else begin
                            bit_cnt <= bit_cnt + 3'd1;
                        end
                    end else begin
                        baud_cnt <= baud_cnt + 16'd1;
                    end
                end
                
                STOP: begin
                    uart_txd <= 1'b1;  // 发送停止位
                    
                    if (baud_cnt == BAUD_CNT_MAX - 1) begin
                        state <= IDLE;
                        baud_cnt <= 16'd0;
                    end else begin
                        baud_cnt <= baud_cnt + 16'd1;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule
module uart_rx #(
    parameter CLK_FREQ = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input wire clk,
    input wire rst_n,
    input wire uart_rxd,
    output reg rx_done,
    output reg [7:0] rx_data
);

    localparam BAUD_CNT_MAX = CLK_FREQ / BAUD_RATE;  // 波特率计数器最大值
    localparam BAUD_CNT_HALF = BAUD_CNT_MAX / 2;     // 半个波特率周期
    
    // 状态定义
    localparam IDLE  = 3'd0;
    localparam START = 3'd1;
    localparam DATA  = 3'd2;
    localparam STOP  = 3'd3;
    
    reg [2:0] state;
    reg [15:0] baud_cnt;
    reg [2:0] bit_cnt;
    reg [7:0] rx_data_tmp;
    reg uart_rxd_d1, uart_rxd_d2;
    
    // 输入信号同步，防止亚稳态
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            uart_rxd_d1 <= 1'b1;
            uart_rxd_d2 <= 1'b1;
        end else begin
            uart_rxd_d1 <= uart_rxd;
            uart_rxd_d2 <= uart_rxd_d1;
        end
    end
    
    // 接收状态机
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            baud_cnt <= 16'd0;
            bit_cnt <= 3'd0;
            rx_data <= 8'd0;
            rx_data_tmp <= 8'd0;
            rx_done <= 1'b0;
        end else begin
            rx_done <= 1'b0;
            
            case (state)
                IDLE: begin
                    if (uart_rxd_d2 == 1'b0) begin  // 检测到起始位
                        state <= START;
                        baud_cnt <= 16'd0;
                    end
                end
                
                START: begin
                    if (baud_cnt == BAUD_CNT_HALF - 1) begin  // 到起始位中间
                        if (uart_rxd_d2 == 1'b0) begin  // 确认起始位有效
                            state <= DATA;
                            baud_cnt <= 16'd0;
                            bit_cnt <= 3'd0;
                        end else begin
                            state <= IDLE;  // 错误的起始位
                        end
                    end else begin
                        baud_cnt <= baud_cnt + 16'd1;
                    end
                end
                
                DATA: begin
                    if (baud_cnt == BAUD_CNT_MAX - 1) begin
                        baud_cnt <= 16'd0;
                        rx_data_tmp[bit_cnt] <= uart_rxd_d2;  // LSB先接收
                        
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
                    if (baud_cnt == BAUD_CNT_MAX - 1) begin
                        if (uart_rxd_d2 == 1'b1) begin  // 停止位正确
                            rx_data <= rx_data_tmp;
                            rx_done <= 1'b1;
                        end
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
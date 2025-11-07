module uart_top #(
    parameter CLK_FREQ = 50_000_000,  // 主时钟频率 50MHz
    parameter BAUD_RATE = 115200      // 波特率 115200
)(
    input wire clk,           // 系统时钟
    input wire rst_n,         // 复位信号，低电平有效
    input wire signed [15:0] A,     // 寄存器A输入
    input wire signed [15:0] B,     // 寄存器B输入
    input wire signed [15:0] C,     // 寄存器C输入
    input wire signed [15:0] D,     // 寄存器D输入
    input wire signed [15:0] E,     // 寄存器E输入
    input wire uart_rxd,      // UART接收
    output wire uart_txd      // UART发送
);

    // 内部信号
    wire rx_done;
    wire [7:0] rx_data;
    wire tx_busy;
    wire tx_start;
    wire [7:0] tx_data;
    
    // UART接收模块实例化
    uart_rx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_uart_rx (
        .clk(clk),
        .rst_n(rst_n),
        .uart_rxd(uart_rxd),
        .rx_done(rx_done),
        .rx_data(rx_data)
    );
    
    // UART发送模块实例化
    uart_tx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) u_uart_tx (
        .clk(clk),
        .rst_n(rst_n),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .uart_txd(uart_txd),
        .tx_busy(tx_busy)
    );

    
    
    // 控制逻辑模块实例化
    uart_ctrl #(
        .CLK_FREQ(CLK_FREQ)
    ) u_uart_ctrl (
        .clk(clk),
        .rst_n(rst_n),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .rx_done(rx_done),
        .rx_data(rx_data),
        .tx_busy(tx_busy),
        .tx_start(tx_start),
        .tx_data(tx_data)
    );

endmodule
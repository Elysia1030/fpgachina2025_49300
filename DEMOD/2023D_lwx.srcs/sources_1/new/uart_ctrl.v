module uart_ctrl #(
    parameter CLK_FREQ = 50_000_000
)(
    input wire clk,
    input wire rst_n,
    input wire signed [15:0] A,     // 寄存器A输入
    input wire signed [15:0] B,     // 寄存器B输入
    input wire signed [15:0] C,     // 寄存器C输入
    input wire signed [15:0] D,     // 寄存器D输入
    input wire signed [15:0] E,     // 寄存器E输入
    input wire rx_done,
    input wire [7:0] rx_data,
    input wire tx_busy,
    output reg tx_start,
    output reg [7:0] tx_data
);

    // 定时器：1秒计数器
    localparam ONE_SEC_CNT = CLK_FREQ;
    reg [31:0] timer_cnt;
    reg timer_1s;
    
    // 状态定义
    localparam IDLE    = 2'd0;
    localparam SEND    = 2'd1;
    localparam WAIT_TX = 2'd2;
    
    reg [1:0] state;
    reg [3:0] char_idx;
    
    // 发送模式：0=A, 1=B, 2=C, 3=D, 4=E
    reg [2:0] send_mode;
    
    // 用于存储转换后的字符串
    reg [7:0] send_buffer [0:9];  // "X:±XXXXX\r\n" 最多10个字符
    reg [3:0] total_len;
    
    // 当前要发送的数值
    reg signed [15:0] current_value;
    
    // 1秒定时器
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer_cnt <= 32'd0;
            timer_1s <= 1'b0;
        end else begin
            if (timer_cnt == ONE_SEC_CNT - 1) begin
                timer_cnt <= 32'd0;
                timer_1s <= 1'b1;
            end else begin
                timer_cnt <= timer_cnt + 32'd1;
                timer_1s <= 1'b0;
            end
        end
    end
    
    // 接收命令处理，切换发送模式
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            send_mode <= 3'd0;  // 初始发送A
        end else if (rx_done) begin
            if (rx_data == 8'hAA) begin
                // 循环切换：A->B->C->D->E->A
                if (send_mode == 3'd4)
                    send_mode <= 3'd0;
                else
                    send_mode <= send_mode + 3'd1;
            end
        end
    end
    
    // 根据模式选择要发送的值
    always @(*) begin
        case (send_mode)
            3'd0: current_value = A;
            3'd1: current_value = B;
            3'd2: current_value = C;
            3'd3: current_value = D;
            3'd4: current_value = E;
            default: current_value = A;
        endcase
    end
    
    // 格式化发送内容：序号:数值\r\n
    task format_send_data;
        input [2:0] mode;
        input signed [15:0] num;
        reg signed [15:0] abs_num;
        reg [15:0] temp;
        integer i, j, idx;
        reg [3:0] digit_count;
        reg [7:0] digits [0:4];
        begin
            idx = 0;
            
            // 添加序号（1-5）
            send_buffer[idx] = "1" + mode;
            idx = idx + 1;
            
            // 添加冒号
            send_buffer[idx] = ":";
            idx = idx + 1;
            
            // 处理符号
            if (num < 0) begin
                send_buffer[idx] = "-";
                abs_num = -num;
                idx = idx + 1;
            end else begin
                abs_num = num;
            end
            
            // 提取每一位数字
            temp = abs_num;
            digit_count = 0;
            
            // 特殊处理0
            if (temp == 0) begin
                digits[0] = "0";
                digit_count = 1;
            end else begin
                while (temp > 0 && digit_count < 5) begin
                    digits[digit_count] = "0" + (temp % 10);
                    temp = temp / 10;
                    digit_count = digit_count + 1;
                end
            end
            
            // 反转数字顺序（因为是从低位到高位提取的）
            for (i = 0; i < digit_count; i = i + 1) begin
                send_buffer[idx + i] = digits[digit_count - 1 - i];
            end
            idx = idx + digit_count;
            
            // 添加回车换行
            send_buffer[idx] = 8'h0D;      // \r
            idx = idx + 1;
            send_buffer[idx] = 8'h0A;      // \n
            idx = idx + 1;
            
            total_len = idx;
        end
    endtask
    
    // 主控制状态机
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            tx_start <= 1'b0;
            tx_data <= 8'd0;
            char_idx <= 4'd0;
        end else begin
            case (state)
                IDLE: begin
                    tx_start <= 1'b0;
                    
                    // 每1秒触发一次发送
                    if (timer_1s) begin
                        format_send_data(send_mode, current_value);
                        state <= SEND;
                        char_idx <= 4'd0;
                    end
                end
                
                SEND: begin
                    if (!tx_busy && !tx_start) begin
                        tx_start <= 1'b1;
                        tx_data <= send_buffer[char_idx];
                        state <= WAIT_TX;
                    end
                end
                
                WAIT_TX: begin
                    tx_start <= 1'b0;
                    
                    if (tx_busy) begin
                        // 等待发送完成
                    end else begin
                        if (char_idx == total_len - 1) begin
                            // 一个完整数据包发送完成，回到IDLE等待下一秒
                            state <= IDLE;
                            char_idx <= 4'd0;
                        end else begin
                            // 继续发送下一个字符
                            char_idx <= char_idx + 4'd1;
                            state <= SEND;
                        end
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule
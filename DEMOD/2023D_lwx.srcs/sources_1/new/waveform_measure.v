`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 模块: waveform_measure (测周法时序修复版)
// 功能: 测量信号的最大/最小/均方值，并输出周期计数值。
// 修复: 解决了测周逻辑中 measurement_started 信号的时序竞争问题。
//////////////////////////////////////////////////////////////////////////////////

module waveform_measure #(
    parameter CLK_FREQ = 50000000,
    parameter DATA_WIDTH = 16,
    parameter SAMPLE_NUM_WIDTH = 16,
    parameter SAMPLE_RATE = 2000000,
    parameter FRE_DIV = 25
)(
    input wire                          sys_clk,
    input wire                          rst_n,
    input wire signed [DATA_WIDTH-1:0]  data_in,
    
    output reg signed [DATA_WIDTH-1:0]  v_max,
    output reg signed [DATA_WIDTH-1:0]  v_min,
    output reg [2*DATA_WIDTH-1:0]       mean_square,
    output reg [15:0]   period_sample_cnt,
    output wire signed [DATA_WIDTH-1:0]  o_signal_dc_removed,
    output reg                          measure_done
);

    // --------------------------------------------------------------------------
    // -- 信号声明
    // --------------------------------------------------------------------------
    wire sample_clk;
    localparam IDLE           = 2'd0, SAMPLE = 2'd1, CALC_AND_LATCH = 2'd2;
    reg [1:0] state, next_state;
    reg [SAMPLE_NUM_WIDTH-1:0] sample_cnt;
    reg signed [DATA_WIDTH-1:0]  dc_offset;
    reg signed [DATA_WIDTH-1:0] v_max_temp, v_min_temp;
    reg signed [DATA_WIDTH+SAMPLE_NUM_WIDTH-1:0] sum;
    reg [2*DATA_WIDTH+SAMPLE_NUM_WIDTH-1:0] sum_of_squares;
    wire [2*DATA_WIDTH-1:0] data_squared;
    reg measurement_started;
    reg signed [DATA_WIDTH-1:0] data_in_synced;
    reg sample_clk_d1;
    wire sample_clk_pos;
    reg signed [DATA_WIDTH-1:0] signal_dc_removed;
    reg signal_rectified, signal_rectified_d1;
    wire signal_rectified_posedge;
    reg [15:0] period_cnt_temp;
    reg [15:0] final_period_cnt;

    // --------------------------------------------------------------------------
    // -- 逻辑实现
    // --------------------------------------------------------------------------
    clk_divider #(.FRE_DIV(FRE_DIV)) clk_divider_inst(.clk(sys_clk), .rst_n(rst_n), .sample_clk(sample_clk));
    
    assign o_signal_dc_removed = signal_dc_removed;
    // --- 均方值计算: 计算当前采样点的平方 ---
    assign data_squared = signal_dc_removed * signal_dc_removed;

    // --- 输入同步和边沿检测 ---
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            sample_clk_d1  <= 1'b0;
            data_in_synced <= 16'sd0; // 明确位宽和进制
        end else begin
            sample_clk_d1 <= sample_clk;
            if (sample_clk) begin
                data_in_synced <= data_in;
            end
        end
    end
    assign sample_clk_pos = sample_clk & ~sample_clk_d1;

    

    // --- 步骤1: 去除直流分量 ---
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            signal_dc_removed <= 16'sd0; // 明确位宽和进制
        end else if (sample_clk_pos && (state == SAMPLE)) begin
            signal_dc_removed <= data_in_synced - dc_offset;
        end
    end
    
    // --- 步骤2: 整流为0/1序列并进行边沿检测 ---
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            signal_rectified    <= 1'b0;
            signal_rectified_d1 <= 1'b0;
        end else begin
            signal_rectified    <= (signal_dc_removed > 0);
            signal_rectified_d1 <= signal_rectified;
        end
    end
    assign signal_rectified_posedge = signal_rectified & ~signal_rectified_d1;
    
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else state <= next_state;
    end
    
    always @(*) begin
        next_state = state;
        case (state)
            IDLE:           if (sample_clk_pos) next_state = SAMPLE;
            SAMPLE:         if (sample_cnt == ((1 << SAMPLE_NUM_WIDTH) - 1)) next_state = CALC_AND_LATCH;
            CALC_AND_LATCH: next_state = IDLE;
            default:        next_state = IDLE;
        endcase
    end
    
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            v_max <= 0; v_min <= 0; mean_square <= 0; period_sample_cnt <= 0;
            measure_done <= 1'b0; dc_offset <= 0;
            v_max_temp <= -16'sd32768; v_min_temp <= 16'sd32767;
            sum <= 0; sum_of_squares <= 0; sample_cnt <= 0;
            period_cnt_temp <= 0; measurement_started <= 1'b0;
            final_period_cnt <= 0; 
        end else begin
            measure_done <= 1'b0;
            
            if (sample_clk_pos) begin
                if (state == IDLE) begin
                    // 第一个采样点: 初始化所有临时寄存器
                    v_max_temp <= data_in_synced;
                    v_min_temp <= data_in_synced;
                    sum <= data_in_synced;
                    sum_of_squares <= data_squared;
                    sample_cnt <= 1;
                    
                    measurement_started <= 1'b0;
                    
                end else if (state == SAMPLE) begin
                    // --- 正常采样: 更新所有统计值 ---
                    if (data_in_synced > v_max_temp) v_max_temp <= data_in_synced;
                    if (data_in_synced < v_min_temp) v_min_temp <= data_in_synced;
                    sum <= sum + data_in_synced;
                    sum_of_squares <= sum_of_squares + data_squared;
                    sample_cnt <= sample_cnt + 1'b1;
                end
            end

            if (state == SAMPLE) begin
                if (measurement_started) begin
                    if (sample_clk_pos) begin
                        period_cnt_temp <= period_cnt_temp + 1;
                    end
                    if (signal_rectified_posedge) begin
                        // 周期结束时，立刻锁存结果
                        final_period_cnt <= period_cnt_temp - 1; // 把当前周期的最后一个点也算上
                        measurement_started <= 1'b0; // 停止测量
                    end
                end else if (signal_rectified_posedge) begin
                    // 启动测量
                    measurement_started <= 1'b1;
                    period_cnt_temp <= 1;
                end
            end

            if (state == CALC_AND_LATCH) begin
                // 采样结束，锁存所有最终结果
                v_max <= v_max_temp;
                v_min <= v_min_temp;
                dc_offset <= sum >>> SAMPLE_NUM_WIDTH;
                mean_square <= sum_of_squares >>> SAMPLE_NUM_WIDTH;
                period_sample_cnt <= final_period_cnt;
                measure_done <= 1'b1;
                
                sample_cnt <= 0;
                period_cnt_temp <= 0;
                final_period_cnt <=0;
            end
        end
    end
    
endmodule
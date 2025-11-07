`timescale 1ns / 1ps

module AM_measure (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        measure_valid,
    input  wire signed [15:0] V_max,
    input  wire signed [15:0] V_min,
    output reg  signed [15:0] ma
);

    reg  signed [16:0] numerator ;
    reg  signed [16:0] denominator ;
    reg  signed [31:0] result;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ma <= 16'd0;
            numerator <= 17'b0;
            denominator <= 17'b0;
            result <= 32'b0;
        end else if (measure_valid) begin
            numerator   <= (V_max > V_min) ? (V_max - V_min) : (V_min - V_max);
            denominator <= V_max + V_min;
            if (denominator > 0) begin
                // 保留两位小数
                result <= (numerator * 10000) / denominator;

                if (result > 10000)
                    ma <= 16'd10000;
                else if (result < 0)
                    ma <= 16'd0;
                else
                    ma <= result[15:0] - 16'd55; //神秘数字矫正
            end else begin
                ma <= 16'd0;
            end
        end
    end

endmodule

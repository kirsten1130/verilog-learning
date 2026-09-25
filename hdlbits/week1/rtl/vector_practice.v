/* HDLBits Vector综合练习
题目：实现一个组合逻辑电路，根据sel选择4种向量操作，并输出奇校验位
输入：
    data_in[7:0]  8bit输入数据
    mask[7:0]     8bit掩码
    sel[1:0]      功能选择
输出：
    result[15:0]  16bit运算结果
    parity        奇校验位
sel功能：
2'b00：向量拼接 {data_in,data_in}
2'b01：符号扩展到16bit
2'b10：高低半字节交换
2'b11：data_in ^ mask 按位异或
*/

module vector_practice (
    input wire [7:0] data_in,    // 8位输入数据
    input wire [7:0] mask,       // 8位掩码，用于按位运算
    input wire [1:0] sel,        // 2位功能选择信号，4种模式
    output reg [15:0] result,    // 16位输出结果，reg因为在always块内赋值
    output wire       parity     // 奇偶校验：data_in中1的个数为奇数时为1
);

// 归约异或：对data_in所有bit做异或运算，输出1bit
// 归约运算符 ^ 把向量所有位依次异或；1的总数奇数输出1，偶数输出0，即奇校验
assign parity = ^data_in;

// 组合逻辑，根据sel选择不同的向量操作
// always @(*) 组合逻辑敏感列表，*代表任何输入变化就触发
always @(*) begin
    case (sel)
        2'b00:  result = {data_in, data_in};            // 拼接：把两个8bit的data_in拼成16bit
        2'b01:  result = {{8{data_in[7]}}, data_in};    // 符号扩展：复制最高位data_in[7]，填充高8位，低8位=data_in
        2'b10:  result = {8'h00, data_in[3:0], data_in[7:4]}; // 半字节交换：高低4bit互换
        2'b11:  result = {8'h00, data_in ^ mask};      // 位运算：data_in和mask按位异或，放到低8位，高8位补0
        default: result = 16'h0000;                     // default防止锁存，组合逻辑必备
    endcase
end

endmodule

module stack_memory (
    input wire sm,
    input wire clk,
    input wire [3:0] address,
    inout wire [7:0] data,
    input wire we,
    input wire re
);
    // ����16x8λ���ڴ�
    reg [7:0] memory [15:0];
    
    // �������߻�����
    reg [7:0] data_buffer;
    
    // �������ݶ˿�Ϊ˫��˿�
    assign data = (re == 1'b1&&sm==1'b1) ? data_buffer : 8'bz;
    
    // ʱ�������ش�����д����
    always @(posedge clk) begin
        if (we == 1'b1&&sm==1'b1) begin
            // д�����
            memory[address] <= data;
        end
        if (re == 1'b1&&sm==1'b1) begin
            // ��ȡ����
            data_buffer <= memory[address];
        end
    end
endmodule
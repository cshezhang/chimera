// This program was cloned from: https://github.com/MongooseOrion/Multi-channel-video-splicing
// License: GNU General Public License v3.0

/* =======================================================================
* Copyright (c) 2023, MongooseOrion.
* All rights reserved.
*
* The following code snippet may contain portions that are derived from
* OPEN-SOURCE communities, and these portions will be licensed with: 
*
* <NULL>
*
* If there is no OPEN-SOURCE licenses are listed, it indicates none of
* content in this Code document is sourced from OPEN-SOURCE communities. 
*
* In this case, the document is protected by copyright, and any use of
* all or part of its content by individuals, organizations, or companies
* without authorization is prohibited, unless the project repository
* associated with this document has added relevant OPEN-SOURCE licenses
* by github.com/MongooseOrion. 
*
* Please make sure using the content of this document in accordance with 
* the respective OPEN-SOURCE licenses. 
* 
* THIS CODE IS PROVIDED BY https://github.com/MongooseOrion. 
* =======================================================================
*/
// ���� 1/4 �߶Ȼ�����в�������������С�� 1/16
// ������1280x720

module video_sampling#(
    parameter WR_ADDR_LEN = 'd8, 
    parameter RD_ADDR_LEN = 'd5,
    parameter IMAGE_TAG = 4'd1,
    parameter DQ_WIDTH = 12'd32,
    parameter VIDEO_WIDTH = 'd1280,
    parameter VIDEO_HEIGHT = 'd720,
    parameter SEL_MODE = 'd1            // 1:�ĳ�����1/16����2:�ĳ�һ(9/16)
)(
    input               clk,
    input               rst,
    // �ź�����
    input               de_in,
    input               vs_in,
    input       [15:0]  rgb565_in,
    // ���� DDR �洢
    input                                   rd_clk,
    input       [RD_ADDR_LEN - 1'b1 : 0]    rd_addr,
    output      [DQ_WIDTH*8-1'b1:0]         rd_data,
    input                                   rd_valid,
    input                                   rd_en,
    output reg                              data_out_ready,
    output reg  [3:0]                       trans_id,
    output reg                              row_end_flag,   // 
    output reg                              frame_end_flag  // 
);

parameter WIDTH_QD = VIDEO_WIDTH / 'd4;
parameter HEIGHT_QD = VIDEO_HEIGHT / 'd4;
parameter WIDTH_TC = (VIDEO_WIDTH / 4) * 3;
parameter HEIGHT_TC = (VIDEO_HEIGHT / 4) * 3;

wire        pose_vs_in;
wire        nege_vs_in;
wire        wr_en_1;
wire        wr_en_2;
wire        pose_rd_valid;

reg [WR_ADDR_LEN - 1'b1 : 0]    wr_addr_temp;
reg [WR_ADDR_LEN - 1'b1 : 0]    wr_addr;
reg                             wr_en_tr;
reg                             wr_en_tr_d1;
reg                             wr_en_final;
reg [15:0]                      wr_data_d1;
reg [15:0]                      wr_data_d2;
reg [15:0]                      wr_data_d3;
reg [DQ_WIDTH - 1'b1:0]         wr_data;
reg [1:0]                       data_len_cnt;   // ���� DRAM �ĵ�������Ϊ���� RGB565 ����
reg                             vs_in_1;
reg                             frame_valid;
reg                             de_in_1;
reg [1:0]                       href_count;
reg [2:0]                       pix_count;
reg [31:0]                      pix_full_count;
reg                             pix_full_count_en;
reg                             rd_valid_d1;
reg [1:0]                       rd_valid_count;


// ֡��Ч�źţ�ȷ�����ݰ�֡˳��洢
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        vs_in_1 <= 'b0;
    end
    else begin
        vs_in_1 <= vs_in;
    end
end
assign pose_vs_in = ((vs_in) && (~vs_in_1)) ? 1'b1 : 1'b0;
assign nege_vs_in = ((~vs_in) && (vs_in_1)) ? 1'b1 : 1'b0;


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        frame_valid <= 'b0;
    end
    else if(nege_vs_in) begin
        frame_valid <= 1'b1;
    end
    else if(pose_vs_in) begin
        frame_valid <= 1'b0;
    end
    else begin
        frame_valid <= frame_valid;
    end
end


// �м����ͳ�������� 3 ��
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        de_in_1 <= 'b0;
    end
    else begin
        de_in_1 <= de_in;
    end
end
assign pose_de_in = ((de_in) && (~de_in_1)) ? 1'b1 : 1'b0;
assign nege_de_in = ((~de_in) && (de_in_1)) ? 1'b1 : 1'b0;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        href_count <= 'b0;
    end
    else if(frame_valid) begin
        if((pose_de_in == 1'b1) && (href_count < 4'd4)) begin
            href_count <= href_count + 1'b1;
        end
        else if((pose_de_in == 1'b1) && (href_count == 4'd4)) begin
            href_count <= 4'b1;
        end
        else begin
            href_count <= href_count;
        end
    end
    else begin
        href_count <= 2'b0;
    end
end


// дʹ���ź�
/*always @(posedge clk or negedge rst) begin
    if(!rst) begin
        wr_en <= 'b0;
    end
    else if((href_count == 4'd1) && (de_in == 1'b1)) begin
        wr_en <= 1'b1;
    end
    else begin
        wr_en <= 1'b0;
    end
end*/
assign wr_en_1 = ((href_count == 4'd1) && (de_in_1 == 1'b1)) ? 1'b1 : 1'b0;
assign wr_en_2 = ((href_count < 4'd4) && (de_in_1 == 1'b1)) ? 1'b1 : 1'b0;


// ÿ�ĸ����ض������������ݣ�����ÿ�ĸ���һ��
generate
    if(SEL_MODE == 2'd1) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                pix_count <= 'b0;
            end
            else if(wr_en_1) begin
                if(pix_count == 2'd3) begin
                    pix_count <= 2'd0;
                end
                else begin
                    pix_count <= pix_count + 1'b1;
                end
            end
            else begin
                pix_count <= 2'b0;
            end
        end
    end
    else if(SEL_MODE == 2'd2) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                pix_count <= 'b0;
            end
            else if(wr_en_2) begin
                if(pix_count == 2'd3) begin
                    pix_count <= 2'd0;
                end
                else begin
                    pix_count <= pix_count + 1'b1;
                end
            end
            else begin
                pix_count <= 2'b0;
            end
        end
    end
endgenerate


// ʵ��дʹ���ź�
generate
    if(SEL_MODE == 2'd1) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                wr_en_tr <= 'b0;
            end
            else if((wr_en_1 == 1'b1) && (pix_count == 2'd0)) begin
                wr_en_tr <= 1'b1;
            end
            else begin
                wr_en_tr <= 1'b0;
            end
        end
    end
    else if(SEL_MODE == 2'd2) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                wr_en_tr <= 'b0;
            end
            else if((wr_en_2 == 1'b1) && (pix_count < 2'd3)) begin
                wr_en_tr <= 1'b1;
            end
            else begin
                wr_en_tr <= 1'b0;
            end
        end
    end
endgenerate


// ����д�����ӳ�
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        wr_en_tr_d1 <= 'b0;
        wr_en_final <= 'b0;
    end
    else begin
        wr_en_tr_d1 <= wr_en_tr;
        wr_en_final <= wr_en_tr_d1;
    end
end


// д���� RGR565 ��Ч���� 2 ��Ϊ 1 �����
generate
    if(SEL_MODE == 2'd1) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                data_len_cnt <= 'b0;
            end
            else if(wr_en_tr) begin
                if(data_len_cnt == 2'd2) begin
                    data_len_cnt <= 2'd1;
                end
                else begin
                    data_len_cnt <= data_len_cnt + 1'b1;
                end
            end
            else begin
                data_len_cnt <= data_len_cnt;
            end
        end
    end
    else if(SEL_MODE == 2'd2) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                data_len_cnt <= 'b0;
            end
            else if(wr_en_tr) begin
                if(data_len_cnt == 2'd2) begin
                    data_len_cnt <= 2'd1;
                end
                else begin
                    data_len_cnt <= data_len_cnt + 1'b1;
                end
            end
            else begin
                data_len_cnt <= data_len_cnt;
            end
        end
    end
endgenerate


// д�����źţ�����һ���ź��ݴ����� 
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        wr_data_d1 <= 'b0;
        wr_data_d2 <= 'b0;
        wr_data_d3 <= 'b0;
    end
    else begin
        wr_data_d1 <= rgb565_in;
        wr_data_d2 <= wr_data_d1;
        wr_data_d3 <= wr_data_d2;
    end
end

// ��������������д��һ��д�����ź���
generate
    if(SEL_MODE == 2'd1) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                wr_data <= 'b0;
            end
            else if((wr_en_tr_d1 == 1'b1) && (data_len_cnt == 2'd1)) begin
                wr_data <= {16'b0,wr_data_d3};
            end
            else if((wr_en_tr_d1 == 1'b1) && (data_len_cnt == 2'd2)) begin
                wr_data <= {wr_data_d3,wr_data[15:0]};        // ���������ݷ�ǰ��
            end
            else begin
                wr_data <= wr_data;
            end
        end
    end
    else if(SEL_MODE == 2'd2) begin
        always @(posedge clk or negedge rst) begin
            if(!rst) begin
                wr_data <= 'b0;
            end
            else if((wr_en_tr_d1 == 1'b1) && (data_len_cnt == 2'd1)) begin
                wr_data <= {16'b0,wr_data_d3};
            end
            else if((wr_en_tr_d1 == 1'b1) && (data_len_cnt == 2'd2)) begin
                wr_data <= {wr_data_d3,wr_data[15:0]};        // ���������ݷ�ǰ��
            end
            else begin
                wr_data <= wr_data;
            end
        end
    end
endgenerate


// д��ַ�ź�
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        wr_addr_temp <= 'b0;
    end
    else if((wr_en_tr == 1'b1) && (data_len_cnt == 2'd2)) begin
        wr_addr_temp <= wr_addr_temp + 1'b1;
    end
    else begin
        wr_addr_temp <= wr_addr_temp;
    end
end
// ����д���� 1 ���ӳ�
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        wr_addr <= 'b0;
    end
    else begin
        wr_addr <= wr_addr_temp;
    end
end


sdram_sampling wr_buffer(
    .wr_data    (wr_data),      // input [31:0]
    .wr_addr    (wr_addr),      // input [7:0]
    .wr_en      (wr_en_final),        // input
    .wr_clk     (clk),          // input
    .wr_rst     (!rst),         // input
    .rd_addr    (rd_addr),      // input [5:0]
    .rd_data    (rd_data),      // output [255:0]
    .rd_clk     (rd_clk),       // input
    .rd_rst     (!rst)        // input
);


// �������� ID
always @(posedge rd_clk or negedge rst) begin
    if(!rst) begin
        trans_id <= 4'b0;
    end
    else begin
        trans_id <= IMAGE_TAG;
    end
end


// д׼���źţ�����Ч�ź������ͨ���ж�д��ַ��ֵ��ȷ������
always @(posedge rd_clk or negedge rst) begin
    if(!rst) begin
        rd_valid_d1 <= 'b0;
    end
    else begin
        rd_valid_d1 <= rd_valid;
    end
end
assign pose_rd_valid = ((rd_valid) && (~rd_valid_d1)) ? 1'b1 : 1'b0;

always @(posedge rd_clk or negedge rst) begin
    if(!rst) begin
        rd_valid_count <= 'b0;
    end
    else if(pose_rd_valid) begin
        if(rd_valid_count == 2'd2) begin
            rd_valid_count <= 2'd1;
        end
        else begin
            rd_valid_count <= rd_valid_count + 1'b1;
        end
    end
    else begin
        rd_valid_count <= rd_valid_count;
    end
end

// �ж������������Ƿ��Ѿ��㹻����һ��ͻ������
always @(posedge rd_clk or negedge rst) begin
    if(!rst) begin
        data_out_ready <= 'b0;
    end
    else if(rd_valid_d1) begin
        if(rd_valid_count == 2'd1) begin
            if(wr_addr >= (DQ_WIDTH*8*16/32)) begin
                data_out_ready <= 1'b1;
            end
            else begin
                data_out_ready <= 1'b0;
            end
        end
        else if(rd_valid_count == 2'd2) begin
            if((wr_addr >= 'd0) && (wr_addr < (DQ_WIDTH*8*16/32))) begin
                data_out_ready <= 1'b1;
            end
            else begin
                data_out_ready <= 1'b0;
            end
        end
        else begin
            data_out_ready <= 1'b0;
        end
    end
    else begin
        data_out_ready <= 1'b0;
    end
end


generate
    if(SEL_MODE == 'd1) begin

        // ���ؼ���
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                pix_full_count <= 'b0;
            end
            else if(rd_en) begin
                if(pix_full_count == (WIDTH_QD * HEIGHT_QD) - (DQ_WIDTH*8/16)) begin
                    pix_full_count <= 'd0;
                end
                else begin
                    pix_full_count <= pix_full_count + (DQ_WIDTH*8/16);
                end
            end
            else begin
                pix_full_count <= pix_full_count;
            end
        end


        // �н�����־
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                row_end_flag <= 'b0;
            end
            else if((pix_full_count + (DQ_WIDTH*8/16)) % WIDTH_QD == 'b0) begin   // �����һ������ͬ������
                row_end_flag <= 1'b1;
            end
            else begin
                row_end_flag <= 1'b0;
            end
        end


        // ֡������־
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                frame_end_flag <= 'b0;
            end
            else if((pix_full_count + (DQ_WIDTH*8/16)) == WIDTH_QD * HEIGHT_QD - (DQ_WIDTH*8/16)) begin
                frame_end_flag <= 1'b1;
            end
            else begin
                frame_end_flag <= 1'b0;
            end
        end

    end
    else if(SEL_MODE == 'd2) begin

        // ���ؼ���
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                pix_full_count <= 'b0;
            end
            else if(rd_en) begin
                if(pix_full_count == (WIDTH_TC * HEIGHT_TC) - (DQ_WIDTH*8/16)) begin
                    pix_full_count <= 'd0;
                end
                else begin
                    pix_full_count <= pix_full_count + (DQ_WIDTH*8/16);
                end
            end
            else begin
                pix_full_count <= pix_full_count;
            end
        end


        // �н�����־
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                row_end_flag <= 'b0;
            end
            else if((pix_full_count + (DQ_WIDTH*8/16)) % WIDTH_TC == 'b0) begin   // �����һ������ͬ������
                row_end_flag <= 1'b1;
            end
            else begin
                row_end_flag <= 1'b0;
            end
        end


        // ֡������־
        always @(posedge rd_clk or negedge rst) begin
            if(!rst) begin
                frame_end_flag <= 'b0;
            end
            else if((pix_full_count + (DQ_WIDTH*8/16)) == WIDTH_TC * HEIGHT_TC - (DQ_WIDTH*8/16)) begin
                frame_end_flag <= 1'b1;
            end
            else begin
                frame_end_flag <= 1'b0;
            end
        end

    end
endgenerate

endmodule
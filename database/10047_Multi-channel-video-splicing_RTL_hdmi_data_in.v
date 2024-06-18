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
* ========================================================================
*/
// HDMI �������ݽ�֡Ϊ 30 ֡��rgb888 ת rgb565
// ע�⣺�ô����Ѿ�����ʱ�򣬱��뾭�� RAM ����д VESA ʱ�������ʾ

module hdmi_data_in(
    input               hdmi_pix_clk_in,
    input               rst,

    input [7:0]         red_in,
    input [7:0]         green_in,
    input [7:0]         blue_in,
    input               vs_in,
    input               de_in,

    output              vs_out,         // �Ѿ�������Ϊʵ����ʾ VESA ʱ���ź�
    output              de_out,
    output      [15:0]  rgb565_out
);

wire        pose_vs_in;
wire        nege_vs_in;

reg         vs_out_temp;
reg [15:0]  rgb565_temp;
reg         vs_in_1;
reg         de_out_temp;
reg         frame_en;
reg [1:0]   frame_count;


assign pose_vs_in = ((vs_in) && (~vs_in_1)) ? 1'b1 : 1'b0;
assign nege_vs_in = ((~vs_in) && (vs_in_1)) ? 1'b1 : 1'b0;


// ����һ����ͬ���źţ�Ȼ��������Ч
// �ӳ�һ��ʱ������
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        vs_in_1 <= 'b0;
    end
    else begin
        vs_in_1 <= vs_in;
    end
end

// ��ͬ���źŵڶ�֡��ƽ
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if (!rst) begin
        vs_out_temp <= 1'b0;
    end
    else if(frame_count == 2'd1) begin
        vs_out_temp <= vs_in_1;
    end
    else begin
        vs_out_temp <= 1'b0;
    end
end
assign vs_out = vs_out_temp;


// ÿ��֡���ڶ�֡
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        frame_count <= 'b0;
    end
    else if(pose_vs_in) begin
        if(frame_count == 2'd2) begin
            frame_count <= 2'd1;
        end
        else begin
            frame_count <= frame_count + 1'b1;
        end
    end
    else begin
        frame_count <= frame_count;
    end
end


// һ֡��Ч�źţ���ͬ���½������ߣ�����������
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        frame_en <= 'b0;
    end
    else if(frame_count == 2'd1) begin
        if(nege_vs_in) begin
            frame_en <= 1'b1;
        end
        else if(pose_vs_in) begin
            frame_en <= 1'b0;
        end
        else begin
            frame_en <= frame_en;
        end
    end
    else begin
        frame_en <= frame_en;
    end
end


// ����Ч�źţ����źŽ�ֻ��Ϊ֮����� RAM ��дʹ���ź�
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        de_out_temp <= 'b0;
    end
    else if(frame_en) begin
        if(de_in) begin
            de_out_temp <= 1'b1;
        end
        else begin
            de_out_temp <= 1'b0;
        end
    end
    else begin
        de_out_temp <= 1'b0;
    end
end
assign de_out = de_out_temp;


// rgb888 ת rgb565
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        rgb565_temp <= 'b0;
    end
    else if(de_in) begin                // ��֤�� de_out ʱ��ͬ��
        rgb565_temp <= {red_in[7:3],green_in[7:2],blue_in[7:3]};
    end
    else begin
        rgb565_temp <= 16'b0;
    end
end
assign rgb565_out = rgb565_temp;

endmodule
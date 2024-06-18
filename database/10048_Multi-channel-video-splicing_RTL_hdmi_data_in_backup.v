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
// HDMI �������ݴ���Ϊ RGB565 ��ʽ
//
module hdmi_data_in(
    input               clk_hdmi_sync,
    input               hdmi_pix_clk_in,
    input               rst,

    input [7:0]         red_in,
    input [7:0]         green_in,
    input [7:0]         blue_in,
    input               vs_in,
    input               de_in,

    //output              pix_clk_hdmi,
    output reg          vs_out,
    output reg          de_out,
    output reg  [15:0]  rgb565_out
);

// �����ʱ����
parameter   VSYNC_1 = 15'd3785,     // ��ͬ���ߵ�ƽʱ��
            V_H = 15'd21103,        // vsync �½��ص���һ����ͬ��������ʱ��
            HREF_1 = 15'd1280,      // ����Ч�ߵ�ƽʱ��
            HREF_0 = 15'd612,       // ÿ��ɨ����ʱ��
            H_V = 15'd13564;        // �н�β����ͬ�������ص�ʱ��
parameter   HREF_COUNT_MAX = 10'd720;   // һ֡������Ч�ź����ظ���
parameter   WAIT = 15'd512;           // DVP �ź����ɵȴ�
// ����״̬����
parameter   SYNC_INIT = 3'b000,
            VSYNC = 3'b001,
            H_FP = 3'b010,
            H_ACT = 3'b011,
            H_BP = 3'b100,
            V_FP = 3'b101;

wire [15:0] rgb565_temp;
wire        wr_en;
wire        pose_vs_in;
wire        nege_vs_in;
wire        de_out_nege;
wire [15:0] rgb565_temp_out;


reg         vs_in_1;
reg         frame_en;
reg [1:0]   frame_count;
reg [9:0]   wr_addr;
reg [15:0]  clk_count; 
reg         clk_count_rst;
reg [9:0]   rd_addr;
reg         de_out_1;
reg [9:0]   href_count;
reg         vs_out_temp;
reg         de_out_temp;

reg [2:0]   state;

assign rgb565_temp = {red_in[7:3],green_in[7:2],blue_in[7:3]};
assign pose_vs_in = ((vs_in) && (~vs_in_1)) ? 1'b1 : 1'b0;
assign nege_vs_in = ((~vs_in) && (vs_in_1)) ? 1'b1 : 1'b1;


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

// ÿ��֡���ڶ�֡
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        frame_count <= 'b0;
    end
    else if((pose_vs_in == 1'b1) && (frame_count == 2'd2)) begin
        frame_count <= 2'd1;
    end
    else if(pose_vs_in) begin
        frame_count <= frame_count + 1'b1;
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

// д��Ч�ź�
/*always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        wr_en <= 'b0;
    end
    else if(frame_en) begin
        if(de_in) begin
            wr_en <= 1'b1;
        end
        else begin
            wr_en <= 1'b0;
        end
    end
    else begin
        wr_en <= 1'b0;
    end
end*/
assign wr_en = ((frame_en) && (de_in)) ? 1'b1 : 1'b0;


// д��ַ����
always @(posedge hdmi_pix_clk_in or negedge rst) begin
    if(!rst) begin
        wr_addr <= 'b0;
    end
    else if(wr_en) begin
        wr_addr <= wr_addr + 1'b1;
    end
    else begin
        wr_addr <= wr_addr;
    end
end

// д������ de ��������ɲ�������
sdram_sync u_sdram_sync(
    .wr_data        (rgb565_temp),    // input [15:0]
    .wr_addr        (wr_addr),    // input [9:0]
    .rd_addr        (rd_addr),    // input [9:0]
    .wr_clk         (hdmi_pix_clk_in),      // input
    .rd_clk         (clk_hdmi_sync),      // input
    .wr_en          (wr_en),        // input
    .rst            (!rst),            // input
    .rd_data        (rgb565_temp_out)     // output [15:0]
);

// ʱ�Ӽ����ź�
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        clk_count <= 'b0;
    end
    else if(clk_count_rst) begin
        clk_count <= 16'b0;
    end
    else begin
        clk_count <= clk_count + 1'b1;
    end
end

// ״̬��ת��ʱ�Ӽ����������ź�
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        state <= 'b0;
    end
    else begin
        case(state)
            SYNC_INIT: begin
                if(clk_count == WAIT) begin
                    state <= VSYNC;
                end
                else begin
                    state <= SYNC_INIT;
                end
            end
            VSYNC: begin
                if(clk_count == VSYNC_1) begin
                    state <= H_FP;
                end
                else begin
                    state <= VSYNC;
                end
            end
            H_FP: begin
                if(clk_count == V_H) begin
                    state <= H_ACT;
                end
                else begin
                    state <= state;
                end
            end
            H_ACT: begin
                if(clk_count == HREF_1) begin
                    state <= H_BP;
                end
                else begin
                    state <= state;
                end
            end
            H_BP: begin
                if(clk_count == HREF_0) begin
                    if(href_count == HREF_COUNT_MAX) begin
                        state <= V_FP;
                    end
                    else begin
                        state <= H_ACT;
                    end
                end
                else begin
                    state <= state;
                end
            end
            V_FP: begin
                if(clk_count == H_V) begin
                    state <= VSYNC;
                end
                else begin
                    state <= state;
                end
            end
            default: begin
                state <= VSYNC;
            end
        endcase
    end
end


// �г��źŸ�ֵ
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        vs_out_temp <= 'b0;
        de_out_temp <= 'b0;
    end
    else begin
        case(state)
            SYNC_INIT: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b0;
            end
            VSYNC: begin
                vs_out_temp <= 1'b1;
                de_out_temp <= 1'b0;
            end
            H_FP: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b0;
            end
            H_ACT: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b1;
            end
            H_BP: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b0;
            end
            V_FP: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b0;
            end
            default: begin
                vs_out_temp <= 1'b0;
                de_out_temp <= 1'b0;
            end
        endcase
    end
end


// ����ַ����
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        rd_addr <= 'b0;
    end
    else if(de_out_temp) begin
        rd_addr <= rd_addr + 1'b1;
    end
    else begin
        rd_addr <= rd_addr;
    end
end


// �ӳ�����Ч�ź�һ��ʱ�䵥λ���Ա�����Ч�ź����ؼ���
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        de_out <= 'b0;
    end
    else begin
        de_out <= de_out_temp;
    end
end
assign de_out_nege = ((~de_out_temp) && (de_out)) ? 1'b1 : 1'b0;

always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        href_count <= 'b0;
    end
    else if(href_count < HREF_COUNT_MAX + 1'b1) begin
        if(de_out_nege == 1'b1) begin
            href_count <= href_count + 1'b1;
        end
        else begin
            href_count <= href_count;
        end
    end
    else begin
        href_count <= 16'b0;
    end
end


// ʱ�Ӽ����������ź�
always @(*) begin
    case(state)
        SYNC_INIT: clk_count_rst <= (clk_count == WAIT) ? 1'b1 : 1'b0;
        VSYNC: clk_count_rst <= (clk_count == VSYNC_1) ? 1'b1: 1'b0;
        H_FP: clk_count_rst <= (clk_count == V_H) ? 1'b1 : 1'b0;
        H_ACT: clk_count_rst <= (clk_count == HREF_1) ? 1'b1 : 1'b0;
        H_BP: clk_count_rst <= (clk_count == HREF_0) ? 1'b1 : 1'b0;
        V_FP: clk_count_rst <= (clk_count == H_V) ? 1'b1 : 1'b0;
        default: clk_count_rst <= 1'b0;
    endcase
end

// RGB 565 ���ݸ�ֵ
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        rgb565_out <= 'b0;
    end
    else if(de_out_temp) begin
        rgb565_out <= rgb565_temp_out;
    end
    else begin
        rgb565_out <= rgb565_temp_out;
    end
end


// ��ͬ���ź�ͬ���ӳ�
always @(posedge clk_hdmi_sync or negedge rst) begin
    if(!rst) begin
        vs_out <= 'b0;
    end
    else begin
        vs_out <= vs_out_temp;
    end
end

endmodule
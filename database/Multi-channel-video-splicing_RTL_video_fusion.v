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
// ˫Ŀ����ͷͼ�������ں�
//
module video_fusion(
    input               rst,

    input               cmos1_pclk,         // �� CMOS_1 ������ʱ����Ϊ��׼ʱ��
    input               cmos1_href,
    input               cmos1_vsync,
    input      [15:0]   cmos1_data,
    input               cmos2_pclk,
    input               cmos2_href,
    input               cmos2_vsync,
    input      [15:0]   cmos2_data,

    output              cmos_fusion_href,
    output              cmos_fusion_vsync,
    output reg [15:0]   cmos_fusion_data       
);

// ���ú��ʵ��г�ͬ���źŵ��ӳ�����FIFO almost_full����ͬ������
parameter DELAY = 6'd50; 
// ��������cmos����ƫ�Ƶ��ӳ����ظ���(��������ʹ���ź�ƫ��ʱ��ʱ��������)
parameter DELAY_en =5'd8;

wire [15:0]             rd_cmos1;
wire [15:0]             rd_cmos2;
wire                    almost_full_1;
wire                    almost_full_2;
wire                    cmos1_posedge_flag;
wire                    cmos2_posedge_flag;
wire                    rd_en_2;

reg                     rd_en_1;
reg [(DELAY-2'd1):0]    reg_delay_1;
reg [(DELAY-2'd1):0]    reg_delay_2;
reg [(DELAY_en-2'd1):0] reg_delay_en;

reg                     cmos1_href_reg;
reg                     cmos2_href_reg;

assign cmos1_posedge_flag=(~cmos1_href_reg)&cmos1_href;
assign cmos2_posedge_flag=(~cmos2_href_reg)&cmos2_href;


// ���� CMOS_1 ����
fifo_cam fifo_cam_1(
    .wr_data        (cmos1_data),              // input [15:0]
    .wr_en          (cmos1_href),                  // input
    .full           (),                    // output
    .almost_full    (almost_full_1),      // output
    .rd_data        (rd_cmos1),              // output [15:0]
    .rd_en          (rd_en_1),                  // input
    .empty          (),                  // output
    .almost_empty   (),    // output
    .wr_clk         (cmos1_pclk),                      // input
    .rd_clk         (cmos1_pclk),
    .wr_rst         (!rst),                       // input
    .rd_rst         (!rst)
);


// ���� CMOS_2 ����
fifo_cam fifo_cam_2(
    .wr_data        (cmos2_data),              // input [15:0]
    .wr_en          (cmos2_href),                  // input
    .full           (),                    // output
    .almost_full    (almost_full_2),      // output
    .rd_data        (rd_cmos2),              // output [15:0]
    .rd_en          (rd_en_2),                  // input
    .empty          (),                  // output
    .almost_empty   (),    // output
    .wr_clk         (cmos2_pclk),                      // input
    .rd_clk         (cmos1_pclk),
    .wr_rst         (!rst),
    .rd_rst         (!rst)     
);

//����cmos����Ч�źŴ�һ��
always @(posedge cmos1_pclk or negedge rst) begin
    if(!rst) begin
        cmos1_href_reg <= 'b0;
    end
    else
        cmos1_href_reg <= cmos1_href;
end

always @(posedge cmos2_pclk or negedge rst) begin
    if(!rst) begin
        cmos2_href_reg <= 'b0;
    end
    else
        cmos2_href_reg <= cmos2_href;
end


// ��ʹ��
// �����źŵ� almost_full �����ؼ�Ⲣ���
always @(posedge cmos1_pclk or negedge rst) begin
    if(!rst) begin
        rd_en_1 <= 'b0;
    end
    else if (cmos1_posedge_flag|cmos2_posedge_flag) begin
        rd_en_1 <= 1'b0;
    end
    else if(almost_full_1 || almost_full_2)begin
        rd_en_1 <= 1'b1;
    end
    else begin
        rd_en_1 <= rd_en_1;
    end
end


//CMOS2��ʹ����ʱ10��ʱ��
always @(posedge cmos1_pclk or negedge rst) begin
    if(!rst) begin
        reg_delay_en <= 'b0;
    end
    else begin
        reg_delay_en <= {reg_delay_en[(DELAY_en-2'd2):0],rd_en_1};
    end
end
assign rd_en_2 = reg_delay_en[DELAY_en-1'b1];


// �ں�ͼ��
always @(posedge cmos1_pclk or negedge rst) begin
    if(!rst) begin
        cmos_fusion_data <= 'b0;
    end
    else begin
        cmos_fusion_data <= {(rd_cmos1[15:11]>>1)+(rd_cmos2[15:11]>>1),
                            (rd_cmos1[10:5]>>1)+(rd_cmos2[10:5]>>1),
                            (rd_cmos1[4:0]>>1)+(rd_cmos2[4:0]>>1)};
        /*cmos_fusion_data <= {(rd_cmos1[4:0]>>1)+(rd_cmos2[4:0]>>1),
                            (rd_cmos1[10:5]>>1)+(rd_cmos2[10:5]>>1),
                            (rd_cmos1[15:11]>>1)+(rd_cmos2[15:11]>>1)};*/
    end
end
// CMOS1����ԣ����ϴ�Լ 80 ���أ����� 13 ���أ������账��


// �г�ͬ���ź��ӳٴ���
always @(posedge cmos1_pclk or negedge rst) begin
    if (!rst) begin
        reg_delay_1 <= 'b0; 
    end 
    else begin
        reg_delay_1 <= {reg_delay_1[(DELAY-2'd2):0], cmos1_href}; // �������źŴ������Ĵ����ĵ�λ
    end
end
always @(posedge cmos1_pclk or negedge rst) begin
    if (!rst) begin
        reg_delay_2 <= 'b0; 
    end 
    else begin
        reg_delay_2 <= {reg_delay_2[(DELAY-2'd2):0], cmos1_vsync};
    end
end

assign cmos_fusion_href = reg_delay_1[DELAY-2'd1];
assign cmos_fusion_vsync = reg_delay_2[DELAY-2'd1];

endmodule
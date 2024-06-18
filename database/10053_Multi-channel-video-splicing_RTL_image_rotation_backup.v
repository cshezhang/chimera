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
* FILE ENCODER TYPE: GB2312
* ========================================================================
*/
// ������ת
//
module image_rotation#(
    parameter COL_PIXEL = 'd1280,       // ������
    parameter ROW_PIXEL = 'd720         // ������
)(
    input               clk,
    input               rst,
    input  [7:0]        command_in,
    input  [15:0]       data_in,        //RGB565��������
    input  [10:0]       row_end_flag,            //LCD��ʾ���м���
    input  [10:0]       frame_end_flag,            //������
    output [15:0]       rd_addr,        //���ɵĶ�RAM��ַ
    output [15:0]       data_out        //��ʾ������
);

wire          display_value;        //��ʾ������Ч��־λ
wire [8:0]    cnt_col;    //��ʾ����ͼƬ��������
wire [8:0]    cnt_row;

reg [3:0]     rotate_value;
reg [3:0]     mirror_value;
reg [10:0]    hcount;
reg [2:0]     vcount;
reg [8:0]     mirror_x;    // ������������
reg [8:0]     mirror_y;
reg [8:0]     rotate_x;    // ��ת���������
reg [8:0]     rotate_y;


// ָ��ѡ��
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        rotate_value <= 'b0;
        mirror_value <= 'b0;
    end
    else if(command_in[7:4] == 4'b0100) begin
        rotate_value <= command_in[3:0];
    end
    else if(command_in[7:4] == 4'b0101) begin
        mirror_value <= command_in[3:0];
    end
    else begin
        rotate_value <= rotate_value;
        mirror_value <= mirror_value;
    end
end

//����480*272��ʾ��壬ͼƬ240*136Ҫ��ʾ�������룬����90����ת����ʾ������г����������¼��㣺
/*assign cnt_col = (rotate_value==0||rotate_value==2) ? (hcount >= 120 ? hcount-120 : 0) : (hcount >= 172 ? hcount-172 : 0);
assign cnt_row = (rotate_value==0||rotate_value==2) ? (vcount >= 68 ? vcount-68 : 0) : (vcount >= 16 ? vcount-16 : 0);    
*/    


// ��ת
always @(*) begin
    case(rotate_value)
        2'b00   : begin                                     //ԭͼ
                    rotate_x = cnt_col;
                    rotate_y = cnt_row;
                  end
        2'b01   : begin                                     //��ת90�ȣ�
                    rotate_x = cnt_row;
                    rotate_y = (ROW_PIXEL-1) - cnt_col;
                  end
        2'b10   : begin                                     //��ת180�ȣ��൱��ԭͼˮƽ����ֱ����
                    rotate_x = (COL_PIXEL-1) - cnt_col;
                    rotate_y = (ROW_PIXEL-1) - cnt_row;
                  end
        2'b11   : begin                                     //��ת90�ȣ���ת270�ȣ�����ת90�Ⱥ�ˮƽ����ֱ����
                    rotate_x = (COL_PIXEL-1) - cnt_row;
                    rotate_y = cnt_col;
                  end
        default : begin
                    rotate_x = cnt_col;
                    rotate_y = cnt_row;
                  end
    endcase
end


// ����
always @(*) begin
    case(mirror_value)
        2'b00   : begin                                     //ԭͼ
                    mirror_x = rotate_x;
                    mirror_y = rotate_y;
                  end
        2'b01   : begin                                     //ˮƽ����
                    mirror_x = (COL_PIXEL-1) - rotate_x;
                    mirror_y = rotate_y;
                  end
        2'b10   : begin                                     //��ֱ����
                    mirror_x = rotate_x;
                    mirror_y = (ROW_PIXEL-1) - rotate_y;
                  end
        2'b11   : begin                                     //ˮƽ��ֱ����
                    mirror_x = (COL_PIXEL-1) - rotate_x;
                    mirror_y = (ROW_PIXEL-1) - rotate_y;
                  end
        default : begin
                    mirror_x = rotate_x;
                    mirror_y = rotate_y;
                  end
    endcase
end




//rotate_value==0||rotate_value==2��תʱ��ʾ��߶Ե������¶�����ʾ����
assign display_value =  (rotate_value==0||rotate_value==2) ? (hcount >= 120 && hcount < 360) && (vcount >= 68 && vcount < 204)
 : (hcount >= 172 && hcount < 308) && (vcount >= 16 && vcount < 256);            

assign read_addr = mirror_y * COL_PIXEL + mirror_x;    //RAM�ж�ȡ�����ص�ַ
assign data_out = display_value ? data_in : 0;    //��ʾ������Ϊ��

endmodule
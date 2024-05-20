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
// ͼ������
//
module image_scale#(
    parameter COL_PIXEL = 'd1280*3/4,
    parameter ROW_PIXEL = 'd720*3/4
)(
    input           clk,
    input           rst,
    input  [7:0]    command_in,
    output [15:0]   rd_addr,  
    input  [15:0]   data_in, 
    
    output [15:0]   data_out
);

parameter WIDTH_OFFSET = 'd160;        // ����ʵ�ʵĳ�ʼ��ʾλ���ںδ�
parameter HEIHT_OFFSET = 'd180;

reg [9:0]       pix_count;        
reg [9:0]       href_count;      
reg [3:0]       zoom_in_value;
reg [3:0]       zoom_out_value;
reg [8:0]       zoom_in_x;            // �Ŵ�������ӳ��
reg [8:0]       zoom_in_y;

wire [8:0]      zoom_x;               // �������ź�����ӳ��
wire [8:0]      zoom_y;
wire            display_value;        // ͼ����Ч��ʾ����


// ��������
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        zoom_in_value <= 'b0;
        zoom_out_value <= 'b0;
    end
    else if(command_in[7:4] == 4'b0000) begin
        zoom_in_value <= command_in[3:0];
        zoom_out_value <= zoom_out_value;
    end
    else if(command_in[7:4] == 4'b0001) begin
        zoom_in_value <= zoom_in_value;
        zoom_out_value <= command_in[3:0];
    end
    else begin
        zoom_in_value <= zoom_in_value;
        zoom_out_value <= zoom_out_value;
    end
end


/*assign cnt_col = hcount >= IMG_x ? hcount-IMG_x : 0;    
assign cnt_row = vcount >= IMG_y ? vcount-IMG_y : 0;    */
// ���ؼ���
/*always @(posedge clk or negedge rst) begin
    if(!rst) begin
        href_count <= 'b0;
    end
    else if()
end

 

// �Ŵ�����ӳ��       
// ƫ������ʽ��+ [side*(n-1)/2]��nΪ�Ŵ���  sideΪͼ��Ŀ���
always @(*) begin
    case(zoom_in_value)
        2'b00   : begin                                     //ԭͼ
                    zoom_In_x = cnt_col;
                    zoom_In_y = cnt_row;
                  end
        2'b01   : begin                                     //2��
                    zoom_In_x = (cnt_col+120)>>1;
                    zoom_In_y = (cnt_row+68)>>1;
                  end
        2'b10   : begin                                     //4��
                    zoom_In_x = (cnt_col+360)>>2;
                    zoom_In_y = (cnt_row+204)>>2;
                  end
        2'b11   : begin                                     //8��
                    zoom_In_x = (cnt_col+840)>>3;
                    zoom_In_y = (cnt_row+476)>>3;
                  end
        default : begin
                    zoom_In_x = cnt_col;
                    zoom_In_y = cnt_row;
                  end
    endcase
end


// ��С����ӳ��
//ֱ��������λ���ﵽ��С���������󡣴����ڷŴ�ӳ������󣬿�����ʵ�ֱַ����²�������С���ľֲ��Ŵ�
assign zoom_x = zoom_In_x << zoom_out_value;
assign zoom_y = zoom_In_y << zoom_out_value;

//---------------------------------------------------
//������С��ʹ�ֱ��ʼ�С��ԭ��ʾ����������С����^2��ͼ�����У�����ֻ��ʾ���Ͻǵ�һ����Сͼ��
assign display_value =  (hcount >= IMG_x && hcount < IMG_x+(COL>>Zoom_Out)) && (vcount >= IMG_y && vcount < IMG_y+(ROW>>Zoom_Out));    

assign read_addr = zoom_y * COL + zoom_x;            //����ӳ���� RAM ��ַ
assign data_out = display_value ? data_in : 0;       //��Ч��ʾ�������ͼ����Ч����Ϊ��
*/
endmodule        
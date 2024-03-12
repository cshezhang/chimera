//##############################################################################################################
//##############################################################################################################
//##############################################################################################################
//###                         Copyright 2022~2023 Wilson Chen                                                ###
//###            Licensed under the Apache License, Version 2.0 (the "License");                             ###
//###            You may not use this file except in compliance with the License.                            ###
//###            You may obtain a copy of the License at                                                     ###
//###                    http://www.apache.org/licenses/LICENSE-2.0                                          ###
//###            Unless required by applicable law or agreed to in writing, software                         ###
//###            distributed under the License is distributed on an "AS IS" BASIS,                           ###
//###            WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.                    ###
//###            See the License for the specific language governing permissions and                         ###
//###            limitations under the License.                                                              ###
//##############################################################################################################
//##############################################################################################################
//##############################################################################################################

//================================================================================================
//======= this is internal design for Async Fifo ===============
//================================================================================================
//// default module name is : async_fifo

module <:$mod_name:> 
(
        // FIFO��������
         parameter   data_width = <:$dwd:>,// FIFO���
         parameter   data_depth = <:$depth:>,// FIFO���
         parameter   address_width = <:$awd:>, // ��ַ��ȣ��������Ϊ2^n��FIFO����Ҫ�Ķ�/дָ��λ��Ϊ(n+1)λ�����һλ��Ϊ�۷���־λ
         input                           rst_wr,
         input                           wr_clk,
	 input                           wr_en,
         input      [data_width-1:0]     wr_din, 
         input                           rst_rd,
         input                           rd_clk,
         input                           rd_en,
         output reg [data_width-1:0]     rd_dout
);
 
 
reg    [address_width:0]    wr_addr_p;//д��ַָ��
reg    [address_width:0]    rd_addr_p;//����ַָ��
 
wire   [address_width-1:0]  wr_addr;//дRAM ��ַ
wire   [address_width-1:0]  rd_addr;//��RAM ��ַ
 
wire   [address_width:0]    wr_addr_gray;//д��ַָ���Ӧ�ĸ�����
reg    [address_width:0]    wr_addr_gray_d1;
reg    [address_width:0]    wr_addr_gray_d2;//д��ַָ��ͬ������ʱ�����Ӧ�ĸ�����
 
wire   [address_width:0]    rd_addr_gray;//����ַָ���Ӧ�ĸ�����
reg    [address_width:0]    rd_addr_gray_d1;
reg    [address_width:0]    rd_addr_gray_d2;//����ַָ��ͬ����дʱ�����Ӧ�ĸ�����";

<:
   if ($test == 1) {
	   $OUT .= " // test line ";
	}
:>



//=======================================================================================================================
// Please add your implement logic below ,
// Please add any cfg parameter in _Cfg.json, and used in code as a variabe of  {$var}
//=======================================================================================================================



endmodule

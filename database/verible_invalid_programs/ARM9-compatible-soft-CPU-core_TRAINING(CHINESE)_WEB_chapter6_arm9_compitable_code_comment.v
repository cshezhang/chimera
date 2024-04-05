`timescale 1 ns/1 ns
`define DEL 2
module arm9_compitable_code(
          clk,
          cpu_en,
          cpu_restart,
          fiq,
          irq,
          ram_abort,
          ram_rdata,
          rom_abort,
          rom_data,
          rst,

          ram_addr,
          ram_cen,
          ram_flag,
          ram_wdata,
          ram_wen,
          rom_addr,
          rom_en 
        ); 


input            clk;
input            cpu_en;
input            cpu_restart;
input            fiq;
input            irq;
input            ram_abort;
input  [31:0]     ram_rdata;
input            rom_abort;
input  [31:0]     rom_data;
input            rst;


output [31:0]     ram_addr;
output           ram_cen;
output [3:0]     ram_flag;
output [31:0]     ram_wdata;
output           ram_wen;
output [31:0]     rom_addr;
output           rom_en;


/******************************************************/
//register definition area
/******************************************************/
reg              add_flag;
reg              all_code;
reg    [3:0]     cha_num;
reg              cha_vld;
reg    [31:0]     cmd;
reg    [31:0]     cmd_addr;
reg              cmd_flag;
reg              code_abort;
reg              code_flag;
reg    [31:0]     code_rm;
reg    [31:0]     code_rma;
reg    [4:0]     code_rot_num;
reg    [31:0]     code_rs;
reg    [2:0]     code_rs_flag;
reg    [31:0]     code_rsa;
reg              code_und;
reg              cond_satisfy;
reg              cpsr_c;
reg              cpsr_f;
reg              cpsr_i;
reg    [4:0]     cpsr_m;
reg              cpsr_n;
reg              cpsr_v;
reg              cpsr_z;
reg    [31:0]     dp_ans;
reg              extra_num;
reg              fiq_flag;
reg    [31:0]     go_data;
reg    [5:0]     go_fmt;
reg    [3:0]     go_num;
reg              go_vld;
reg              hold_en_dly;
reg              irq_flag;
reg              ldm_change;
reg    [3:0]     ldm_num;
reg    [3:0]     ldm_sel;
reg              ldm_usr;
reg              ldm_vld;
reg              multl_extra_num;
reg    [31:0]     r0;
reg    [31:0]     r1;
reg    [31:0]     r2;
reg    [31:0]     r3;
reg    [31:0]     r4;
reg    [31:0]     r5;
reg    [31:0]     r6;
reg    [31:0]     r7;
reg    [31:0]     r8_fiq;
reg    [31:0]     r8_usr;
reg    [31:0]     r9_fiq;
reg    [31:0]     r9_usr;
reg    [31:0]     ra_fiq;
reg    [31:0]     ra_usr;
reg    [3:0]     ram_flag;
reg    [31:0]     ram_wdata;
reg    [31:0]     rb_fiq;
reg    [31:0]     rb_usr;
reg    [31:0]     rc_fiq;
reg    [31:0]     rc_usr;
reg    [31:0]     rd;
reg    [31:0]     rd_abt;
reg    [31:0]     rd_fiq;
reg    [31:0]     rd_irq;
reg    [31:0]     rd_svc;
reg    [31:0]     rd_und;
reg    [31:0]     rd_usr;
reg    [31:0]     re;
reg    [31:0]     re_abt;
reg    [31:0]     re_fiq;
reg    [31:0]     re_irq;
reg    [31:0]     re_svc;
reg    [31:0]     re_und;
reg    [31:0]     re_usr;
reg    [63:0]     reg_ans;
reg    [31:0]     rf;
reg              rm_msb;
reg    [31:0]     rn;
reg    [31:0]     rn_register;
reg    [31:0]     rna;
reg    [31:0]     rnb;
reg              rs_msb;
reg    [31:0]     sec_operand;
reg    [10:0]     spsr;
reg    [10:0]     spsr_abt;
reg    [10:0]     spsr_fiq;
reg    [10:0]     spsr_irq;
reg    [10:0]     spsr_svc;
reg    [10:0]     spsr_und;
reg    [4:0]     sum_m;
reg    [31:0]     to_data;
reg    [3:0]     to_num;


/******************************************************/


/******************************************************/
//wire definition area
/******************************************************/
wire   [31:0]     and_ans;
wire   [31:0]     bic_ans;
wire             bit_cy;
wire             bit_ov;
wire             cha_rf_vld;
wire             cmd_is_b;
wire             cmd_is_bx;
wire             cmd_is_dp0;
wire             cmd_is_dp1;
wire             cmd_is_dp2;
wire             cmd_is_ldm;
wire             cmd_is_ldr0;
wire             cmd_is_ldr1;
wire             cmd_is_ldrh0;
wire             cmd_is_ldrh1;
wire             cmd_is_ldrsb0;
wire             cmd_is_ldrsb1;
wire             cmd_is_ldrsh0;
wire             cmd_is_ldrsh1;
wire             cmd_is_mrs;
wire             cmd_is_msr0;
wire             cmd_is_msr1;
wire             cmd_is_mult;
wire             cmd_is_multl;
wire             cmd_is_multlx;
wire             cmd_is_swi;
wire             cmd_is_swp;
wire             cmd_is_swpx;
wire             cmd_ok;
wire   [4:0]     cmd_sum_m;
wire   [31:0]     code;
wire             code_is_b;
wire             code_is_bx;
wire             code_is_dp0;
wire             code_is_dp1;
wire             code_is_dp2;
wire             code_is_ldm;
wire             code_is_ldr0;
wire             code_is_ldr1;
wire             code_is_ldrh0;
wire             code_is_ldrh1;
wire             code_is_ldrsb0;
wire             code_is_ldrsb1;
wire             code_is_ldrsh0;
wire             code_is_ldrsh1;
wire             code_is_mrs;
wire             code_is_msr0;
wire             code_is_msr1;
wire             code_is_mult;
wire             code_is_multl;
wire             code_is_swi;
wire             code_is_swp;
wire   [3:0]     code_rm_num;
wire             code_rm_vld;
wire   [3:0]     code_rn_num;
wire             code_rn_vld;
wire   [3:0]     code_rnhi_num;
wire             code_rnhi_vld;
wire   [3:0]     code_rs_num;
wire             code_rs_vld;
wire   [4:0]     code_sum_m;
wire   [10:0]     cpsr;
wire   [1:0]     cy_high_bits;
wire   [31:0]     eor_ans;
wire             fiq_en;
wire             go_rf_vld;
wire             high_bit;
wire             hold_en;
wire             hold_en_rising;
wire             int_all;
wire             irq_en;
wire   [31:0]     ldm_data;
wire             ldm_rf_vld;
wire   [63:0]     mult_ans;
wire   [31:0]     or_ans;
wire   [31:0]     r8;
wire   [31:0]     r9;
wire   [31:0]     ra;
wire   [31:0]     ram_addr;
wire             ram_cen;
wire             ram_wen;
wire   [31:0]     rb;
wire   [31:0]     rc;
wire   [31:0]     rf_b;
wire   [31:0]     rom_addr;
wire             rom_en;
wire   [31:0]     sum_middle;
wire   [31:0]     sum_rn_rm;
wire             to_rf_vld;
wire             to_vld;
wire             wait_en;


/******************************************************/



/*
������������ʱͨ��rom_en/rom_addr��ָ���Ѿ�ȡ��rom_data�ˡ����ǰ�rom_data������Ϊcode��ֻ��
Ϊ�˷���֮�ã�û������Ŀ�ġ�
*/

assign code =  rom_data;

/*
����һϵ��code_is_xxx��ȷ��code����������ʲôָ�Ӧ��˵��ÿһ��ָ���һ��������־�������
��������־�Ǻϣ������ȷ������32 bit��ָ��������ʲôָ���ˡ���ô����ָ�ȷ���������Ϊ��

*/

assign code_is_b =  ( code[27:25]==3'b101 );

assign code_is_bx =  ( {code[27:23],code[20],code[7],code[4]}==8'b00010001 );

assign code_is_dp0 =  ( code[27:25]==3'b0 ) & ~code[4] & ( ( code[24:23]!=2'b10 ) | code[20] );	

assign code_is_dp1 =  (code[27:25]==3'b0 ) & ~code[7] & code[4] & ( ( code[24:23]!=2'b10 ) | code[20] );

assign code_is_dp2 =  ( code[27:25]==3'b001 ) & ( ( code[24:23]!=2'b10 ) | code[20] );

assign code_is_ldm =  ( code[27:25]==3'b100 );

assign code_is_ldr0 =  ( code[27:25]==3'b010 );

assign code_is_ldr1 =  ( code[27:25]==3'b011 );

assign code_is_ldrh0 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1011 ) & ~code[22];

assign code_is_ldrh1 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1011 ) & code[22];	

assign code_is_ldrsb0 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1101 ) & ~code[22];

assign code_is_ldrsb1 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1101 ) & code[22];		

assign code_is_ldrsh0 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1111 ) & ~code[22];

assign code_is_ldrsh1 =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1111 ) & code[22];	

assign code_is_mrs =  ({code[27:23],code[21:20],code[7],code[4]}==9'b000100000 );

assign code_is_msr0 =  ({code[27:23],code[21:20],code[7],code[4]}==9'b000101000 );

assign code_is_msr1 =  ( code[27:25]==3'b001 ) & ( code[24:23]==2'b10 ) & ~code[20];

assign code_is_mult =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1001 ) & ( code[24:23]==2'b00 );

assign code_is_multl =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1001 ) & ( code[24:23]==2'b01 );	

assign code_is_swi =  ( code[27:25]==3'b111 );

assign code_is_swp =  (code[27:25]==3'b0 ) & ( code[7:4]==4'b1001 ) & ( code[24:23]==2'b10 );	

/*
����������code_is_xxxֻ�Ƕ�code���з��ࡣ����all_codeȴ�Ƕ�code����ʶ�𡣿������Ƿ��ǺϷ�ָ�
��������ǺϷ�ָ�������undefined instruction�жϡ�

*/

always @ ( code )
if ( code[27:25]==3'b0 )
    if ( ~code[4] )
	    if ( ( code[24:23]==2'b10 ) & ~code[20] )
            if ( ~code[21] )
                all_code =  ( code[19:16]==4'hf ) & ( code[11:0] == 12'b0 );
            else
                all_code =  ( code[18:17] == 2'b0 ) & ( code[15:12]==4'hf ) & ( code[11:4]==8'h0 );
        else
            all_code =  ( code[24:23]!=2'b10 ) | code[20];
    else if ( ~code[7] )
        if ( code[24:20]==5'b10010 )
            all_code =  ( code[19:4]==16'hfff1 );
        else
            all_code =  ( code[24:23]!=2'b10 ) | code[20];
    else if ( code[6:5]==2'b0 )
        if ( code[24:22]==3'b0 )
            all_code =  1'b1;
        else if ( code[24:23]==2'b01 )
            all_code =  1'b1;
        else if ( code[24:23]==2'b10 )
            all_code =  ( code[21:20]==2'b0 ) & ( code[11:8]==4'b0 );
        else
            all_code =  1'b0;
    else if ( code[6:5]==2'b01 )
        if ( ~code[22] )
            all_code =  ( code[11:8]==4'b0 );
        else
            all_code =  1'b1;
	else //if ( ( code[6:5]==2'b10 )|(code[6:5]==2'b11) )
	    if ( code[20] )
		    if ( ~code[22] )
			    all_code =  ( code[11:8]==4'b0 );
			else
			    all_code =  1'b1;
		else
		    all_code =  1'b0;
else if ( code[27:25]==3'b001 )
    if ( (code[24:23]==2'b10) & ~code[20] )
        all_code =  code[21] & ( code[18:17]==2'b0 ) & ( code[15:12]==4'hf );
    else
	    all_code =  ( code[24:23]!=2'b10 ) | code[20];
else if ( code[27:25]==3'b010 )
    all_code =  1'b1;
else if ( code[27:25]==3'b011 )
    all_code =  ~code[4];
else if ( code[27:25]==3'b100 )
    all_code =  1'b1;
else if ( code[27:25]==3'b101 )
    all_code =  1'b1;
else if ( code[27:25]==3'b111 )
    all_code =  code[24];
else 
    all_code =  1'b0;	


/*
����ӼĴ�������ȡ���������case����Ƕ�codeָ����[3:0]��Ҳ����Rm����ȡ��������code[3:0]����
��Ӧ�Ĵ���������͸�code_rma��rf֮����Ҫ����4������Ϊ���ǵڶ�����rf��ŵ���code��Ӧ��ַ+4; ��
ARM�ֲ���Rm���ҪȡR15����Ӧ��ȡcode��Ӧ��ַ+8����������Ҫ��rf����4��

*/

always @ ( code or r0 or r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or ra or rb or rc or rd or re or rf )
case ( code[3:0] )
4'h0 : code_rma =  r0;
4'h1 : code_rma =  r1;	
4'h2 : code_rma =  r2;
4'h3 : code_rma =  r3;
4'h4 : code_rma =  r4;
4'h5 : code_rma =  r5;	
4'h6 : code_rma =  r6;
4'h7 : code_rma =  r7;	
4'h8 : code_rma =  r8;
4'h9 : code_rma =  r9;	
4'ha : code_rma =  ra;
4'hb : code_rma =  rb;
4'hc : code_rma =  rc;
4'hd : code_rma =  rd;	
4'he : code_rma =  re;
4'hf : code_rma =  (rf+3'b100);
 endcase

 /*
code_sum_m��Ҫ����LDM/STMָ�LDM/STM��code[15:0]�������ӦbitΪ1����ʾӦ�ü��ػ򴢴�üĴ�����
�����code[0]��code[15]����������Ҫ�õ�����LDM/STM�ļĴ���������

*/

assign code_sum_m =  (code[0]+code[1]+code[2]+code[3]+code[4]+code[5]+code[6]+code[7]+code[8]+code[9]+code[10]+code[11]+code[12]+code[13]+code[14]+code[15]);


/*
����ȷ�������Rm������֪�����漰����ת����˶����õ��˷�������ôcode_rm�����͸��˷�����һ��������
����������Rm�����û��Rm��Ҳ���԰ѳ����͸�code_rm��code_rm*code_rs(ͨ��Ϊ1)���ǵ��ڸó�����
�����������˽ṹ��һ�¡�
���磺if ( code_is_ldrh1|code_is_ldrsb1|code_is_ldrsh1 )
    ����Rm��һ��������{code[11:8],code[3:0]};
else if ( code_is_b )	���ָ����һ����תָ�����ת�ĳ�����code[23:0]ȷ��
    code_rm =  {{6{code[23]}},code[23:0],2'b0};
else if ( code_is_ldm ) LDM/STM������Ƚ����⣻�׸��ڶ��������Ƚ����⣬���ݲ�����code[24:23]��ȷ����
    case( code[24:23] )
    2'd0 : code_rm =  {(code_sum_m - 1'b1),2'b0};
    2'd1 : code_rm =  0;
	2'd2 : code_rm =  {code_sum_m,2'b0};
	2'd3 : code_rm =  3'b100;
	endcase	
else if ( code_is_ldr0 ) LDR��ĳЩָ���õ���12 bit�ĳ���
    code_rm =  code[11:0];	
else if ( code_is_msr1|code_is_dp2 ) MSR��data processing��ĳЩָ��ҳ�õ���8 bit�ĳ���
    code_rm =  code[7:0];
else if ( code_is_multl & code[22] & code_rma[31] ) ����ǳ��˷�ָ�code[22]ָ���Ƿ����з��ų˷� 
    code_rm =  ~code_rma + 1'b1;                   ������з��ų˷��Ļ�����ô��Ҫ���з��ŵ�Rmת�����޷��ŵ�Rm��
else if ( ( (code[6:5]==2'b10) & code_rma[31] ) & (code_is_dp0|code_is_dp1|code_is_ldr1)  )
    code_rm =  ~code_rma;     //�����Ƕ�ASR(��������)��һ�����⴦�����Rm�����λ��1����ȫ��ȡ�����ȵ���λ����ȡ��һ�Σ��������0��ȫ��Ϊ1�ˡ�
else
    code_rm =  code_rma;	
*/

always @ ( code_is_ldrh1 or code_is_ldrsb1 or code_is_ldrsh1 or code or code_is_b or code_is_ldm or code_sum_m or code_is_ldr0 or code_is_msr1 or code_is_dp2 or code_is_multl or code_rma or code_is_dp0 or code_is_dp1 or code_is_ldr1 )
if ( code_is_ldrh1|code_is_ldrsb1|code_is_ldrsh1 )
   	code_rm =  {code[11:8],code[3:0]};
else if ( code_is_b )	
    code_rm =  {{6{code[23]}},code[23:0],2'b0};
else if ( code_is_ldm )
    case( code[24:23] )
    2'd0 : code_rm =  {(code_sum_m - 1'b1),2'b0};
    2'd1 : code_rm =  0;
	2'd2 : code_rm =  {code_sum_m,2'b0};
	2'd3 : code_rm =  3'b100;
	endcase
else if ( code_is_ldr0 )
    code_rm =  code[11:0];	
else if ( code_is_msr1|code_is_dp2 )
    code_rm =  code[7:0];
else if ( code_is_multl & code[22] & code_rma[31] )
    code_rm =  ~code_rma + 1'b1;
else if ( ( (code[6:5]==2'b10) & code_rma[31] ) & (code_is_dp0|code_is_dp1|code_is_ldr1)  )
    code_rm =  ~code_rma;
else
    code_rm =  code_rma;

/*
һ��ARM��ָ�Ҫ�õ�Rs��Rsһ���Ӧ���ǣ�code[11:8]
rfҪ����4��ԭ��ͬcode_rma��
*/


always @ ( code or r0 or r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or ra or rb or rc or rd or re or rf )
case ( code[11:8] )
4'h0 : code_rsa =  r0;
4'h1 : code_rsa =  r1;	
4'h2 : code_rsa =  r2;
4'h3 : code_rsa =  r3;
4'h4 : code_rsa =  r4;
4'h5 : code_rsa =  r5;	
4'h6 : code_rsa =  r6;
4'h7 : code_rsa =  r7;	
4'h8 : code_rsa =  r8;
4'h9 : code_rsa =  r9;	
4'ha : code_rsa =  ra;
4'hb : code_rsa =  rb;
4'hc : code_rsa =  rc;
4'hd : code_rsa =  rd;	
4'he : code_rsa =  re;
4'hf : code_rsa =  (rf+3'b100);
endcase	 

/*
���ںܶ�����Ҫ�õ���λ����λ����Ŀ��code_rot_num�����������������ͬ��
һ���߼����ƵĻ�����λ��Ŀ���䣻�����������Ҫȡ����һ��
����MSR1��DP2ָ���Ĭ����ѭ�����ƣ�������λ��Ŀ��Ҫѭ����һ��
����ʱ����λ��ĿΪ��{code[11:8],1'b0}��
*/


always @ ( code_is_dp0 or code_is_ldr1 or code or code_is_dp1 or code_rsa or code_is_msr1 or code_is_dp2 )
if ( code_is_dp0|code_is_ldr1 )
    code_rot_num =  ( code[6:5] == 2'b00 ) ? code[11:7] : ( ~code[11:7]+1'b1 );
else if ( code_is_dp1 )
    code_rot_num =  ( code[6:5] == 2'b00 ) ? code_rsa[4:0] : ( ~code_rsa[4:0]+1'b1 );
else if ( code_is_msr1|code_is_dp2 )
    code_rot_num =  { (~code[11:8]+1'b1),1'b0 };
else
    code_rot_num =  5'b0;

/*
���濪ʼ׼���˷����ĵڶ�����������code_rs��
����ǳ��˷����������з��ų˷��Ļ�����ôRs��Ҫ���з���ת������������޷�������
����ǳ˷�ָ�code_rs = code_rsa��
����֮�⣬�˷�����������ת�ˡ���ôcode_rs = 1'b1 << code_rot_num��

*/	

always @ ( code_is_multl or code or code_rsa or code_is_mult or code_rot_num )
if ( code_is_multl )
    if ( code[22] & code_rsa[31] )
	    code_rs =  ~code_rsa + 1'b1;
	else
	    code_rs =  code_rsa;
else if ( code_is_mult )
    code_rs =  code_rsa;
else begin
    code_rs =  32'b0;
	code_rs[code_rot_num] = 1'b1;
    end
	
/*
code_rm * code_rs�����Ϊ��64 bit

*/	
		
assign mult_ans =  code_rm * code_rs;	

/*
���滹Ҫȷ����Щָ���code[3:0]��ָ����һ���Ĵ�����codeָ��ִ�е�һ��Ҫ������ʹ�õļĴ���û�б���һ��ָ���д��
���԰ѱ�ָ���Rm�����������һ��Ҫ��д�Ĵ������бȽϣ�������ȣ���code����ִ�У��������һ����ָ�

code_flag��code�Ƿ���Ч�ı�־��ͨ�������code������Ч�ģ�ֻ������תָ��ʱ����פ����code��ָ������Ч��.
*/

assign code_rm_vld =  code_flag & ( code_is_msr0|code_is_dp0|code_is_bx|code_is_dp1|code_is_mult|code_is_multl|code_is_swp|code_is_ldrh0|code_is_ldrsb0|code_is_ldrsh0|code_is_ldr1 );

assign code_rm_num =  code[3:0];

assign code_rs_vld =  code_flag & ( code_is_dp1|code_is_mult|code_is_multl );

assign code_rs_num =  code[11:8];

assign code_rn_vld =  code_flag & ( code_is_dp0|code_is_dp1|code_is_multl|code_is_swp|code_is_ldrh0|code_is_ldrh1|code_is_ldrsb0|code_is_ldrsb1|code_is_ldrsh0|code_is_ldrsh1|code_is_dp2|code_is_ldr0|code_is_ldr1|code_is_ldm );

assign code_rn_num =  code[19:16];

assign code_rnhi_vld =  code_flag & ( code_is_mult|code_is_multl|((code_is_ldrh0|code_is_ldrh1|code_is_ldr0|code_is_ldr1)& ~code[20]) );

assign code_rnhi_num =  code[15:12];	

/*
���ˣ��ڶ����ĳ˷����������ϣ���һ���ǰ���ص����ݱ�����Ĵ���������������ʹ�á�
reg_ans���׵���塣��������ǳ˷��Ľ����
����hold_en��ʲô��˼����ARMָ�����Щָ���ǲ�����һ������ִ����ϵģ�����SWP��LDM/STM��MULTLָ�
����������ָ�����Ҫ��ʱֹͣ��ˮ�ߣ�������ָ���ٹ���һ�����ڡ�hold_en���Ǳ�ʾ������״̬�ġ�
����һ������£�reg_ans = mult_ans��������LDM/STMʱ������Ҫ��reg_ans������Ĵ���
����ǵݼӴ洢�����reg_ans���еݼӣ�����ݼ���
��cmd_sum_m == 0ʱ���Ƕ�Rn���л�д����ʱ��ǿ��reg_ans����code_sum_m��������ʱ���code���ǵ�ǰ��LDM/STMָ��
����ҪԤ�Ȱ�code_sum_m���������������sum_m��������
*/

always @ ( posedge clk or posedge rst )
if ( rst )
    sum_m <= #`DEL 5'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    sum_m <= #`DEL  code_sum_m;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    reg_ans <= #`DEL 64'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    reg_ans <= #`DEL  mult_ans;
	else if ( cmd_is_ldm )
	    if ( cmd_sum_m==5'b1 )
		    reg_ans[6:2] <= #`DEL sum_m;	
	    else if ( cmd[23] )
		    reg_ans[6:2] <= #`DEL reg_ans[6:2] + 1'b1;
		else
		    reg_ans[6:2] <= #`DEL reg_ans[6:2] - 1'b1;
	else;
else;

/*
����һ���Rm��Rs�Ѿ�����Ҫ���ˡ�����Rm��Rs��ĳЩ��Ϣ������һ��������Ҫ�ġ������
�����üĴ��������������Ա���һ��ʹ�á�

code_rs_flag��Ҫ����Rs��һЩ��Ϣ���������Ƿ����32���Ƿ����32���Ƿ����0.
rm_msb�������Rm�ķ���λ����Ϊ���з��ų˷������Ҫ��reg_ans����ȡ��
rs_msb��Rs�ķ���λ��
*/


always @ ( posedge clk or posedge rst )
if ( rst )
    code_rs_flag <= #`DEL 3'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    if ( code_is_dp1 )
		    code_rs_flag <= #`DEL  {(code_rsa[7:0]>6'd32),(code_rsa[7:0]==6'd32),(code_rsa[7:0]==8'd0)};
		else
		    code_rs_flag <= #`DEL  0;
	else;
else;


always @ ( posedge clk or posedge rst )
if ( rst )
    rm_msb <= #`DEL 1'd0;
else if ( cpu_en )
    if ( ~hold_en )
        rm_msb <= #`DEL  code_rma[31];
    else;
else;


always @ ( posedge clk or posedge rst )
if ( rst )
    rs_msb <= #`DEL 1'd0;
else if ( cpu_en )
    if ( ~hold_en )
        rs_msb <= #`DEL  code_rsa[31];
    else;
else;	

/*
rom_abort����ȡָ���жϣ������������ָ���ǰһ��ָ������תָ���ʱ������
rom_abort=1'b1��Ҳ������ȡָ���жϡ��������ǰ�rom_abort�����������������Ӧ��ָ��
��ִ�У��򴥷��жϣ����򲻴����жϡ�

code_und�Ǳ��浱ǰָ���Ƿ�Ϸ��ı�־��ͬ����������Ӧ��ָ����Ҫִ��ʱ�������ʾ���Ƿ���
�����undefied instruction�жϡ�


*/

always @ ( posedge clk or posedge rst )
if ( rst )
    code_abort <= #`DEL 1'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    code_abort <= #`DEL  rom_abort;
	else;
else;


always @ ( posedge clk or posedge rst )
if ( rst )
    code_und <= #`DEL 1'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    code_und <= #`DEL  ~all_code;
	else;
else;


/*
���ˣ��ڶ����Ĳ������ִ������ˡ���������������ִ�С��ǲ��Ǿ���code_is_xxx������ʾһ��ָ��ķ����ǳ����á�
��ô���������ǻ���ʹ�������������ʾһ��ָ���������һ�ࡣ���ȣ����ǰ�codeԭ�濽����һ���Ĵ����
����Ĵ����ǣ�cmd��

һ������£����cmd�����ָ���Ҫ�������ִ�У���ôhold_en == 1��b0��������һ��ָ��code������cmd��
���cmd����Ҫִ�У���ôhold_en = 1'b1������hold_en����1��ָ���У�SWP��MULTL��LDM/STM��

SWP��MULTL��Ҫ����������ɣ���ô���cmd_is_swpΪ��Ļ���hold_en = 1��Ϊ�˺ܼ򵥵�����swp������ִ�е���š�
������cmd[27:25]==3'b110��ʾswp����һ��swpx��������cmd_is_swpʱ����λcmd[27:25].��ô���ǿ�����Ϊcmd_is_swpx��
SWP�ĺ���ġ�

multlͬswp���ơ�

����LDM/STM���Ҳ��õķ����ǣ��ӵ͵��ߣ�����ִ�С������λ�ļĴ���ִ�����������Ը�bit���������ֱ�����е�
cmd[15:0]ȫΪ0�������е�ldm/stmȫ��ִ����ϡ�


*/

always @ ( posedge clk or posedge rst )
if ( rst )
    cmd <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    cmd <= #`DEL  code;
	else if ( cmd_is_swp ) begin
	    cmd[27:25] <= #`DEL 3'b110;
		cmd[15:12] <= #`DEL cmd[3:0];
		end
	else if ( cmd_is_multl )
	    cmd[27:25] <= #`DEL 3'b110;	   
    else if ( cmd_is_ldm ) begin
	    cmd[0] <= #`DEL 1'b0;
		cmd[1] <= #`DEL cmd[0] ? cmd[1] : 1'b0;
		cmd[2] <= #`DEL (|(cmd[1:0])) ? cmd[2] : 1'b0;
		cmd[3] <= #`DEL (|(cmd[2:0])) ? cmd[3] : 1'b0;		
		cmd[4] <= #`DEL (|(cmd[3:0])) ? cmd[4] : 1'b0;
		cmd[5] <= #`DEL (|(cmd[4:0])) ? cmd[5] : 1'b0;	
		cmd[6] <= #`DEL (|(cmd[5:0])) ? cmd[6] : 1'b0;
		cmd[7] <= #`DEL (|(cmd[6:0])) ? cmd[7] : 1'b0;		
		cmd[8] <= #`DEL (|(cmd[7:0])) ? cmd[8] : 1'b0;
		cmd[9] <= #`DEL (|(cmd[8:0])) ? cmd[9] : 1'b0;	
		cmd[10] <= #`DEL (|(cmd[9:0])) ? cmd[10] : 1'b0;	
		cmd[11] <= #`DEL (|(cmd[10:0])) ? cmd[11] : 1'b0;	    
		cmd[12] <= #`DEL (|(cmd[11:0])) ? cmd[12] : 1'b0;	 
		cmd[13] <= #`DEL (|(cmd[12:0])) ? cmd[13] : 1'b0;	
		cmd[14] <= #`DEL (|(cmd[13:0])) ? cmd[14] : 1'b0;	 
		cmd[15] <= #`DEL (|(cmd[14:0])) ? cmd[15] : 1'b0;	 		
        end	
	else;
else;

assign cmd_is_b =  ( cmd[27:25]==3'b101 );

assign cmd_is_bx =  ( {cmd[27:23],cmd[20],cmd[7],cmd[4]}==8'b00010001 );

assign cmd_is_dp0 =  ( cmd[27:25]==3'b0 ) & ~cmd[4] & ( ( cmd[24:23]!=2'b10 ) | cmd[20] );	

assign cmd_is_dp1 =  (cmd[27:25]==3'b0 ) & ~cmd[7] & cmd[4] & ( ( cmd[24:23]!=2'b10 ) | cmd[20] );

assign cmd_is_dp2 =  ( cmd[27:25]==3'b001 ) & ( ( cmd[24:23]!=2'b10 ) | cmd[20] );

assign cmd_is_ldm =  ( cmd[27:25]==3'b100 );

assign cmd_is_ldr0 =  ( cmd[27:25]==3'b010 );

assign cmd_is_ldr1 =  ( cmd[27:25]==3'b011 );

assign cmd_is_ldrh0 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1011 ) & ~cmd[22];

assign cmd_is_ldrh1 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1011 ) & cmd[22];	

assign cmd_is_ldrsb0 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1101 ) & ~cmd[22];

assign cmd_is_ldrsb1 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1101 ) & cmd[22];		

assign cmd_is_ldrsh0 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1111 ) & ~cmd[22];

assign cmd_is_ldrsh1 =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1111 ) & cmd[22];	

assign cmd_is_mrs =  ({cmd[27:23],cmd[21:20],cmd[7],cmd[4]}==9'b000100000 );

assign cmd_is_msr0 =  ({cmd[27:23],cmd[21:20],cmd[7],cmd[4]}==9'b000101000 );

assign cmd_is_msr1 =  ( cmd[27:25]==3'b001 ) & ( cmd[24:23]==2'b10 ) & ~cmd[20];

assign cmd_is_mult =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1001 ) & ( cmd[24:23]==2'b00 );

assign cmd_is_multl =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1001 ) & ( cmd[24:23]==2'b01 );	

assign cmd_is_multlx =  ( cmd[27:24]==4'b1100 );

assign cmd_is_swi =  ( cmd[27:25]==3'b111 );

assign cmd_is_swp =  (cmd[27:25]==3'b0 ) & ( cmd[7:4]==4'b1001 ) & ( cmd[24:23]==2'b10 );	

assign cmd_is_swpx =  ( cmd[27:24]==4'b1101 );

/*
�ڶ�����Ҫ�Գ˷�Ϊ������ô���������Լӷ�Ϊ�������ھͿ�ʼΪ�ӷ�׼���ڶ���������

�ڶ��������Ǵ�reg_ans����ѡȡ�ġ�
�������λ����ô������λ�ķ�ʽ����reg_ans��������32λ�����ݣ���Ϊ�ڶ���������
����ǳ��˷�����һ���ͳ���32λ���ڶ����ͳ���32λ��
*/



always @ ( cmd_is_dp0 or cmd_is_ldr1 or reg_ans or rm_msb or cmd or cpsr_c or cmd_is_dp1 or code_rs_flag or cmd_is_msr1 or cmd_is_dp2 or cmd_is_multlx )
if ( cmd_is_dp0|cmd_is_ldr1 )
    case(cmd[6:5])
	2'b00 : sec_operand =  reg_ans[31:0];
	2'b01 : sec_operand =  reg_ans[63:32];
	2'b10 : sec_operand =  (rm_msb ? ~reg_ans[63:32] : reg_ans[63:32]); 
    2'b11 : sec_operand =  (cmd[11:7]==5'b0)?{cpsr_c,reg_ans[31:1]} : (reg_ans[63:32]|reg_ans[31:0]);
	endcase
else if ( cmd_is_dp1 )
    case(cmd[6:5])
	2'b00 : sec_operand =  ( code_rs_flag[2:1]!=2'b0 )? 32'b0: reg_ans[31:0];
	2'b01 : sec_operand =  ( code_rs_flag[2:1]!=2'b0 )? 32'b0: ( code_rs_flag[0] ? reg_ans[31:0] : reg_ans[63:32] );
	2'b10 : sec_operand =  ( code_rs_flag[2:1]!=2'b0 )? {32{rm_msb}} : ( code_rs_flag[0] ? (rm_msb? ~reg_ans[31:0] : reg_ans[31:0]) : ( rm_msb ? ~reg_ans[63:32]:reg_ans[63:32] ) );
	2'b11 : sec_operand =  ( code_rs_flag[1]|code_rs_flag[0] ) ? reg_ans[31:0] : ( reg_ans[63:32]|reg_ans[31:0] );
	endcase
else if ( cmd_is_msr1|cmd_is_dp2 )
    sec_operand =  reg_ans[63:32]|reg_ans[31:0];
else if ( cmd_is_multlx )
    sec_operand =  reg_ans[63:32];
else 
	sec_operand =  reg_ans[31:0];	

/*
����׼���ӷ����ĵڶ���������Rn
���ڴ�������õ��ǣ�cmd[19:16]���˷�ָ��Ҫ�õ�cmd[15:12]��
��ô������rna��rnb�ֱ��Ӧ��

*/


always @ ( cmd or r0 or r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or ra or rb or rc or rd or re or rf )
case ( cmd[15:12] )
4'h0 : rna =  r0;
4'h1 : rna =  r1;	
4'h2 : rna =  r2;
4'h3 : rna =  r3;
4'h4 : rna =  r4;
4'h5 : rna =  r5;	
4'h6 : rna =  r6;
4'h7 : rna =  r7;	
4'h8 : rna =  r8;
4'h9 : rna =  r9;	
4'ha : rna =  ra;
4'hb : rna =  rb;
4'hc : rna =  rc;
4'hd : rna =  rd;	
4'he : rna =  re;
4'hf : rna =  rf;
endcase	

always @ ( cmd or r0 or r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or ra or rb or rc or rd or re or rf )
case ( cmd[19:16] )
4'h0 : rnb =  r0;
4'h1 : rnb =  r1;	
4'h2 : rnb =  r2;
4'h3 : rnb =  r3;
4'h4 : rnb =  r4;
4'h5 : rnb =  r5;	
4'h6 : rnb =  r6;
4'h7 : rnb =  r7;	
4'h8 : rnb =  r8;
4'h9 : rnb =  r9;	
4'ha : rnb =  ra;
4'hb : rnb =  rb;
4'hc : rnb =  rc;
4'hd : rnb =  rd;	
4'he : rnb =  re;
4'hf : rnb =  rf;
endcase	 	

/*
һ������£�����ֱ����Rn���������rnb��������LDMָ�����ʱ��Rn��Ӧ�ļĴ���Ҳ�ڼ����б��
��ôRn��ִ��LDMָ��ʱ�����ڼ������ݵ�����£����ı䡣Rn�ͻᷢ���仯�����������������hold_en��
�����ص�ʱ�򣬰�rnb���浽һ���Ĵ���rn_register����ȥ����LDM/STMʱ����Rn���ӵ�rn_register�ϡ�


*/

always @ ( posedge clk or posedge rst )
if ( rst )
    hold_en_dly <= #`DEL 1'd0;
else if ( cpu_en )
    hold_en_dly <= #`DEL  hold_en;
else;

assign hold_en_rising =  hold_en & ~hold_en_dly;

always @ ( posedge clk or posedge rst )
if ( rst )
    rn_register <= #`DEL 32'd0;
else if ( cpu_en )
    if ( hold_en_rising )
	    rn_register <= #`DEL  rnb;
	else;
else;

/*
���ڣ�����֯Rn��
��BXָ��ʱ����Ҫ��Rm����R15��������Rn=0����ô���԰Ѽ�������R15�ڡ�
��DP���MOVָ��ʱ��Ҳ����ͬbxһ�������⣬Ҳ��������Rn=0�������
�ڳ˷�ָ��������ͬʱ���мӷ�����Rn=0��
��Bָ��� Rnǿ�Ƶ���R15��

*/

always @ ( * )
if ( cmd_is_bx|((cmd_is_dp0|cmd_is_dp1|cmd_is_dp2)&((cmd[24:21]==4'b1101)|(cmd[24:21]==4'b1111)))|(cmd_is_multlx & ~cmd[21]) )
    rn =  0;
else if ( cmd_is_mult|cmd_is_multl )
    if ( cmd[21] )
        rn =  rna;
	else
	    rn =  0;
else if ( cmd_is_b )
    rn =  rf;
else if ( hold_en & hold_en_dly )
    rn =  rn_register;
else
    rn =  rnb;


/*
�����Ǽӷ����ĸ��ֲ�����
��һ���жϵ����Ǽӷ����Ǽ�����1��ʾ�ӷ���0��ʾ������
һ��ĳ˷�����תָ��õ��Ǽӷ���
����ǳ��˷���������Ƿ�Ϊ�з��ų˷���������з��ų˷�����������������ķ���λ��ȷ���Ƿ�Ϊ������
��������ݴ���DPָ������opcode��ȷ����/������
���������ָ�������Ҫ�����ݼ��ش洢ָ��Ӽ�����cmd[23]��ȷ����
*/

always @ ( cmd_is_mult or cmd_is_b or cmd_is_bx or cmd_is_multl or cmd_is_multlx or cmd or rm_msb or rs_msb or cmd_is_dp0 or cmd_is_dp1 or cmd_is_dp2  )
if ( cmd_is_mult|cmd_is_b|cmd_is_bx )
    add_flag =  1'b1;
else if ( cmd_is_multl|cmd_is_multlx )
    add_flag =  cmd[22] ? ~( rm_msb^rs_msb ) : 1'b1;
else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
    add_flag =  (cmd[24:21]==4'b0100)|(cmd[24:21]==4'b0101)|(cmd[24:21]==4'b1011)|(cmd[24:21]==4'b1101);
else
    add_flag =  cmd[23];
	
/*
�ӷ���һ���ǣ�a[31:0] + b[31:0] + c������ȷ�����1 bit��c��
���ڳ��˷�����Ҫ���������ļӷ�����һ�μ�reg_ans[31:0]���ڶ��μӣ�reg_ans[63:32]��
��ô��һ�εļӷ��Ľ�λC���ڵڶ��μӷ�ʱ��ҲҪ�õ���multl_extra_num��������á�
��cmd_is_multl��Чִ��ʱ��bit_cyд��multl_extra_num��

*/	

always @ ( posedge clk or posedge rst )
if ( rst )
    multl_extra_num <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cmd_ok & cmd_is_multl )
        multl_extra_num <= #`DEL  bit_cy;
    else
        multl_extra_num <= #`DEL  0;
else;		

/*
����ȷ��extra_num��
��cmd_is_multlx����ʾmultl�ĺ�����һ��ָ�����reg_ans�Ѿ������˳˷��Ľ����
ֻ��Ҫ�������μӷ��������������64 bit�ĳ���ָ���ˡ���ʱ��extra_num���������
multl_extra_num��

*/
	

always @ ( cmd_is_mult or cmd_is_multl or cmd_is_dp0 or cmd_is_dp1 or cmd_is_dp2 or cmd or cpsr_c or cmd_is_multlx or multl_extra_num )
if ( cmd_is_mult | cmd_is_multl )
    extra_num = 1'b0;
else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
    case ( cmd[24:21])
	4'b0010 : extra_num = 1'b0;
    4'b0011 : extra_num = 1'b1;
    4'b0100 : extra_num = 1'b0;
    4'b0101 : extra_num = cpsr_c;
    4'b0110 : extra_num = ~cpsr_c;
    4'b0111 : extra_num = cpsr_c;
	4'b1111 : extra_num = 1'b1;
    default: extra_num = 1'b0;
    endcase
else if ( cmd_is_multlx )
    extra_num = multl_extra_num;
else
    extra_num = 1'b0;

/*
������мӷ����㡣
�Ƚ���31bit������Ӽ�����������Ϊ�˸��õļ���OV��־��

*/

assign sum_middle =  add_flag ? ( rn[30:0] + sec_operand[30:0] + extra_num ) : ( rn[30:0] - sec_operand[30:0] - extra_num );	

assign cy_high_bits =  add_flag ? ( rn[31] + sec_operand[31] + sum_middle[31] ) : ( rn[31] - sec_operand[31] - sum_middle[31] );

assign bit_cy =  cy_high_bits[1];

assign high_bit =  cy_high_bits[0];	

assign bit_ov =  bit_cy ^ sum_middle[31];		

assign sum_rn_rm =  {high_bit,sum_middle[30:0]};


/*
�����Ƕ����ݴ���Ľ�����л��ܡ������ݴ���ָ��������мӼ������㣬�����룬����߼�������
����Rn���͵ڶ��������Ѿ���֯��ϣ�ֻ����assign����������ɡ�

*/

assign and_ans =  rn & sec_operand;

assign eor_ans =  rn ^ sec_operand;

assign or_ans =  rn | sec_operand;

assign bic_ans =  rn & ~sec_operand;


always @ ( cmd or and_ans or eor_ans or sum_rn_rm or or_ans or bic_ans )
case ( cmd[24:21] )
4'h0 : dp_ans =  and_ans;
4'h1 : dp_ans =  eor_ans;
4'h2 : dp_ans =  sum_rn_rm;
4'h3 : dp_ans =  ~sum_rn_rm;
4'h4 : dp_ans =  sum_rn_rm;
4'h5 : dp_ans =  sum_rn_rm;
4'h6 : dp_ans =  sum_rn_rm;
4'h7 : dp_ans =  ~sum_rn_rm;
4'h8 : dp_ans =  and_ans;
4'h9 : dp_ans =  eor_ans;
4'ha : dp_ans =  sum_rn_rm;
4'hb : dp_ans =  sum_rn_rm;
4'hc : dp_ans =  or_ans;
4'hd : dp_ans =  sum_rn_rm;
4'he : dp_ans =  bic_ans;
4'hf : dp_ans =  sum_rn_rm;
endcase
	
/*
�����Ѿ���ARM7������������������ˡ����棬��Ҫʹ�������Ѿ���֯����������ȥ��дCPSR��Ĵ����顣
��ǰ��,code��cmd������������Ҫ��־�����Ƿֱ��code��cmdһ����־������code��cmd�Ƿ���Ч��
codeʲôʱ����Ч�أ�codeһ������£�������Ч�ģ�ֻ�������������������Ч��
1���жϷ������ж�һ����Ԥ��ȡ����ָ��code��ɷ�ָ���ˡ���ʱ����Ҫ���ж���������ȡָ�����ֻ��
   ��code_flag = 0 ���ɣ�
2��R15����д������ͬ�ϣ����PC(R15)�ı��ˣ�����Ҫ���µĵ�ַȡָ�Ԥ��ȡ����ָ��code��Ȼ��Ч��
   to_rf_vld cha_rf_vld go_rf_vld ldm_rf_vld�Ǹ��ָı�R15�ı�־��һ��������Ч��R15��������ֵ��
   ��codeҲҪ����Ϊ��Ч��

*/
	
always @ ( posedge clk or posedge rst )
if ( rst )
    code_flag <= #`DEL 1'd0;
else if ( cpu_en )
    if ( int_all | to_rf_vld | cha_rf_vld | go_rf_vld | ldm_rf_vld )
	    code_flag <= #`DEL  0;
	else
	    code_flag <= #`DEL  1;
else;
	
/*	
cmd_flagͬcode_flag���ơ�����cmd�ı�־��һ���жϷ�����cmd_flagͬ��Ҫ�����㡣
һ����˵��cmd_flag = code_flag����������ǣ�R15���ı䣬��ʱ����Ҳͬ��Ҫ��λ0��
����һ�������wait_en��
wait_en��ʾ��������������� cmd =(mov r0,#10); code=(mul r1,r1,r0)��Ҳ����
��ִ�У�r0 = 10; ��ִ�У�r1 =r1*r0.����cod��case���õ�R0�ǲ�����10�ģ����code
����cmdִ�еĻ���һ�����д���Ľ������ô���ǲ���һ����ָ�
�����ָ��ķ����ǣ�cmd_flag = 0; code��code_flag���ֲ��䡣����cmd_flag = 0,����
�ԼĴ������CPSR�����κθı䣬����������ôһ����ָ�#10�Ѿ�д��R0�ˡ�

����һ����������hold_en=1����ô��ʱ���������Ҫ����ִ�У�cmd_flag�����ֲ��䡣
	
*/	
always @ ( posedge clk or posedge rst )
if ( rst )
    cmd_flag <= #`DEL 1'd0;
else if ( cpu_en )
    if ( int_all )
	    cmd_flag <= #`DEL  0;
	else if ( ~hold_en )
	    if ( wait_en | to_rf_vld | cha_rf_vld | go_rf_vld )
		    cmd_flag <= #`DEL  0;
		else
		    cmd_flag <= #`DEL  code_flag;
	else;
else;
	
/*
����cmd_flag�������ܽ�һ�£�һ��ָ����Чִ�е�������
1��û���жϷ�����һ���жϷ��������ָ��ǿ��ȡ����
2��cmd_flag��Ч��cmd��һ����Ч��cmd��
3��ARM��ǰ���������־���㣬����������cond_satisfy
������������������ˣ���ô������Ϊcmd�ǿ��Է��ĵ�ִ�еġ�
*/

always @ ( * )
case ( cmd[31:28] )
4'h0 : cond_satisfy =  ( cpsr_z==1'b1 );
4'h1 : cond_satisfy =  ( cpsr_z==1'b0 );
4'h2 : cond_satisfy =  ( cpsr_c==1'b1 );
4'h3 : cond_satisfy =  ( cpsr_c==1'b0 );
4'h4 : cond_satisfy =  ( cpsr_n==1'b1 );
4'h5 : cond_satisfy =  ( cpsr_n==1'b0 );
4'h6 : cond_satisfy =  ( cpsr_v==1'b1 );
4'h7 : cond_satisfy =  ( cpsr_v==1'b0 );
4'h8 : cond_satisfy =  ( cpsr_c==1'b1 )&(cpsr_z==1'b0);
4'h9 : cond_satisfy =  ( cpsr_c==1'b0 )|(cpsr_z==1'b1);
4'ha : cond_satisfy =  ( cpsr_n==cpsr_v);
4'hb : cond_satisfy =  ( cpsr_n!=cpsr_v);
4'hc : cond_satisfy =  ( cpsr_z==1'b0)&(cpsr_n==cpsr_v);
4'hd : cond_satisfy =  ( cpsr_z==1'b1)|(cpsr_n!=cpsr_v);
4'he : cond_satisfy =  1'b1;
4'hf : cond_satisfy =  1'b0;
endcase



assign cmd_ok =  ~int_all & cmd_flag & cond_satisfy;	
	
/*
ֻ������ָ�SWP MULTL LDM/STM�Żᵼ��hold_en����1����ǰ��������ָ����Ч��Ҳ����cmd_ok==1��
���hold_en =1 ��swp->swpx; multl->multlx��ldm/stm��ѼĴ����Ķ�Ӧֵ�ݼ���һֱ����Ϊ0Ϊֹ
*/


assign cmd_sum_m =  (cmd[0]+cmd[1]+cmd[2]+cmd[3]+cmd[4]+cmd[5]+cmd[6]+cmd[7]+cmd[8]+cmd[9]+cmd[10]+cmd[11]+cmd[12]+cmd[13]+cmd[14]+cmd[15]);


assign hold_en =  cmd_ok & ( cmd_is_swp | cmd_is_multl | ( cmd_is_ldm & (cmd_sum_m !=5'b0) ) );


/*
�������𽲽��жϡ�

irq_flag��fiq_flag��������irq��fiq���л��塣ԭ����ϣ��irq��fiq�ж�ֻ������������ִ�е�ʱ��
��Ϊ����������жϷ�������ת��ʱ����ʱ��û��ָ����ִ�У����޷�������ת��ַ����IRQ�ж�Ϊ����
���irq==1ʱ��irq_flag = 1������ִ�б�־�ǣ�cmd_flag�������Ϊ1'b1����ʾ������ִ�У���ʱ������
����irq_flag�ˡ�

ע�⣺cpu_en�������еļĴ����������档

*/
always @ ( posedge clk or posedge rst )
if ( rst )
    irq_flag <= #`DEL 1'b0;
else if ( cpu_en )
    if ( irq )
         irq_flag <= #`DEL  1'b1;
    else if ( cmd_flag )
       irq_flag <= #`DEL  1'b0;
    else;
else;


always @ ( posedge clk or posedge rst )
if ( rst )
    fiq_flag <= #`DEL 1'b0;
else if ( cpu_en )
	if ( fiq )
	     fiq_flag <= #`DEL  1'b1;
    else if ( cmd_flag )
	   fiq_flag <= #`DEL  1'b0;
    else;
else;

/*
�����������������ǽ��������ġ���IRQ�ж�Ϊ������irq_flag��cmd_flagͬʱΪ1ʱ����ʾ������һ��IRQ�жϡ�
��������ж��Ƿ�ִ�У���Ҫ���жϽ�ֹ��־λ��cpsr_i����cpsr_i==1ʱ����ʱ��IRQ�ж��ǽ�ֹ�ģ���irq_en
=1'b0��������IRQ�ж�Ӱ��ϵͳִ���������IRQ�ж����������ģ���irq_en = 1���ᵼ��ARM����IRQ�жϡ�

*/
assign irq_en =  irq_flag & cmd_flag & ~cpsr_i;


assign fiq_en =  fiq_flag & cmd_flag & ~cpsr_f;

/*
int_all�����жϷ����������
1��cpu_restart����߼�����жϣ�
2��ram_abort�Ƕ�дRAM����������ж�
3��fiq_en,irq_en�����津�����ж�
4��code_abort��code_und�����code�����ԡ�����һ����code�Ѿ������cmd�������cmd��Ч����ô������Щ�����Ծͻ��������жϡ�
5��SWI���жϣ���ǰ���һ�������ǣ�����һ��Ҫ���㡣

*/

assign int_all =  cpu_restart|ram_abort|fiq_en|irq_en|( cmd_flag & ( code_abort|code_und|(cond_satisfy & cmd_is_swi)));


/*
���潫��дCPSR��
�ڸ�д֮ǰ����Ҫ��ֵ��һ���Ĵ�����ldm_change������LDM�ڸı�PC����Ҫͬʱ����spsr��cpsr��
����cmd�ں����᲻�ϱ仯��������code����cmd��ͬʱ�����������д��һ���Ĵ�������

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    ldm_change <= #`DEL 1'd0;
else if ( cpu_en )
    if ( ~hold_en )
	    ldm_change <= #`DEL  code[22] & code[20] & code[15];
	else;
else;

/*
��������cpsr_n��
1��msrָ��ѵڶ�������ֱ�Ӽ��ظ�cpsr��
2�����ݴ���ָ�����ı���R15����ôͬʱҪ��spsr����cpsr;������ı�R15������ڽ���ĵ�32λ:dp_ans
3���˷�ָ����ڼӷ�����������λ
4��LDMָ��ڼ���R15������£����״̬��־��λ��spsrҲ��Ҫ�ı䡣

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_n <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cmd_ok )
	    if ( cmd_is_msr0|cmd_is_msr1 )
		    if ( ~cmd[22] & cmd[19] )
                cpsr_n <= #`DEL  sec_operand[31];
			else;	
		else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
		    if ( cmd[20] )
			    if ( cmd[15:12]==4'hf )
				    cpsr_n <= #`DEL  spsr[10];
				else 
				    cpsr_n <= #`DEL  dp_ans[31];
			else;
		else if ( cmd_is_mult|cmd_is_multlx )
		    if ( cmd[20] )
			    cpsr_n <= #`DEL  sum_rn_rm[31];
			else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_n <= #`DEL  spsr[10];
		else;
	else;
else;

/*
z��־ͬn��־���ƣ����Ǳ�־����Ƿ����0��

*/
always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_z <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cmd_ok )
	    if ( cmd_is_msr0|cmd_is_msr1 )
		    if ( ~cmd[22] & cmd[19] )
                cpsr_z <= #`DEL  sec_operand[30];
			else;	
		else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
		    if ( cmd[20] )
			    if ( cmd[15:12]==4'hf )
				    cpsr_z <= #`DEL  spsr[9];
				else 
				    cpsr_z <= #`DEL  (dp_ans==32'b0);
			else;
		else if ( cmd_is_mult|cmd_is_multl )
		    if ( cmd[20] )
			    cpsr_z <= #`DEL  (sum_rn_rm==32'b0);
			else;
		else if ( cmd_is_multlx & cmd[20] )
		    cpsr_z <= #`DEL   cpsr_z & (sum_rn_rm==32'b0);
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_z <= #`DEL  spsr[9];
		else;
	else;
else;

/*
c��־�ǽ�λ��־��
�����ݴ���ָ�������Ǽӷ����㣬c����bit_cy������Ǽ������㣬����~bit_cy����������ǣ��������λ�Ľ�λ��

*/
always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_c <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cmd_ok )
        if ( cmd_is_msr0|cmd_is_msr1 )
		    if ( ~cmd[22] & cmd[19] )
                cpsr_c <= #`DEL  sec_operand[29];
			else;	
        else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
            if ( cmd[20] )
                if ( cmd[15:12]==4'hf )
                    cpsr_c <= #`DEL  spsr[8];
                else if ( (cmd[24:21]==4'b1011)|(cmd[24:21]==4'b0100)|(cmd[24:21]==4'b0101)|(cmd[24:21]==4'b0011)|(cmd[24:21]==4'b0111) )
				    cpsr_c <= #`DEL  bit_cy;
				else if ( (cmd[24:21]==4'b1010)|(cmd[24:21]==4'b0010)|(cmd[24:21]==4'b0110) )
				    cpsr_c <= #`DEL  ~bit_cy;
				else if ( cmd_is_dp1 & ~code_rs_flag[0] )
				    case ( cmd[6:5] )
				    2'b00 : cpsr_c <= #`DEL  code_rs_flag[2]? 1'b0 : ( code_rs_flag[1]? reg_ans[0] :  reg_ans[32] );
					2'b01 : cpsr_c <= #`DEL  code_rs_flag[2]? 1'b0 : ( code_rs_flag[1]? reg_ans[31] : reg_ans[31] );
					2'b10 : cpsr_c <= #`DEL  code_rs_flag[2]? rm_msb : ( code_rs_flag[1]? rm_msb : ( rm_msb ? ~reg_ans[31]: reg_ans[31]) );
					2'b11 : cpsr_c <= #`DEL  code_rs_flag[1]? cpsr_c : reg_ans[31];
					endcase	
                else if ( cmd_is_dp2 )
                    cpsr_c <= #`DEL  	reg_ans[31];
				else if ( cmd_is_dp0 ) 
				    case ( cmd[6:5] )
				    2'b00 : cpsr_c <= #`DEL  (cmd[11:7]==5'b0) ? cpsr_c : reg_ans[32];
					2'b01 : cpsr_c <= #`DEL  reg_ans[31];
					2'b10 : cpsr_c <= #`DEL  ( rm_msb ? ~reg_ans[31]: reg_ans[31]);
					2'b11 : cpsr_c <= #`DEL  (cmd[11:7]==5'b0) ? reg_ans[0]:reg_ans[31];
					endcase
				else;
			else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_c <= #`DEL  spsr[8];
		else;
	else;
else;


/*
v��־��������ָ��ִ���У�ֻ�������ݴ���ָ��ļӼ��������У��Żᱻ�ı䡣
*/

always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_v <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cmd_ok )
        if ( cmd_is_msr0|cmd_is_msr1 )
		    if ( ~cmd[22] & cmd[19] )
                cpsr_v <= #`DEL  sec_operand[28];
			else;	
        else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
            if ( cmd[20] )
                if ( cmd[15:12]==4'hf )
                    cpsr_v <= #`DEL  spsr[7];
                else if ( (cmd[24:21]==4'd2)|(cmd[24:21]==4'd3)|(cmd[24:21]==4'd4)|(cmd[24:21]==4'd5)|(cmd[24:21]==4'd6)|(cmd[24:21]==4'd7)|(cmd[24:21]==4'd10)|(cmd[24:21]==4'd11) )
                    cpsr_v <= #`DEL  bit_ov;
				else;	
            else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_v <= #`DEL  spsr[7];
        else;
    else;
else;


/*
cpsr_i��CPSR��I���Ʊ�־�������������ƽ�ֹIRQ�жϵġ�
һ�����жϵ���ʱ��IRQ�ж����ȱ���ֹ��
���Ҫ��ָ���޸�CPSR����ֻ������Ȩģʽ�²����޸ġ�����������û�ģʽ��cpsr_i�ǲ��ܱ��޸ĵġ�
�����г���cpsr_i�������޸������
1��MSR�����ǰѼĴ�����ֵ��������CPSR�����
2��DP��������дPCʱ��˳���SPSR����CPSR
3��LDM����Ҳ����дPCʱ��˳���SPSR����CPSR��

*/


always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_i <= #`DEL 1'd0;
else if ( cpu_en )
    if ( int_all )
        cpsr_i <= #`DEL  1;
    else if ( cmd_ok & ( cpsr_m != 5'b10000 ) )
        if ( cmd_is_msr0|cmd_is_msr1 )
            if ( ~cmd[22] & cmd[16]  )
                cpsr_i <= #`DEL  sec_operand[7];
            else;
        else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
            if ( cmd[20] )
                if 	( cmd[15:12]==4'hf )
                    cpsr_i <= #`DEL  spsr[6];
                else;
            else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_i <= #`DEL  spsr[6];
        else;
    else;
else;

/*
cpsr_f��cpsr_i��������ƣ�ֻ��FIQ�ж�ֻ����reset�жϺ�FIQ�жϵ���ʱ���Ž�ֹFIQ�жϣ�
��������£�����ֹFIQ�жϡ�

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_f <= #`DEL 1'd0;
else if ( cpu_en )
    if ( cpu_restart | fiq_en ) 
        cpsr_f <= #`DEL  1;
    else if ( cmd_ok & ( cpsr_m != 5'b10000 ) )
        if ( cmd_is_msr0|cmd_is_msr1 )
            if ( ~cmd[22] & cmd[16]  )
                cpsr_f <= #`DEL  sec_operand[6];
            else;
        else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
            if ( cmd[20] )
                if 	( cmd[15:12]==4'hf )
                    cpsr_f <= #`DEL  spsr[5];
                else;
            else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_f <= #`DEL  spsr[5];
        else;
    else;
else;


/*
cpsr_m����ARM7�Ĺ���ģʽ���ڸ����ж����ٺ�cpsr_m�����жϽ����л���
��ָ���޸ĵķ�ʽ����cpsr_i, cpsr_f����

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    cpsr_m <= #`DEL 5'b10011;
else if ( cpu_en )
    if ( cpu_restart )
        cpsr_m <= #`DEL  5'b10011;
    else if ( fiq_en )
        cpsr_m <= #`DEL  5'b10001;
    else if ( ram_abort )
        cpsr_m <= #`DEL  5'b10111;
    else if ( irq_en )
        cpsr_m <= #`DEL  5'b10010;
    else if ( cmd_flag & code_abort )
        cpsr_m <= #`DEL  5'b10111;
    else if ( cmd_flag & code_und )
        cpsr_m <= #`DEL  5'b11011;
    else if ( cmd_flag & cond_satisfy & cmd_is_swi )
        cpsr_m <= #`DEL  5'b10011; 
    else if ( cmd_ok & ( cpsr_m != 5'b10000 ) )
        if ( cmd_is_msr0|cmd_is_msr1 )
            if ( ~cmd[22] & cmd[16]  )
                cpsr_m <= #`DEL  sec_operand[4:0];
            else;
        else if ( cmd_is_dp0|cmd_is_dp1|cmd_is_dp2 )
            if ( cmd[20] )
                if 	( cmd[15:12]==4'hf )
                    cpsr_m <= #`DEL  spsr[4:0];
                else;
            else;
		else if ( cmd_is_ldm & ( cmd_sum_m==5'b0 ) & ldm_change )
		     cpsr_m <= #`DEL  spsr[4:0];
        else;
    else;
else;     	

/*
cpsr���������ļ���
*/

assign cpsr =  { cpsr_n,cpsr_z,cpsr_c,cpsr_v,cpsr_i,cpsr_f,cpsr_m};	

/*
������ÿ��ģʽ��SPSR��SPSR���������жϵ���ʱ���ݴ�CPSR��
����ABTģʽ�����ڶ�д�����жϺ�ָ���ȡ�ж�ʱ���롣
����ָ���ȡ��������ȼ��ǵ���fiq��irq�ģ�����ֻ����fiq��irqû�з�����code_abort��Чʱ���Ž���abt�жϡ�

*/


always @ ( posedge clk or posedge rst )
if ( rst )
    spsr_abt <= #`DEL 11'd0;
else if ( cpu_en )
    if ( ram_abort | ( ~fiq_en & ~irq_en & ( cmd_flag & code_abort ) ) )
	    spsr_abt <= #`DEL  cpsr;
    else if ( cmd_ok & ( cpsr_m==5'b10111) & ( cmd_is_msr0|cmd_is_msr1 ) & cmd[22] )
        spsr_abt <= #`DEL  {{cmd[19]?sec_operand[31:28]:spsr_abt[10:7]},{cmd[16]?{sec_operand[7:6],sec_operand[4:0]}:spsr_abt[6:0]}}; 	
    else;
else;

/*
fiq�жϺ�ram_abort�жϵ�����Ƚ����⡣
�������ͬʱ������fiq���ȴ������Ǵ�����Ϻ󣬱������ram_abort�Ĵ���
��������fiq�жϱ���ķ���״���ǣ�ram_abort�жϵ�ģʽ��

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    spsr_fiq <= #`DEL 11'd0;
else if ( cpu_en )
    if ( fiq_en )
         if ( ram_abort )
            spsr_fiq <= #`DEL  {cpsr_n,cpsr_z,cpsr_c,cpsr_v,1'b1,cpsr_f,5'b10111};
        else 
            spsr_fiq <= #`DEL  cpsr;
    else if ( cmd_ok & ( cpsr_m==5'b11011) & ( cmd_is_msr0|cmd_is_msr1 ) & cmd[22] )
        spsr_fiq <= #`DEL  {{cmd[19]?sec_operand[31:28]:spsr_fiq[10:7]},{cmd[16]?{sec_operand[7:6],sec_operand[4:0]}:spsr_fiq[6:0]}}; 	
    else;
else;		

/*
irq�жϷ����� irq_en��Чʱ

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    spsr_irq <= #`DEL 11'd0;
else if ( cpu_en )
    if ( ~ram_abort & ~fiq_en & irq_en )
	    spsr_irq <= #`DEL  cpsr;
    else if ( cmd_ok & ( cpsr_m==5'b10010) & ( cmd_is_msr0|cmd_is_msr1 ) & cmd[22] )
        spsr_irq <= #`DEL  {{cmd[19]?sec_operand[31:28]:spsr_irq[10:7]},{cmd[16]?{sec_operand[7:6],sec_operand[4:0]}:spsr_irq[6:0]}}; 	
    else;
else;

/*
svc�ж��Ƿ�����ָ��swi��Ч

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    spsr_svc <= #`DEL 11'd0;
else if ( cpu_en )
    if ( ~ram_abort & ~fiq_en & ~irq_en & ( cmd_flag & ~code_abort & ~code_und & (cond_satisfy & cmd_is_swi) ) )
	    spsr_svc <= #`DEL  cpsr;
    else if ( cmd_ok & ( cpsr_m==5'b10011) & ( cmd_is_msr0|cmd_is_msr1 ) & cmd[22] )
        spsr_svc <= #`DEL  {{cmd[19]?sec_operand[31:28]:spsr_svc[10:7]},{cmd[16]?{sec_operand[7:6],sec_operand[4:0]}:spsr_svc[6:0]}}; 	
    else;
else;

/*
und�ж����ڷ���ָ���ǲ���ʶ��Ĵ���ʱ�������ж�
*/

always @ ( posedge clk or posedge rst )
if ( rst )
    spsr_und <= #`DEL 11'd0;
else if ( cpu_en )
    if ( ~ram_abort & ~fiq_en & ~irq_en & ( cmd_flag & ~code_abort & code_und ) )
	    spsr_und <= #`DEL  cpsr;
    else if ( cmd_ok & ( cpsr_m==5'b11011) & ( cmd_is_msr0|cmd_is_msr1 ) & cmd[22] )
        spsr_und <= #`DEL  {{cmd[19]?sec_operand[31:28]:spsr_und[10:7]},{cmd[16]?{sec_operand[7:6],sec_operand[4:0]}:spsr_und[6:0]}}; 	
    else;
else;

/*
spsr����cpsr_m�Ĳ�ͬ����ͬ��

*/

always @ ( cpsr_m or spsr_svc or spsr_abt or spsr_irq or spsr_fiq or spsr_und or cpsr )
if ( cpsr_m == 5'b10011 )
    spsr = spsr_svc;
else if ( cpsr_m == 5'b10111 )
    spsr = spsr_abt; 
else if ( cpsr_m == 5'b10010 )
    spsr = spsr_irq;
else if ( cpsr_m == 5'b10001 )
    spsr = spsr_fiq;
else if ( cpsr_m == 5'b11011 )
    spsr = spsr_und;
else
    spsr = cpsr; 

/*
д����CPSR��SPSR������׼��д�Ĵ����顣
�Ĵ������޸���������Դ��һ�ǴӼĴ���������д�룻���Ǽ����ڴ洢��������׼�����ǼĴ��������㡣
cmd_is_mrs : ��cpsr/spsr����Ĵ�����
(cmd_is_dp0|cmd_is_dp1|cmd_is_dp2) : �����ݴ�����dp_ans ����Ĵ�����
cmd_is_mult|cmd_is_multl|cmd_is_multlx���˷��Ľ������Ĵ�����
(cmd_is_ldrh0|cmd_is_ldrh1|cmd_is_ldrsb0|cmd_is_ldrsb1|cmd_is_ldrsh0|cmd_is_ldrsh1|cmd_is_ldr0|cmd_is_ldr1)������Ҫ�ǵ�ַ��д
cmd_is_ldm �� Ҳ�ǵ�ַ��д��

*/

/*
to_vld�����д��д������
to_num�����д��һ���Ĵ���������
to_data�����дʲô���ݵ����⡣
*/

assign to_vld =  cmd_ok & ( cmd_is_mrs|((cmd_is_dp0|cmd_is_dp1|cmd_is_dp2)&(cmd[24:23]!=2'b10))|cmd_is_mult|cmd_is_multl|cmd_is_multlx|((cmd_is_ldrh0|cmd_is_ldrh1|cmd_is_ldrsb0|cmd_is_ldrsb1|cmd_is_ldrsh0|cmd_is_ldrsh1|cmd_is_ldr0|cmd_is_ldr1)&( cmd[21]| ~cmd[24]))|(cmd_is_ldm &(cmd_sum_m==5'b0)&cmd[21]) );


always @ ( cmd_is_mrs or cmd_is_dp0 or cmd_is_dp1 or cmd_is_dp2 or cmd_is_multl or cmd )
if (cmd_is_mrs|(cmd_is_dp0|cmd_is_dp1|cmd_is_dp2)|cmd_is_multl)
    to_num =  cmd[15:12];
else
    to_num =  cmd[19:16];

	
always @ ( cmd_is_mrs or cmd or spsr or cpsr or cmd_is_dp0 or cmd_is_dp1 or cmd_is_dp2 or dp_ans or sum_rn_rm )
if ( cmd_is_mrs )
    to_data =  cmd[22] ? {spsr[10:7],20'b0,spsr[6:5],1'b0,spsr[4:0]} : {cpsr[10:7],20'b0,cpsr[6:5],1'b0,cpsr[4:0]};
else if (cmd_is_dp0|cmd_is_dp1|cmd_is_dp2)
    to_data =  dp_ans;
else
    to_data =  sum_rn_rm; 	

/*
д��R15������Ƚ����⣬ֻ����dp b bxָ��ʱ���ſ����޸�R15��
*/
	
assign to_rf_vld =  cmd_ok & ( ( (cmd[15:12]==4'hf) & ( (cmd_is_dp0|cmd_is_dp1|cmd_is_dp2) & ( cmd[24:23]!=2'b10 ) ) ) | ( cmd_is_b | cmd_is_bx ) ); 

/*
cha_vld �� cha_num���������ش洢��RAM�����ݽ���Ĵ�����ģ�����һ��������ŷ������źţ���һ����������ݲŻ�õ���
����cha_vld��cha_num�ı�ʾ�������һ��ָ����Ҫ�õ�ͬ���ļĴ�������ô��ʱ���ͷ��������ݻ��������ò�����һ����ָ���ˡ�

*/	

always @ ( cmd_ok or cmd_is_ldrh0 or cmd_is_ldrh1 or cmd_is_ldrsb0 or cmd_is_ldrsb1 or cmd_is_ldrsh0 or cmd_is_ldrsh1 or cmd_is_ldr0 or cmd_is_ldr1 or cmd or cmd_is_swp )
if ( cmd_ok )
    cha_vld =  (( cmd_is_ldrh0|cmd_is_ldrh1|cmd_is_ldrsb0|cmd_is_ldrsb1|cmd_is_ldrsh0|cmd_is_ldrsh1|cmd_is_ldr0|cmd_is_ldr1 ) & cmd[20])|cmd_is_swp;
else
    cha_vld =  0;

always @ ( cmd )
cha_num =  cmd[15:12];	


assign cha_rf_vld =  cha_vld & ( cha_num==4'hf );

/*
go_vld go_num����cha_vld cha_num������һ��������洢��RAM�������Ѿ�ȡ�������Դ������Ĵ�������

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    go_vld <= #`DEL 1'd0;
else if ( cpu_en )
    go_vld <= #`DEL  cha_vld;
else;



always @ ( posedge clk or posedge rst )
if ( rst )
    go_num <= #`DEL 4'd0;
else if ( cpu_en )
    go_num <= #`DEL  cha_num;
else;

/*
go_fmt�Ƕ�Ӧ��go_vld/go_num�ģ�go_vld�ش��Ͳ���RAM��ȡ�����ݣ�go_num�ش��͵��Ķ�ȥ��
go_fmt��ش���ô�͡�
��Ϊ��ARM7��LDR/LDM/LDRSB/LDRH��Щָ����е���Ҫд���֣��е�д�ֽڣ��е�Ҫ�з���
�������ǰ���Щ��Ϣ�ݴ���go_fmt��ȵ�д���ʱ�򣬰���go_fmt�ĸ�ʽ��֯д������ݡ�
go_fmt[5]ָ���������ʽΪ�֣�
go_fmt[4]ָ���������ʽΪ���֣�
go_fmt[3]ָ���������ʽΪ�ֽڣ�
go_fmt[2]ָ���������ʽΪ�Ƿ��з���
go_fmt[1:0]�����Ŷ���ַ�������λ����Ϊд����֡��ֽڷ���ġ�

*/


always @ ( posedge clk or posedge rst )
if ( rst )
    go_fmt <= #`DEL 6'd0;
else if ( cpu_en )
   if ( cmd_is_ldr0|cmd_is_ldr1|cmd_is_swp )
        go_fmt <= #`DEL  cmd[22] ?{4'b0010,cmd_addr[1:0]}: {4'b1000,cmd_addr[1:0]};
    else if ( cmd_is_ldrh0|cmd_is_ldrh1 )
        go_fmt <= #`DEL  {4'b0100,cmd_addr[1:0]};
	else if ( cmd_is_ldrsb0|cmd_is_ldrsb1 )
	    go_fmt <= #`DEL  {4'b0011,cmd_addr[1:0]};
	else if ( cmd_is_ldrsh0|cmd_is_ldrsh1 )
        go_fmt <= #`DEL  {4'b0101,cmd_addr[1:0]};
	else if ( cmd_is_ldm )
	    go_fmt <= #`DEL  {4'b1000,cmd_addr[1:0]};
    else;
else;


assign go_rf_vld =  go_vld & (go_num==4'hf);

/*
go_data ���ǰ���go_fmtָ���ĸ�ʽ��֯ram_rdata��


*/

always @ ( go_fmt or ram_rdata )
if ( go_fmt[5] )
    go_data =  ram_rdata;
else if ( go_fmt[4] )
    if ( go_fmt[1] )
	    go_data =  {{16{go_fmt[2]&ram_rdata[31]}},ram_rdata[31:16]};
	else
	    go_data =  {{16{go_fmt[2]&ram_rdata[15]}},ram_rdata[15:0]};
else// if ( cha_reg_fmt[3] )
    case(go_fmt[1:0])
    2'b00 : go_data =  { {24{go_fmt[2]&ram_rdata[7]}}, ram_rdata[7:0] };
    2'b01 : go_data =  { {24{go_fmt[2]&ram_rdata[15]}}, ram_rdata[15:8] };	
    2'b10 : go_data =  { {24{go_fmt[2]&ram_rdata[23]}}, ram_rdata[23:16] };	
    2'b11 : go_data =  { {24{go_fmt[2]&ram_rdata[31]}}, ram_rdata[31:24] };	
    endcase	


/*
LDM��������ݺ�LDR��ͬ��ԭ����LDM��ʱ��Ҫ����USRģʽ�¼Ĵ��������ݣ�����Ƚ����⣬���Ե������ڴˡ�
��(cmd_sum_m!=0)ʱ�����ڴ洢�Ĵ��������ݣ���(cmd_sum_m==0)ʱ�����ڻ�ַ��д��
*/


always @ ( posedge clk or posedge rst )
if ( rst )
    ldm_vld <= #`DEL 1'd0;
else if ( cpu_en )
    ldm_vld <= #`DEL  cmd_ok & cmd_is_ldm & cmd[20] & (cmd_sum_m!=5'b0);
else;

/*
LDM�Ƕ�һ���Ĵ����������Ҳ��õķ����ǲ�������һ���Ĵ������Ѷ�Ӧλ��Ϊ0��Ȼ�������һ��
����ldm_sel�Ƚ�ɵ�����Ƕ�cmd�ӵ͵��ߣ�һ��һ�����жϡ�

*/

always @ ( cmd )
if ( cmd[0] )
    ldm_sel =  4'h0;
else if ( cmd[1] )
    ldm_sel =  4'h1; 
else if ( cmd[2] )
    ldm_sel =  4'h2; 
else if ( cmd[3] )
    ldm_sel =  4'h3; 
else if ( cmd[4] )
    ldm_sel =  4'h4; 
else if ( cmd[5] )
    ldm_sel =  4'h5; 
else if ( cmd[6] )
    ldm_sel =  4'h6; 
else if ( cmd[7] )
    ldm_sel =  4'h7; 
else if ( cmd[8] )
    ldm_sel =  4'h8; 
else if ( cmd[9] )
    ldm_sel =  4'h9; 
else if ( cmd[10] )
    ldm_sel =  4'ha; 
else if ( cmd[11] )
    ldm_sel =  4'hb; 
else if ( cmd[12] )
    ldm_sel =  4'hc; 
else if ( cmd[13] )
    ldm_sel =  4'hd; 
else if ( cmd[14] )
    ldm_sel =  4'he; 
else if ( cmd[15] )
    ldm_sel =  4'hf; 
else 
    ldm_sel =  4'h0;

	
always @ ( posedge clk or posedge rst )
if ( rst )
    ldm_num <= #`DEL 4'd0;
else if ( cpu_en )
    if ( cmd_is_ldm )
        ldm_num <= #`DEL  ldm_sel;
    else;
else;

/*
ldm_usr�Ǳ�ʾһ��ֻ��USRģʽ�µļĴ��������������

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    ldm_usr <= #`DEL 1'd0;
else if ( cpu_en )
    ldm_usr <= #`DEL  cmd_ok & cmd_is_ldm & cmd[20] &  cmd[22] & ~cmd[15];
else;

/*
ldm_data��go_data���ƣ�ֱ�����á�

*/

assign ldm_data =  go_data;

assign ldm_rf_vld =  (ldm_vld & ( ldm_num==4'hf ))|((cmd_ok & cmd_is_ldm & cmd[20])&(ldm_sel==4'hf));	


/*
����to_vld go_vld �� ldm_vld�����ǿ���֪���޸ļĴ������ˡ�
������R0-R7�ļĴ���������ֻ��һ����û��banked��
*/


always @ ( posedge clk or posedge rst )
if ( rst )
    r0 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h0 ) )
	    r0 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h0) )
	    r0 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h0 ) )
	    r0 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r1 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h1 ) )
	    r1 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h1 ) )
	    r1 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h1 ) )
	    r1 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r2 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h2 ) )
	    r2 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h2 ) )
	    r2 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h2 ) )
	    r2 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r3 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h3 ) )
	    r3 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h3 ) )
	    r3 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h3 ) )
	    r3 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r4 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h4 ) )
	    r4 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h4 ) )
	    r4 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h4 ) )
	    r4 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r5 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h5 ) )
	    r5 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h5 ) )
	    r5 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h5 ) )
	    r5 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r6 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h6 ) )
	    r6 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h6 ) )
	    r6 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h6 ) )
	    r6 <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r7 <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h7 ) )
	    r7 <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h7 ) )
	    r7 <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h7 ) )
	    r7 <= #`DEL  to_data;
	else;
else;

/*
�����R8-R12��banked��Ҳ����R8 ��Ҫ�л�������ÿһ���Ĵ�������Ӧ������һ����_fiq �� _usr.

*/

assign r8 =  (cpsr_m==5'b10001) ? r8_fiq : r8_usr;  


always @ ( posedge clk or posedge rst )
if ( rst )
    r8_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h8 )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    r8_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h8 ) & (cpsr_m==5'b10001 ) )
	    r8_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'h8 ) & (cpsr_m==5'b10001 )  )
	    r8_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r8_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h8 ) & ( ldm_usr | (cpsr_m!=5'b10001 ) ) )
	    r8_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h8 ) & (cpsr_m!=5'b10001 ) )
	    r8_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld & ( to_num== 4'h8 ) & (cpsr_m!=5'b10001 )  )
        r8_usr <= #`DEL  to_data;
	else;
else;

assign r9 =  (cpsr_m==5'b10001) ? r9_fiq : r9_usr;  


always @ ( posedge clk or posedge rst )
if ( rst )
    r9_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h9 )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    r9_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h9 ) & (cpsr_m==5'b10001 ) )
	    r9_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'h9 ) & (cpsr_m==5'b10001 )  )
	    r9_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    r9_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'h9 ) & ( ldm_usr | (cpsr_m!=5'b10001 ) ) )
	    r9_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'h9 ) & (cpsr_m!=5'b10001 ) )
	    r9_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'h9 ) & (cpsr_m!=5'b10001 )  )
	    r9_usr <= #`DEL  to_data;
	else;
else;



assign ra =  (cpsr_m==5'b10001) ? ra_fiq : ra_usr;  

always @ ( posedge clk or posedge rst )
if ( rst )
    ra_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'ha )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    ra_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'ha ) & (cpsr_m==5'b10001 ) )
	    ra_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'ha ) & (cpsr_m==5'b10001 )  )
	    ra_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    ra_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'ha ) & ( ldm_usr | (cpsr_m!=5'b10001 ) ) )
	    ra_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'ha ) & (cpsr_m!=5'b10001 ) )
	    ra_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'ha ) & (cpsr_m!=5'b10001 )  )
	    ra_usr <= #`DEL  to_data;
	else;
else;


assign rb =  (cpsr_m==5'b10001) ? rb_fiq : rb_usr;  

always @ ( posedge clk or posedge rst )
if ( rst )
    rb_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hb )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    rb_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hb ) & (cpsr_m==5'b10001 ) )
	    rb_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hb ) & (cpsr_m==5'b10001 )  )
	    rb_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rb_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hb ) & ( ldm_usr | (cpsr_m!=5'b10001 ) ) )
	    rb_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hb ) & (cpsr_m!=5'b10001 ) )
	    rb_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hb ) & (cpsr_m!=5'b10001 )  )
	    rb_usr <= #`DEL  to_data;
	else;
else;


assign rc =  (cpsr_m==5'b10001) ? rc_fiq : rc_usr;  


always @ ( posedge clk or posedge rst )
if ( rst )
    rc_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hc )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    rc_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hc ) & (cpsr_m==5'b10001 ) )
	    rc_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hc ) & (cpsr_m==5'b10001 )  )
	    rc_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rc_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hc ) & ( ldm_usr | (cpsr_m!=5'b10001 ) ) )
	    rc_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hc ) & (cpsr_m!=5'b10001 ) )
	    rc_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hc ) & (cpsr_m!=5'b10001 )  )
	    rc_usr <= #`DEL  to_data;
	else;
else;


/*
R13��ǰ��Ĳ�ͬ������5��ģʽ��Ӧ�ļĴ�����


*/


always @ ( cpsr_m or rd_fiq or rd_und or rd_irq or rd_abt or rd_svc or rd_usr )
case ( cpsr_m )
5'b10001 : rd = rd_fiq;
5'b11011 : rd = rd_und;
5'b10010 : rd = rd_irq;
5'b10111 : rd = rd_abt;  
5'b10011 : rd = rd_svc;
default  : rd = rd_usr;
endcase	

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_abt <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd )& ( ~ldm_usr & (cpsr_m==5'b10111 ) ) )
	    rd_abt <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & (cpsr_m==5'b10111 ) )
	    rd_abt <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & (cpsr_m==5'b10111 )  )
	    rd_abt <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd )& ( ~ldm_usr & (cpsr_m==5'b10001 ) ) )
	    rd_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & (cpsr_m==5'b10001 ) )
	    rd_fiq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & (cpsr_m==5'b10001 )  )
	    rd_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_irq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd )& ( ~ldm_usr & (cpsr_m==5'b10010 ) ) )
	    rd_irq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & (cpsr_m==5'b10010 ) )
	    rd_irq <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & (cpsr_m==5'b10010 )  )
	    rd_irq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_svc <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd )& ( ~ldm_usr & (cpsr_m==5'b10011 ) ) )
	    rd_svc <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & (cpsr_m==5'b10011 ) )
	    rd_svc <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & (cpsr_m==5'b10011 )  )
	    rd_svc <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_und <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd )& ( ~ldm_usr & (cpsr_m==5'b11011 ) ) )
	    rd_und <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & (cpsr_m==5'b11011 ) )
	    rd_und <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & (cpsr_m==5'b11011 )  )
	    rd_und <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    rd_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'hd ) & ( ldm_usr | ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) ) )
	    rd_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'hd ) & ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) )
	    rd_usr <= #`DEL  go_data;
	else if ( cmd_ok & to_vld  & ( to_num== 4'hd ) & ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) )
	    rd_usr <= #`DEL  to_data;
	else;
else;

/*
R14��R13��ͬ���ǣ����жϷ���ʱ��Ҫ���뷵�صĵ�ַ������BLָ�ͬ��ҲҪ���뷵�صĵ�ַ��


*/


always @ ( cpsr_m or re_fiq or re_und or re_irq or re_abt or re_svc or re_usr )
case ( cpsr_m )
5'b10001 : re = re_fiq;
5'b11011 : re = re_und;
5'b10010 : re = re_irq;
5'b10111 : re = re_abt;  
5'b10011 : re = re_svc;
default  : re = re_usr;
endcase	

always @ ( posedge clk or posedge rst )
if ( rst )
    re_abt <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ram_abort | ( ~fiq_en & ~irq_en & ( cmd_flag & code_abort ) ) )
        re_abt <= #`DEL  rf_b;		
    else if ( ldm_vld & ( ldm_num==4'he ) & ( ~ldm_usr & (cpsr_m==5'b10111) ) )
	    re_abt <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & (cpsr_m==5'b10111) )
	    re_abt <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & (cpsr_m==5'b10111) )
	    re_abt <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & (cpsr_m==5'b10111) )
	    re_abt <= #`DEL  to_data;
	else;
else;		

/*
������һ��Ҫ˵���ǣ����FIQ�жϺ�ram_abort�ж�ͬʱ��������ô�ȴ���fiq�����Ŵ���ram_abort�ж�
������fiq_en & ram_abortͬʱ��Чʱ��re_fiq������ǣ�32��h10����ram_abort��������ַ��

*/

always @ ( posedge clk or posedge rst )
if ( rst )
    re_fiq <= #`DEL 32'd0;
else if ( cpu_en )
    if ( fiq_en )
	    if ( ram_abort )
		    re_fiq <= #`DEL  32'h10;
        else
		    re_fiq <= #`DEL  rf_b;
    else if ( ldm_vld & ( ldm_num==4'he ) & ( ~ldm_usr & (cpsr_m==5'b10001) ) )
	    re_fiq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & (cpsr_m==5'b10001) )
	    re_fiq <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & (cpsr_m==5'b10001) )
	    re_fiq <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & (cpsr_m==5'b10001) )
	    re_fiq <= #`DEL  to_data;
	else;
else;

always @ ( posedge clk or posedge rst )
if ( rst )
    re_irq <= #`DEL 32'd0;
else if ( cpu_en )
    if  ( ~ram_abort & ~fiq_en & irq_en )
        re_irq <= #`DEL  rf_b;	
    else if ( ldm_vld & ( ldm_num==4'he ) & ( ~ldm_usr & (cpsr_m==5'b10010) ) )
	    re_irq <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & (cpsr_m==5'b10010) )
	    re_irq <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & (cpsr_m==5'b10010) )
	    re_irq <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & (cpsr_m==5'b10010) )
	    re_irq <= #`DEL  to_data;
	else;
else;		

always @ ( posedge clk or posedge rst )
if ( rst )
    re_svc <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ~ram_abort & ~fiq_en & ~irq_en & ( cmd_flag & ~code_abort & ~code_und & (cond_satisfy & cmd_is_swi) ) )
        re_svc <= #`DEL  rf_b;
    else if ( ldm_vld & ( ldm_num==4'he ) & ( ~ldm_usr & (cpsr_m==5'b10011) ) )
	    re_svc <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & (cpsr_m==5'b10011) )
	    re_svc <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & (cpsr_m==5'b10011) )
	    re_svc <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & (cpsr_m==5'b10011) )
	    re_svc <= #`DEL  to_data;
	else;
else;		

always @ ( posedge clk or posedge rst )
if ( rst )
    re_und <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ~ram_abort & ~fiq_en & ~irq_en & ( cmd_flag & ~code_abort & code_und ) )
	    re_und <= #`DEL  rf_b;
    else if ( ldm_vld & ( ldm_num==4'he ) & ( ~ldm_usr & (cpsr_m==5'b11011) ) )
	    re_und <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & (cpsr_m==5'b11011) )
	    re_und <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & (cpsr_m==5'b11011) )
	    re_und <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & (cpsr_m==5'b11011) )
	    re_und <= #`DEL  to_data;
	else;
else;		

always @ ( posedge clk or posedge rst )
if ( rst )
    re_usr <= #`DEL 32'd0;
else if ( cpu_en )
    if ( ldm_vld & ( ldm_num==4'he ) & ( ldm_usr | ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) ) )
	    re_usr <= #`DEL  ldm_data;
	else if ( go_vld & (go_num==4'he ) & ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) )
	    re_usr <= #`DEL  go_data;
	else if ( cmd_ok & cmd_is_b & cmd[24] & ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) )
	    re_usr <= #`DEL  rf_b;
	else if ( cmd_ok & to_vld  & ( to_num== 4'he ) & ((cpsr_m!=5'b10001)&(cpsr_m!=5'b11011)&(cpsr_m!=5'b10010)&(cpsr_m!=5'b10111)&(cpsr_m!=5'b10011)) )
	    re_usr <= #`DEL  to_data;
	else;
else;


/*
R15����Ҫ�Ը����жϸ����׵�ַ��

*/


always @ ( posedge clk or posedge rst )
if ( rst )
    rf <= #`DEL 32'd0;
else if ( cpu_en )
    if ( cpu_restart )
	    rf <= #`DEL  32'h0000_0000;
	else if ( fiq_en )
	    rf <= #`DEL  32'h0000_001c;
	else if ( ram_abort )
	    rf <= #`DEL  32'h0000_0010;
	else if ( irq_en )
	    rf <= #`DEL  32'h0000_0018;
	else if ( cmd_flag & code_abort )
	    rf <= #`DEL  32'h0000_000c; 
	else if ( cmd_flag & code_und )
	    rf <= #`DEL  32'h0000_0004;
    else if ( cmd_flag & cond_satisfy & cmd_is_swi )
        rf <= #`DEL  32'h0000_0008;
	else if ( ldm_vld & (ldm_num==4'hf ) )
        rf <= #`DEL  ldm_data;	
	else if ( go_vld & (go_num==4'hf) )
        rf <= #`DEL  go_data;
    else if ( cmd_ok & (cmd_is_dp0|cmd_is_dp1|cmd_is_dp2) & ( cmd[24:23]!=2'b10 ) & ( cmd[15:12]==4'hf ) )
	    rf <= #`DEL  dp_ans;	
	else if ( cmd_ok & ( cmd_is_b | cmd_is_bx ) )
	    rf <= #`DEL  sum_rn_rm;
    else if ( ~hold_en & ~wait_en )
        rf <= #`DEL  rf + 4;
    else;
else;

assign rf_b =  rf - 3'd4;	



/*
�����ǶԶ�дRAM�Ķ�д�ӿڽ������������ȣ��ܽ�Ҫ����ĵ�ַ��
���ĵ�ַҪô��sum_rn_rm��Ҫô��rn��

*/


always @ ( cmd_is_ldm or sum_rn_rm or cmd_is_swp or cmd_is_swpx or rn or cmd  )
if ( cmd_is_ldm )
    cmd_addr =  sum_rn_rm; 
else if ( cmd_is_swp|cmd_is_swpx )
    cmd_addr =  rn;
else if ( cmd[24] )
    cmd_addr =  sum_rn_rm;
else
    cmd_addr =  rn;

/*
����ĵ�ַ�����Ƕ���ģ�����λ����0

*/
	
assign ram_addr =  {cmd_addr[31:2],2'b0};

/*
RAM��cenֻ���ڶ�дRAMʱ���ŵ���1.

*/

assign ram_cen =  cpu_en & cmd_ok & (cmd_is_ldrh0|cmd_is_ldrh1|cmd_is_ldrsb0|cmd_is_ldrsb1|cmd_is_ldrsh0|cmd_is_ldrsh1|cmd_is_ldr0|cmd_is_ldr1|cmd_is_swp|cmd_is_swpx|(cmd_is_ldm &(cmd_sum_m!=5'b0)));

/*
RAM��wen�Ǳ�ʾ��һ�δ�cen�Ƕ�����д��һ����cmd[20]��ʾ��

*/

assign ram_wen =  cmd_is_swp ? 1'b0 : ~cmd[20];	


/*
ram_flag�Ǳ�ʾ����һ����������һ���ֽڵġ�����LDR�������ֲ�������ram_flag =4'b1111��LDRH���԰��ֲ�������ram_flag=4'b1100��4'b0011����cmd_addr[1]������
LDRBͬ��

*/


always @ ( cmd_is_ldr0 or cmd_is_ldr1 or cmd_is_swp or cmd_is_swpx or cmd or cmd_addr or cmd_is_ldrh0 or cmd_is_ldrh1 or cmd_is_ldrsh0 or cmd_is_ldrsh1 or cmd_is_ldrsb0 or cmd_is_ldrsb1 )
if ( cmd_is_ldr0|cmd_is_ldr1|cmd_is_swp|cmd_is_swpx )
    ram_flag =  cmd[22]? (1'b1<<cmd_addr[1:0]):4'b1111;
else if (cmd_is_ldrh0|cmd_is_ldrh1|cmd_is_ldrsh0|cmd_is_ldrsh1 )
    ram_flag =  cmd_addr[1] ? 4'b1100 : 4'b0011;
else if ( cmd_is_ldrsb0|cmd_is_ldrsb1 ) 
    ram_flag =  1'b1<<cmd_addr[1:0];
else
    ram_flag =  4'b1111;

/*
ram_wdata��д���ݡ�

*/
	
	
always @ ( cmd_is_ldm or cmd or r0 or r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or ra or rb or rc or rd or re or r8_usr or r9_usr or ra_usr or rb_usr or rc_usr or rd_usr or re_usr or rf or cmd_is_ldr0 or cmd_is_ldr1 or cmd_is_swpx or rna or cmd_is_ldrh0 or cmd_is_ldrh1 )
if ( cmd_is_ldm )
    if ( cmd[0] )
        ram_wdata =  r0;
    else if ( cmd[1] )
        ram_wdata =  r1; 
    else if ( cmd[2] )
        ram_wdata =  r2; 
    else if ( cmd[3] )
        ram_wdata =  r3; 
    else if ( cmd[4] )
        ram_wdata =  r4; 
    else if ( cmd[5] )
        ram_wdata =  r5; 
    else if ( cmd[6] )
        ram_wdata =  r6; 
    else if ( cmd[7] )
        ram_wdata =  r7; 
    else if ( cmd[8] )
        ram_wdata =  cmd[22] ? r8_usr : r8; 
    else if ( cmd[9] )
        ram_wdata =  cmd[22] ? r9_usr : r9; 
    else if ( cmd[10] )
        ram_wdata =  cmd[22] ? ra_usr : ra; 
    else if ( cmd[11] )
        ram_wdata =  cmd[22] ? rb_usr : rb; 
    else if ( cmd[12] )
        ram_wdata =  cmd[22] ? rc_usr : rc; 
    else if ( cmd[13] )
        ram_wdata =  cmd[22] ? rd_usr : rd; 
    else if ( cmd[14] )
        ram_wdata =  cmd[22] ? re_usr : re; 
    else if ( cmd[15] )
        ram_wdata =  rf; 
    else 
        ram_wdata =  4'h0;
else if ( cmd_is_ldr0|cmd_is_ldr1|cmd_is_swpx )
    if ( cmd[22] )
	    ram_wdata =  { rna[7:0],rna[7:0],rna[7:0],rna[7:0]};
    else
        ram_wdata =  rna;	
else if ( cmd_is_ldrh0|cmd_is_ldrh1 )
    ram_wdata =  {rna[15:0],rna[15:0]};
else
    ram_wdata =  rna;


/*
�����Ƕ�ROM�Ľӿڡ�ROM�ڷ����жϣ�int_all�����ı�PC��to_rf_vld cha_rf_vld go_rf_vld�������ݻ�����wait_en�����Լ���ָ�������ִ�У�hold_en��
���ܶ�ROM��д�µ�ָ���ˡ�
*/	
	
assign rom_en =  cpu_en & ( ~(int_all | to_rf_vld | cha_rf_vld | go_rf_vld | wait_en | hold_en ) );

assign rom_addr =  rf;	

/*
wait_en��ָ���ֻ������������code_rm_vld  code_rs_vld code_rn_vld��ָ����ָ���õ��Ĵ������ĳ���Ĵ�������������Ǻ����ڸ�д�ļĴ������һ�Աȣ�
������������غϣ�����������ݻ�����

*/

assign wait_en =  (code_rm_vld &cha_vld &(cha_num==code_rm_num))|(code_rm_vld & to_vld & (to_num==code_rm_num))|(code_rm_vld & go_vld &(go_num==code_rm_num)) | (code_rs_vld & cha_vld & (cha_num==code_rs_num))|(code_rs_vld & to_vld & (to_num==code_rs_num))|(code_rs_vld & go_vld & (go_num==code_rs_num)) | (code_rn_vld&cha_vld&(code_rn_num==cha_num)) |  (code_rnhi_vld&cha_vld&(code_rnhi_num==cha_num)) | (code_rm_vld & (ldm_vld & ~hold_en) & (ldm_num==code_rm_num) ) | (code_rs_vld & (ldm_vld & ~hold_en) & (ldm_num==code_rs_num) );


endmodule

`define RstEnable 1'b1          //��λʹ��
`define RstDisable 1'b0         //��λ����
`define WriteEnable 1'b1        //дʹ��
`define WriteDisable 1'b0       //д����
`define ReadEnable 1'b1         //��ʹ��
`define ReadDisable 1'b0        //������
`define InstValid 1'b0          //ָ����Ч
`define InstInvalid 1'b1        //ָ����Ч
`define ChipEnable 1'b1         //оƬʹ��
`define ChipDisable 1'b0        //оƬ��ֹ
`define ZeroWord 32'h00000000   //32λ����0
`define AluOpBus 7:0            //����׶�����������������ݿ��
`define AluSelBus 2:0           //����׶���������������ݿ��


//ָ��
`define EXE_AND  6'b100100      //ָ��and�Ĺ�����
`define EXE_OR   6'b100101      //ָ��ori�Ĺ�����
`define EXE_XOR 6'b100110       //ָ��xor�Ĺ�����
`define EXE_NOR 6'b100111       //ָ��nor�Ĺ�����
`define EXE_ANDI 6'b001100      //ָ��andi��ָ����
`define EXE_ORI  6'b001101      //ָ��ori��ָ����
`define EXE_XORI 6'b001110      //ָ��xori��ָ����
`define EXE_LUI 6'b001111       //ָ��lui��ָ����


`define EXE_SLL  6'b000000      //ָ��sll�Ĺ�����
`define EXE_SLLV  6'b000100     //ָ��sllv�Ĺ�����
`define EXE_SRL  6'b000010      //ָ��srl�Ĺ�����
`define EXE_SRLV  6'b000110     //ָ��srlv�Ĺ�����
`define EXE_SRA  6'b000011      //ָ��sra�Ĺ�����
`define EXE_SRAV  6'b000111     //ָ��srav�Ĺ�����
`define EXE_SYNC  6'b001111     //ָ��sync�Ĺ�����
`define EXE_PREF  6'b110011     //ָ��pref�Ĺ�����

`define EXE_MOVZ  6'b001010     //ָ��MOVZ�Ĺ�����
`define EXE_MOVN  6'b001011     //ָ��MOVN�Ĺ�����
`define EXE_MFHI  6'b010000     //ָ��MFHI�Ĺ�����
`define EXE_MTHI  6'b010001     //ָ��MTHI�Ĺ�����
`define EXE_MFLO  6'b010010     //ָ��MFLO�Ĺ�����
`define EXE_MTLO  6'b010011     //ָ��MTLO�Ĺ�����

`define EXE_NOP 6'b000000  	     //ָ��nop�Ĺ�����
`define SSNOP 32'b00000000000000000000000001000000 //ָ��SSNOP



`define EXE_SPECIAL_INST 6'b000000  //ָ��special��ָ����

//AluOp
`define EXE_AND_OP   8'b00100100
`define EXE_OR_OP    8'b00100101
`define EXE_XOR_OP  8'b00100110
`define EXE_NOR_OP  8'b00100111
`define EXE_ANDI_OP  8'b01011001
`define EXE_ORI_OP  8'b01011010
`define EXE_XORI_OP  8'b01011011
`define EXE_LUI_OP  8'b01011100   

`define EXE_SLL_OP  8'b01111100
`define EXE_SLLV_OP  8'b00000100
`define EXE_SRL_OP  8'b00000010
`define EXE_SRLV_OP  8'b00000110
`define EXE_SRA_OP  8'b00000011
`define EXE_SRAV_OP  8'b00000111

`define EXE_MOVZ_OP  8'b00001010
`define EXE_MOVN_OP  8'b00001011
`define EXE_MFHI_OP  8'b00010000
`define EXE_MTHI_OP  8'b00010001
`define EXE_MFLO_OP  8'b00010010
`define EXE_MTLO_OP  8'b00010011

`define EXE_NOP_OP 8'b00000000
//AluSel
`define EXE_RES_LOGIC 3'b001

`define EXE_RES_SHIFT 3'b010
`define EXE_RES_NOP 3'b000
`define EXE_RES_MOVE 3'b011	

`define InstAddrBus 31:0        //ROM�ĵ�ַ���߿��
`define InstBus 31:0            //ROM���������߿��
`define InstMemNumLog2 17       //ROM��ַ�߿�� 2^17=131072
`define InstMemNum 131071       //ROM��ʵ�ʴ�С128KB

`define RegAddrBus 4:0          //Regfileģ��ĵ�ַ�߿��
`define RegBus 31:0             //Regfileģ��������߿��
`define NOPRegAddr 5'b00000     //�ղ���ʹ�õļĴ�����ַ
`define RegNum 32               //ͨ�üĴ���������
`define RegNumLog2 5            //Ѱַͨ�üĴ���ʹ�õĵ�ַλ��
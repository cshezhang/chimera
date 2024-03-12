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
`define EXE_ORI  6'b001101      //ָ��ori��ָ����

//AluOp
`define EXE_OR_OP 8'b00100101
`define EXE_ORI_OP 8'b01011010
`define EXE_NOP_OP 8'b00000000
//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_NOP 3'b000

`define InstAddrBus 31:0        //ROM�ĵ�ַ���߿��
`define InstBus 31:0            //ROM���������߿��
`define InstMemNumLog2 17       //ROM��ַ�߿�� 2^17=131072
`define InstMemNum 131071       //ROM��ʵ�ʴ�С128KB

`define RegAddrBus 4:0          //Regfileģ��ĵ�ַ�߿��
`define RegBus 31:0             //Regfileģ��������߿��
`define NOPRegAddr 5'b00000     //�ղ���ʹ�õļĴ�����ַ
`define RegNum 32               //ͨ�üĴ���������
`define RegNumLog2 5            //Ѱַͨ�üĴ���ʹ�õĵ�ַλ��
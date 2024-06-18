// This program was cloned from: https://github.com/SymbioticEDA/riscv-formal
// License: ISC License

// Generator : SpinalHDL v0.11.3    git head : 4d8502333f4f7d6be245912fd85227ba7847abbd
// Date      : 26/11/2017, 14:03:00
// Component : VexRiscv


`define BranchCtrlEnum_binary_sequancial_type [1:0]
`define BranchCtrlEnum_binary_sequancial_INC 2'b00
`define BranchCtrlEnum_binary_sequancial_B 2'b01
`define BranchCtrlEnum_binary_sequancial_JAL 2'b10
`define BranchCtrlEnum_binary_sequancial_JALR 2'b11

`define AluBitwiseCtrlEnum_binary_sequancial_type [1:0]
`define AluBitwiseCtrlEnum_binary_sequancial_XOR_1 2'b00
`define AluBitwiseCtrlEnum_binary_sequancial_OR_1 2'b01
`define AluBitwiseCtrlEnum_binary_sequancial_AND_1 2'b10
`define AluBitwiseCtrlEnum_binary_sequancial_SRC1 2'b11

`define Src1CtrlEnum_binary_sequancial_type [1:0]
`define Src1CtrlEnum_binary_sequancial_RS 2'b00
`define Src1CtrlEnum_binary_sequancial_IMU 2'b01
`define Src1CtrlEnum_binary_sequancial_FOUR 2'b10

`define Src2CtrlEnum_binary_sequancial_type [1:0]
`define Src2CtrlEnum_binary_sequancial_RS 2'b00
`define Src2CtrlEnum_binary_sequancial_IMI 2'b01
`define Src2CtrlEnum_binary_sequancial_IMS 2'b10
`define Src2CtrlEnum_binary_sequancial_PC 2'b11

`define ShiftCtrlEnum_binary_sequancial_type [1:0]
`define ShiftCtrlEnum_binary_sequancial_DISABLE_1 2'b00
`define ShiftCtrlEnum_binary_sequancial_SLL_1 2'b01
`define ShiftCtrlEnum_binary_sequancial_SRL_1 2'b10
`define ShiftCtrlEnum_binary_sequancial_SRA_1 2'b11

`define AluCtrlEnum_binary_sequancial_type [1:0]
`define AluCtrlEnum_binary_sequancial_ADD_SUB 2'b00
`define AluCtrlEnum_binary_sequancial_SLT_SLTU 2'b01
`define AluCtrlEnum_binary_sequancial_BITWISE 2'b10

module VexRiscv (
      output  rvfi_valid,
      output [63:0] rvfi_order,
      output [31:0] rvfi_insn,
      output reg  rvfi_trap,
      output  rvfi_halt,
      output  rvfi_intr,
      output [1:0] rvfi_mode,
      output [1:0] rvfi_ixl,
      output [4:0] rvfi_rs1_addr,
      output [31:0] rvfi_rs1_rdata,
      output [4:0] rvfi_rs2_addr,
      output [31:0] rvfi_rs2_rdata,
      output [4:0] rvfi_rd_addr,
      output [31:0] rvfi_rd_wdata,
      output [31:0] rvfi_pc_rdata,
      output [31:0] rvfi_pc_wdata,
      output [31:0] rvfi_mem_addr,
      output [3:0] rvfi_mem_rmask,
      output [3:0] rvfi_mem_wmask,
      output [31:0] rvfi_mem_rdata,
      output [31:0] rvfi_mem_wdata,
      output  iBus_cmd_valid,
      input   iBus_cmd_ready,
      output [31:0] iBus_cmd_payload_pc,
      input   iBus_rsp_ready,
      input   iBus_rsp_error,
      input  [31:0] iBus_rsp_inst,
      output  dBus_cmd_valid,
      input   dBus_cmd_ready,
      output  dBus_cmd_payload_wr,
      output [31:0] dBus_cmd_payload_address,
      output [31:0] dBus_cmd_payload_data,
      output [1:0] dBus_cmd_payload_size,
      input   dBus_rsp_ready,
      input   dBus_rsp_error,
      input  [31:0] dBus_rsp_data,
      input   clk,
      input   reset);
  reg [31:0] zz_205;
  reg [31:0] zz_206;
  reg  zz_207;
  reg  zz_208;
  wire  zz_209;
  wire [1:0] zz_210;
  wire [31:0] zz_211;
  wire  zz_212;
  wire  zz_213;
  wire [31:0] zz_214;
  wire [1:0] zz_215;
  wire [31:0] zz_216;
  wire [0:0] zz_217;
  wire [0:0] zz_218;
  wire [0:0] zz_219;
  wire [0:0] zz_220;
  wire [0:0] zz_221;
  wire [0:0] zz_222;
  wire [0:0] zz_223;
  wire [0:0] zz_224;
  wire [11:0] zz_225;
  wire [11:0] zz_226;
  wire [31:0] zz_227;
  wire [31:0] zz_228;
  wire [31:0] zz_229;
  wire [31:0] zz_230;
  wire [31:0] zz_231;
  wire [1:0] zz_232;
  wire [1:0] zz_233;
  wire [1:0] zz_234;
  wire [32:0] zz_235;
  wire [31:0] zz_236;
  wire [32:0] zz_237;
  wire [19:0] zz_238;
  wire [11:0] zz_239;
  wire [11:0] zz_240;
  wire [31:0] writeBack_FORMAL_MEM_ADDR;
  wire [31:0] memory_FORMAL_MEM_ADDR;
  wire [31:0] execute_FORMAL_MEM_ADDR;
  wire  execute_BRANCH_DO;
  wire `BranchCtrlEnum_binary_sequancial_type decode_BRANCH_CTRL;
  wire `BranchCtrlEnum_binary_sequancial_type zz_1;
  wire `BranchCtrlEnum_binary_sequancial_type zz_2;
  wire `BranchCtrlEnum_binary_sequancial_type zz_3;
  wire [31:0] writeBack_REGFILE_WRITE_DATA;
  wire [31:0] execute_REGFILE_WRITE_DATA;
  wire  decode_SRC_LESS_UNSIGNED;
  wire `AluCtrlEnum_binary_sequancial_type decode_ALU_CTRL;
  wire `AluCtrlEnum_binary_sequancial_type zz_4;
  wire `AluCtrlEnum_binary_sequancial_type zz_5;
  wire `AluCtrlEnum_binary_sequancial_type zz_6;
  wire [31:0] memory_PC;
  wire [31:0] fetch_PC;
  wire [31:0] execute_SHIFT_RIGHT;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_7;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_8;
  wire `ShiftCtrlEnum_binary_sequancial_type decode_SHIFT_CTRL;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_9;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_10;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_11;
  wire [31:0] writeBack_FORMAL_PC_NEXT;
  wire [31:0] memory_FORMAL_PC_NEXT;
  wire [31:0] execute_FORMAL_PC_NEXT;
  wire [31:0] decode_FORMAL_PC_NEXT;
  wire [31:0] fetch_FORMAL_PC_NEXT;
  wire [31:0] prefetch_FORMAL_PC_NEXT;
  wire [31:0] decode_SRC2;
  wire [3:0] writeBack_FORMAL_MEM_RMASK;
  wire [3:0] memory_FORMAL_MEM_RMASK;
  wire [3:0] execute_FORMAL_MEM_RMASK;
  wire  writeBack_RS2_USE;
  wire  memory_RS2_USE;
  wire  execute_RS2_USE;
  wire [31:0] writeBack_RS1;
  wire [31:0] memory_RS1;
  wire [31:0] decode_RS1;
  wire [31:0] memory_MEMORY_READ_DATA;
  wire [31:0] writeBack_FORMAL_MEM_WDATA;
  wire [31:0] memory_FORMAL_MEM_WDATA;
  wire [31:0] execute_FORMAL_MEM_WDATA;
  wire  decode_MEMORY_ENABLE;
  wire [31:0] fetch_INSTRUCTION;
  wire  writeBack_RS1_USE;
  wire  memory_RS1_USE;
  wire  execute_RS1_USE;
  wire [31:0] writeBack_RS2;
  wire [31:0] memory_RS2;
  wire [31:0] decode_RS2;
  wire [3:0] writeBack_FORMAL_MEM_WMASK;
  wire [3:0] memory_FORMAL_MEM_WMASK;
  wire [3:0] execute_FORMAL_MEM_WMASK;
  wire  decode_SRC_USE_SUB_LESS;
  wire  writeBack_FORMAL_HALT;
  wire  memory_FORMAL_HALT;
  wire  execute_FORMAL_HALT;
  wire  decode_FORMAL_HALT;
  wire  fetch_FORMAL_HALT;
  wire  prefetch_FORMAL_HALT;
  wire [1:0] memory_MEMORY_ADDRESS_LOW;
  wire [1:0] execute_MEMORY_ADDRESS_LOW;
  wire [31:0] writeBack_FORMAL_MEM_RDATA;
  wire  decode_BYPASSABLE_EXECUTE_STAGE;
  wire  execute_BYPASSABLE_MEMORY_STAGE;
  wire  decode_BYPASSABLE_MEMORY_STAGE;
  wire [31:0] execute_BRANCH_CALC;
  wire [31:0] decode_SRC1;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type decode_ALU_BITWISE_CTRL;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_12;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_13;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_14;
  wire [31:0] memory_BRANCH_CALC;
  wire  memory_BRANCH_DO;
  wire [31:0] zz_15;
  wire [31:0] execute_PC;
  wire [31:0] execute_RS1;
  wire `BranchCtrlEnum_binary_sequancial_type execute_BRANCH_CTRL;
  wire `BranchCtrlEnum_binary_sequancial_type zz_16;
  wire  zz_17;
  wire  decode_RS2_USE;
  wire  decode_RS1_USE;
  wire  execute_REGFILE_WRITE_VALID;
  wire  execute_BYPASSABLE_EXECUTE_STAGE;
  wire  memory_REGFILE_WRITE_VALID;
  wire  memory_BYPASSABLE_MEMORY_STAGE;
  wire  writeBack_REGFILE_WRITE_VALID;
  wire [31:0] memory_SHIFT_RIGHT;
  reg [31:0] zz_18;
  wire `ShiftCtrlEnum_binary_sequancial_type memory_SHIFT_CTRL;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_19;
  wire [31:0] zz_20;
  wire `ShiftCtrlEnum_binary_sequancial_type execute_SHIFT_CTRL;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_21;
  wire  zz_22;
  wire [31:0] zz_23;
  wire [31:0] zz_24;
  wire  execute_SRC_LESS_UNSIGNED;
  wire  execute_SRC_USE_SUB_LESS;
  wire [31:0] zz_25;
  wire [31:0] zz_26;
  wire `Src2CtrlEnum_binary_sequancial_type decode_SRC2_CTRL;
  wire `Src2CtrlEnum_binary_sequancial_type zz_27;
  wire [31:0] zz_28;
  wire [31:0] zz_29;
  wire `Src1CtrlEnum_binary_sequancial_type decode_SRC1_CTRL;
  wire `Src1CtrlEnum_binary_sequancial_type zz_30;
  wire [31:0] zz_31;
  wire [31:0] execute_SRC_ADD_SUB;
  wire  execute_SRC_LESS;
  wire `AluCtrlEnum_binary_sequancial_type execute_ALU_CTRL;
  wire `AluCtrlEnum_binary_sequancial_type zz_32;
  wire [31:0] zz_33;
  wire [31:0] execute_SRC2;
  wire [31:0] execute_SRC1;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type execute_ALU_BITWISE_CTRL;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_34;
  reg  zz_35;
  wire [31:0] zz_36;
  wire [31:0] zz_37;
  wire [31:0] decode_INSTRUCTION_ANTICIPATED;
  reg  decode_REGFILE_WRITE_VALID;
  wire  decode_LEGAL_INSTRUCTION;
  wire  decode_INSTRUCTION_READY;
  wire `Src1CtrlEnum_binary_sequancial_type zz_38;
  wire  zz_39;
  wire `Src2CtrlEnum_binary_sequancial_type zz_40;
  wire  zz_41;
  wire  zz_42;
  wire  zz_43;
  wire  zz_44;
  wire  zz_45;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_46;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_47;
  wire  zz_48;
  wire  zz_49;
  wire `BranchCtrlEnum_binary_sequancial_type zz_50;
  wire `AluCtrlEnum_binary_sequancial_type zz_51;
  wire  zz_52;
  wire [31:0] zz_53;
  wire  writeBack_MEMORY_ENABLE;
  wire [1:0] writeBack_MEMORY_ADDRESS_LOW;
  wire [31:0] writeBack_MEMORY_READ_DATA;
  wire [31:0] memory_REGFILE_WRITE_DATA;
  wire  memory_ALIGNEMENT_FAULT;
  wire [31:0] memory_INSTRUCTION;
  wire  memory_MEMORY_ENABLE;
  wire [31:0] zz_54;
  wire [31:0] zz_55;
  wire [3:0] zz_56;
  wire [3:0] zz_57;
  wire [31:0] zz_58;
  wire [1:0] zz_59;
  wire [31:0] execute_RS2;
  wire [31:0] execute_SRC_ADD;
  wire [31:0] execute_INSTRUCTION;
  wire  execute_ALIGNEMENT_FAULT;
  wire  execute_MEMORY_ENABLE;
  wire  zz_60;
  wire  zz_61;
  wire [31:0] zz_62;
  wire [31:0] zz_63;
  reg [31:0] zz_64;
  wire [31:0] zz_65;
  reg [31:0] zz_66;
  wire [31:0] prefetch_PC;
  wire [31:0] zz_67;
  wire [31:0] zz_68;
  wire [31:0] prefetch_PC_CALC_WITHOUT_JUMP;
  wire [31:0] zz_69;
  wire  zz_70;
  reg  zz_71;
  wire  zz_72;
  reg  zz_73;
  wire  zz_74;
  wire  zz_75;
  reg [31:0] zz_76;
  wire  zz_77;
  wire  zz_78;
  wire  zz_79;
  wire [31:0] zz_80;
  wire [31:0] writeBack_PC/* verilator public */ ;
  wire [31:0] writeBack_INSTRUCTION/* verilator public */ ;
  wire [31:0] decode_PC/* verilator public */ ;
  wire [31:0] decode_INSTRUCTION/* verilator public */ ;
  reg  prefetch_arbitration_haltItself;
  wire  prefetch_arbitration_haltByOther;
  wire  prefetch_arbitration_removeIt;
  wire  prefetch_arbitration_flushAll;
  reg  prefetch_arbitration_isValid;
  wire  prefetch_arbitration_isStuck;
  wire  prefetch_arbitration_isStuckByOthers;
  wire  prefetch_arbitration_isFlushed;
  wire  prefetch_arbitration_isFiring;
  reg  fetch_arbitration_haltItself;
  wire  fetch_arbitration_haltByOther;
  reg  fetch_arbitration_removeIt;
  wire  fetch_arbitration_flushAll;
  reg  fetch_arbitration_isValid;
  wire  fetch_arbitration_isStuck;
  wire  fetch_arbitration_isStuckByOthers;
  wire  fetch_arbitration_isFlushed;
  wire  fetch_arbitration_isFiring;
  reg  decode_arbitration_haltItself/* verilator public */ ;
  wire  decode_arbitration_haltByOther;
  reg  decode_arbitration_removeIt;
  wire  decode_arbitration_flushAll;
  reg  decode_arbitration_isValid/* verilator public */ ;
  wire  decode_arbitration_isStuck;
  wire  decode_arbitration_isStuckByOthers;
  wire  decode_arbitration_isFlushed;
  wire  decode_arbitration_isFiring;
  reg  execute_arbitration_haltItself;
  wire  execute_arbitration_haltByOther;
  reg  execute_arbitration_removeIt;
  reg  execute_arbitration_flushAll;
  reg  execute_arbitration_isValid;
  wire  execute_arbitration_isStuck;
  wire  execute_arbitration_isStuckByOthers;
  wire  execute_arbitration_isFlushed;
  wire  execute_arbitration_isFiring;
  reg  memory_arbitration_haltItself;
  wire  memory_arbitration_haltByOther;
  reg  memory_arbitration_removeIt;
  wire  memory_arbitration_flushAll;
  reg  memory_arbitration_isValid;
  wire  memory_arbitration_isStuck;
  wire  memory_arbitration_isStuckByOthers;
  wire  memory_arbitration_isFlushed;
  wire  memory_arbitration_isFiring;
  wire  writeBack_arbitration_haltItself;
  wire  writeBack_arbitration_haltByOther;
  reg  writeBack_arbitration_removeIt;
  wire  writeBack_arbitration_flushAll;
  reg  writeBack_arbitration_isValid/* verilator public */ ;
  wire  writeBack_arbitration_isStuck;
  wire  writeBack_arbitration_isStuckByOthers;
  wire  writeBack_arbitration_isFlushed;
  wire  writeBack_arbitration_isFiring/* verilator public */ ;
  reg  zz_81;
  wire  decodeExceptionPort_valid;
  wire [3:0] decodeExceptionPort_payload_code;
  wire [31:0] decodeExceptionPort_payload_badAddr;
  wire  zz_82;
  wire [31:0] zz_83;
  reg [63:0] writeBack_FomalPlugin_order;
  reg  writeBack_FomalPlugin_haltRequest;
  wire  zz_84;
  reg  zz_85;
  reg  zz_86;
  reg  zz_87;
  reg  zz_88;
  reg  zz_89;
  reg  writeBack_FomalPlugin_haltFired;
  reg [31:0] prefetch_PcManagerSimplePlugin_pcReg/* verilator public */ ;
  reg  prefetch_PcManagerSimplePlugin_inc;
  wire [31:0] prefetch_PcManagerSimplePlugin_pcBeforeJumps;
  reg [31:0] prefetch_PcManagerSimplePlugin_pc;
  reg  prefetch_PcManagerSimplePlugin_samplePcNext;
  wire  prefetch_PcManagerSimplePlugin_jump_pcLoad_valid;
  wire [31:0] prefetch_PcManagerSimplePlugin_jump_pcLoad_payload;
  reg  prefetch_IBusSimplePlugin_pendingCmd;
  reg  zz_90;
  reg [31:0] zz_91;
  reg [31:0] zz_92;
  reg [3:0] zz_93;
  wire [3:0] execute_DBusSimplePlugin_formalMask;
  reg [31:0] writeBack_DBusSimplePlugin_rspShifted;
  wire  zz_94;
  reg [31:0] zz_95;
  wire  zz_96;
  reg [31:0] zz_97;
  reg [31:0] writeBack_DBusSimplePlugin_rspFormated;
  wire [19:0] zz_98;
  wire  zz_99;
  wire  zz_100;
  wire  zz_101;
  wire  zz_102;
  wire  zz_103;
  wire  zz_104;
  wire  zz_105;
  wire  zz_106;
  wire `AluCtrlEnum_binary_sequancial_type zz_107;
  wire `BranchCtrlEnum_binary_sequancial_type zz_108;
  wire `ShiftCtrlEnum_binary_sequancial_type zz_109;
  wire `AluBitwiseCtrlEnum_binary_sequancial_type zz_110;
  wire `Src2CtrlEnum_binary_sequancial_type zz_111;
  wire `Src1CtrlEnum_binary_sequancial_type zz_112;
  wire [4:0] decode_RegFilePlugin_regFileReadAddress1;
  wire [4:0] decode_RegFilePlugin_regFileReadAddress2;
  wire [31:0] decode_RegFilePlugin_rs1Data;
  wire  zz_113;
  wire [31:0] decode_RegFilePlugin_rs2Data;
  wire  zz_114;
  reg  writeBack_RegFilePlugin_regFileWrite_valid/* verilator public */ ;
  wire [4:0] writeBack_RegFilePlugin_regFileWrite_payload_address/* verilator public */ ;
  wire [31:0] writeBack_RegFilePlugin_regFileWrite_payload_data/* verilator public */ ;
  reg  zz_115;
  reg [31:0] execute_IntAluPlugin_bitwise;
  reg [31:0] zz_116;
  reg [31:0] zz_117;
  wire  zz_118;
  reg [19:0] zz_119;
  wire  zz_120;
  reg [19:0] zz_121;
  reg [31:0] zz_122;
  wire [31:0] execute_SrcPlugin_addSub;
  wire  execute_SrcPlugin_less;
  wire [4:0] execute_FullBarrielShifterPlugin_amplitude;
  reg [31:0] zz_123;
  wire [31:0] execute_FullBarrielShifterPlugin_reversed;
  reg [31:0] zz_124;
  reg  zz_125;
  reg  zz_126;
  reg  zz_127;
  reg [4:0] zz_128;
  wire  execute_BranchPlugin_eq;
  wire [2:0] zz_129;
  reg  zz_130;
  reg  zz_131;
  wire [31:0] execute_BranchPlugin_branch_src1;
  wire  zz_132;
  reg [10:0] zz_133;
  wire  zz_134;
  reg [19:0] zz_135;
  wire  zz_136;
  reg [18:0] zz_137;
  reg [31:0] zz_138;
  wire [31:0] execute_BranchPlugin_branch_src2;
  wire [31:0] execute_BranchPlugin_branchAdder;
  reg `AluBitwiseCtrlEnum_binary_sequancial_type zz_139;
  reg [31:0] zz_140;
  reg [31:0] zz_141;
  reg  zz_142;
  reg  zz_143;
  reg  zz_144;
  reg [1:0] zz_145;
  reg [1:0] zz_146;
  reg  zz_147;
  reg  zz_148;
  reg  zz_149;
  reg  zz_150;
  reg  zz_151;
  reg  zz_152;
  reg  zz_153;
  reg  zz_154;
  reg  zz_155;
  reg [3:0] zz_156;
  reg [3:0] zz_157;
  reg [31:0] zz_158;
  reg [31:0] zz_159;
  reg [31:0] zz_160;
  reg  zz_161;
  reg  zz_162;
  reg  zz_163;
  reg  zz_164;
  reg [31:0] zz_165;
  reg [31:0] zz_166;
  reg [31:0] zz_167;
  reg [31:0] zz_168;
  reg  zz_169;
  reg  zz_170;
  reg  zz_171;
  reg [31:0] zz_172;
  reg [31:0] zz_173;
  reg [31:0] zz_174;
  reg [31:0] zz_175;
  reg [31:0] zz_176;
  reg [31:0] zz_177;
  reg  zz_178;
  reg  zz_179;
  reg  zz_180;
  reg [3:0] zz_181;
  reg [3:0] zz_182;
  reg [31:0] zz_183;
  reg [31:0] zz_184;
  reg [31:0] zz_185;
  reg [31:0] zz_186;
  reg [31:0] zz_187;
  reg [31:0] zz_188;
  reg `ShiftCtrlEnum_binary_sequancial_type zz_189;
  reg `ShiftCtrlEnum_binary_sequancial_type zz_190;
  reg [31:0] zz_191;
  reg [31:0] zz_192;
  reg [31:0] zz_193;
  reg [31:0] zz_194;
  reg [31:0] zz_195;
  reg [31:0] zz_196;
  reg `AluCtrlEnum_binary_sequancial_type zz_197;
  reg  zz_198;
  reg [31:0] zz_199;
  reg [31:0] zz_200;
  reg `BranchCtrlEnum_binary_sequancial_type zz_201;
  reg  zz_202;
  reg [31:0] zz_203;
  reg [31:0] zz_204;
  reg [31:0] RegFilePlugin_regFile [0:31]/* verilator public */ ;
  assign rvfi_valid = zz_207;
  assign rvfi_halt = zz_208;
  assign iBus_cmd_valid = zz_209;
  assign dBus_cmd_payload_size = zz_210;
  assign dBus_cmd_payload_address = zz_211;
  assign dBus_cmd_valid = zz_212;
  assign dBus_cmd_payload_wr = zz_213;
  assign dBus_cmd_payload_data = zz_214;
  assign zz_215 = writeBack_INSTRUCTION[13 : 12];
  assign zz_216 = {29'd0, {prefetch_PcManagerSimplePlugin_inc,(2'b00)}};
  assign zz_217 = zz_98[4 : 4];
  assign zz_218 = zz_98[5 : 5];
  assign zz_219 = zz_98[10 : 10];
  assign zz_220 = zz_98[11 : 11];
  assign zz_221 = zz_98[12 : 12];
  assign zz_222 = zz_98[13 : 13];
  assign zz_223 = zz_98[14 : 14];
  assign zz_224 = zz_98[17 : 17];
  assign zz_225 = decode_INSTRUCTION[31 : 20];
  assign zz_226 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign zz_227 = ($signed(zz_228) + $signed(zz_231));
  assign zz_228 = ($signed(zz_229) + $signed(zz_230));
  assign zz_229 = execute_SRC1;
  assign zz_230 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign zz_231 = {{30{zz_232[1]}}, zz_232};
  assign zz_232 = (execute_SRC_USE_SUB_LESS ? zz_233 : zz_234);
  assign zz_233 = (2'b01);
  assign zz_234 = (2'b00);
  assign zz_235 = ($signed(zz_237) >>> execute_FullBarrielShifterPlugin_amplitude);
  assign zz_236 = zz_235[31 : 0];
  assign zz_237 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_binary_sequancial_SRA_1) && execute_FullBarrielShifterPlugin_reversed[31]),execute_FullBarrielShifterPlugin_reversed};
  assign zz_238 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign zz_239 = execute_INSTRUCTION[31 : 20];
  assign zz_240 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  always @ (posedge clk)
  begin
    if(zz_35) begin
      RegFilePlugin_regFile[writeBack_RegFilePlugin_regFileWrite_payload_address] <= writeBack_RegFilePlugin_regFileWrite_payload_data;
    end
  end

  always @ (posedge clk)
  begin
    if(zz_113) begin
      zz_205 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge clk)
  begin
    if(zz_114) begin
      zz_206 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  assign writeBack_FORMAL_MEM_ADDR = zz_204;
  assign memory_FORMAL_MEM_ADDR = zz_203;
  assign execute_FORMAL_MEM_ADDR = zz_58;
  assign execute_BRANCH_DO = zz_17;
  assign decode_BRANCH_CTRL = zz_1;
  assign zz_2 = zz_3;
  assign writeBack_REGFILE_WRITE_DATA = zz_200;
  assign execute_REGFILE_WRITE_DATA = zz_33;
  assign decode_SRC_LESS_UNSIGNED = zz_43;
  assign decode_ALU_CTRL = zz_4;
  assign zz_5 = zz_6;
  assign memory_PC = zz_195;
  assign fetch_PC = zz_192;
  assign execute_SHIFT_RIGHT = zz_20;
  assign zz_7 = zz_8;
  assign decode_SHIFT_CTRL = zz_9;
  assign zz_10 = zz_11;
  assign writeBack_FORMAL_PC_NEXT = zz_188;
  assign memory_FORMAL_PC_NEXT = zz_187;
  assign execute_FORMAL_PC_NEXT = zz_186;
  assign decode_FORMAL_PC_NEXT = zz_185;
  assign fetch_FORMAL_PC_NEXT = zz_184;
  assign prefetch_FORMAL_PC_NEXT = zz_67;
  assign decode_SRC2 = zz_28;
  assign writeBack_FORMAL_MEM_RMASK = zz_182;
  assign memory_FORMAL_MEM_RMASK = zz_181;
  assign execute_FORMAL_MEM_RMASK = zz_56;
  assign writeBack_RS2_USE = zz_180;
  assign memory_RS2_USE = zz_179;
  assign execute_RS2_USE = zz_178;
  assign writeBack_RS1 = zz_177;
  assign memory_RS1 = zz_176;
  assign decode_RS1 = zz_37;
  assign memory_MEMORY_READ_DATA = zz_54;
  assign writeBack_FORMAL_MEM_WDATA = zz_173;
  assign memory_FORMAL_MEM_WDATA = zz_172;
  assign execute_FORMAL_MEM_WDATA = zz_55;
  assign decode_MEMORY_ENABLE = zz_45;
  assign fetch_INSTRUCTION = zz_64;
  assign writeBack_RS1_USE = zz_164;
  assign memory_RS1_USE = zz_163;
  assign execute_RS1_USE = zz_162;
  assign writeBack_RS2 = zz_160;
  assign memory_RS2 = zz_159;
  assign decode_RS2 = zz_36;
  assign writeBack_FORMAL_MEM_WMASK = zz_157;
  assign memory_FORMAL_MEM_WMASK = zz_156;
  assign execute_FORMAL_MEM_WMASK = zz_57;
  assign decode_SRC_USE_SUB_LESS = zz_49;
  assign writeBack_FORMAL_HALT = zz_151;
  assign memory_FORMAL_HALT = zz_150;
  assign execute_FORMAL_HALT = zz_149;
  assign decode_FORMAL_HALT = zz_148;
  assign fetch_FORMAL_HALT = zz_147;
  assign prefetch_FORMAL_HALT = zz_70;
  assign memory_MEMORY_ADDRESS_LOW = zz_145;
  assign execute_MEMORY_ADDRESS_LOW = zz_59;
  assign writeBack_FORMAL_MEM_RDATA = zz_53;
  assign decode_BYPASSABLE_EXECUTE_STAGE = zz_41;
  assign execute_BYPASSABLE_MEMORY_STAGE = zz_142;
  assign decode_BYPASSABLE_MEMORY_STAGE = zz_48;
  assign execute_BRANCH_CALC = zz_15;
  assign decode_SRC1 = zz_31;
  assign decode_ALU_BITWISE_CTRL = zz_12;
  assign zz_13 = zz_14;
  assign memory_BRANCH_CALC = zz_141;
  assign memory_BRANCH_DO = zz_202;
  assign execute_PC = zz_194;
  assign execute_RS1 = zz_175;
  assign execute_BRANCH_CTRL = zz_16;
  assign decode_RS2_USE = zz_44;
  assign decode_RS1_USE = zz_42;
  assign execute_REGFILE_WRITE_VALID = zz_153;
  assign execute_BYPASSABLE_EXECUTE_STAGE = zz_144;
  assign memory_REGFILE_WRITE_VALID = zz_154;
  assign memory_BYPASSABLE_MEMORY_STAGE = zz_143;
  assign writeBack_REGFILE_WRITE_VALID = zz_155;
  assign memory_SHIFT_RIGHT = zz_191;
  always @ (memory_REGFILE_WRITE_DATA or memory_SHIFT_CTRL or zz_124 or memory_SHIFT_RIGHT)
  begin
    zz_18 = memory_REGFILE_WRITE_DATA;
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_binary_sequancial_SLL_1 : begin
        zz_18 = zz_124;
      end
      `ShiftCtrlEnum_binary_sequancial_SRL_1, `ShiftCtrlEnum_binary_sequancial_SRA_1 : begin
        zz_18 = memory_SHIFT_RIGHT;
      end
      default : begin
      end
    endcase
  end

  assign memory_SHIFT_CTRL = zz_19;
  assign execute_SHIFT_CTRL = zz_21;
  assign execute_SRC_LESS_UNSIGNED = zz_198;
  assign execute_SRC_USE_SUB_LESS = zz_152;
  assign zz_25 = decode_PC;
  assign zz_26 = decode_RS2;
  assign decode_SRC2_CTRL = zz_27;
  assign zz_29 = decode_RS1;
  assign decode_SRC1_CTRL = zz_30;
  assign execute_SRC_ADD_SUB = zz_24;
  assign execute_SRC_LESS = zz_22;
  assign execute_ALU_CTRL = zz_32;
  assign execute_SRC2 = zz_183;
  assign execute_SRC1 = zz_140;
  assign execute_ALU_BITWISE_CTRL = zz_34;
  always @ (writeBack_RegFilePlugin_regFileWrite_valid)
  begin
    zz_35 = 1'b0;
    if(writeBack_RegFilePlugin_regFileWrite_valid)begin
      zz_35 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = zz_63;
  always @ (zz_39 or decode_INSTRUCTION)
  begin
    decode_REGFILE_WRITE_VALID = zz_39;
    if((decode_INSTRUCTION[11 : 7] == (5'b00000)))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = zz_52;
  assign decode_INSTRUCTION_READY = zz_61;
  assign writeBack_MEMORY_ENABLE = zz_171;
  assign writeBack_MEMORY_ADDRESS_LOW = zz_146;
  assign writeBack_MEMORY_READ_DATA = zz_174;
  assign memory_REGFILE_WRITE_DATA = zz_199;
  assign memory_ALIGNEMENT_FAULT = zz_161;
  assign memory_INSTRUCTION = zz_167;
  assign memory_MEMORY_ENABLE = zz_170;
  assign execute_RS2 = zz_158;
  assign execute_SRC_ADD = zz_23;
  assign execute_INSTRUCTION = zz_166;
  assign execute_ALIGNEMENT_FAULT = zz_60;
  assign execute_MEMORY_ENABLE = zz_169;
  assign zz_62 = fetch_INSTRUCTION;
  assign zz_65 = prefetch_PC;
  always @ (memory_FORMAL_PC_NEXT or zz_82 or zz_83)
  begin
    zz_66 = memory_FORMAL_PC_NEXT;
    if(zz_82)begin
      zz_66 = zz_83;
    end
  end

  assign prefetch_PC = zz_68;
  assign prefetch_PC_CALC_WITHOUT_JUMP = zz_69;
  always @ (memory_FORMAL_HALT or zz_81 or memory_arbitration_isValid or memory_BRANCH_DO or zz_83 or memory_MEMORY_ENABLE or memory_INSTRUCTION or dBus_rsp_ready)
  begin
    zz_71 = memory_FORMAL_HALT;
    memory_arbitration_haltItself = 1'b0;
    if((zz_81 || ((memory_arbitration_isValid && memory_BRANCH_DO) && (zz_83[1 : 0] != (2'b00)))))begin
      zz_71 = 1'b1;
      memory_arbitration_haltItself = 1'b1;
    end
    if((((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! memory_INSTRUCTION[5])) && (! dBus_rsp_ready)))begin
      memory_arbitration_haltItself = 1'b1;
    end
  end

  assign zz_72 = execute_FORMAL_HALT;
  always @ (decode_FORMAL_HALT or decodeExceptionPort_valid or decode_arbitration_isValid or zz_125 or zz_126)
  begin
    zz_73 = decode_FORMAL_HALT;
    decode_arbitration_haltItself = 1'b0;
    if(decodeExceptionPort_valid)begin
      zz_73 = 1'b1;
      decode_arbitration_haltItself = 1'b1;
    end
    if((decode_arbitration_isValid && (zz_125 || zz_126)))begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  assign zz_74 = fetch_FORMAL_HALT;
  assign zz_75 = prefetch_FORMAL_HALT;
  always @ (writeBack_REGFILE_WRITE_DATA or writeBack_arbitration_isValid or writeBack_MEMORY_ENABLE or writeBack_DBusSimplePlugin_rspFormated)
  begin
    zz_76 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      zz_76 = writeBack_DBusSimplePlugin_rspFormated;
    end
  end

  assign zz_77 = writeBack_REGFILE_WRITE_VALID;
  assign zz_78 = writeBack_RS2_USE;
  assign zz_79 = writeBack_RS1_USE;
  assign zz_80 = writeBack_INSTRUCTION;
  assign writeBack_PC = zz_196;
  assign writeBack_INSTRUCTION = zz_168;
  assign decode_PC = zz_193;
  assign decode_INSTRUCTION = zz_165;
  always @ (iBus_cmd_ready or prefetch_IBusSimplePlugin_pendingCmd or iBus_rsp_ready)
  begin
    prefetch_arbitration_haltItself = 1'b0;
    if(((! iBus_cmd_ready) || (prefetch_IBusSimplePlugin_pendingCmd && (! iBus_rsp_ready))))begin
      prefetch_arbitration_haltItself = 1'b1;
    end
  end

  assign prefetch_arbitration_haltByOther = 1'b0;
  assign prefetch_arbitration_removeIt = 1'b0;
  assign prefetch_arbitration_flushAll = 1'b0;
  always @ (fetch_arbitration_isValid or iBus_rsp_ready or zz_90)
  begin
    fetch_arbitration_haltItself = 1'b0;
    if(((fetch_arbitration_isValid && (! iBus_rsp_ready)) && (! zz_90)))begin
      fetch_arbitration_haltItself = 1'b1;
    end
  end

  assign fetch_arbitration_haltByOther = 1'b0;
  always @ (fetch_arbitration_isFlushed)
  begin
    fetch_arbitration_removeIt = 1'b0;
    if(fetch_arbitration_isFlushed)begin
      fetch_arbitration_removeIt = 1'b1;
    end
  end

  assign fetch_arbitration_flushAll = 1'b0;
  assign decode_arbitration_haltByOther = 1'b0;
  always @ (decode_arbitration_isFlushed)
  begin
    decode_arbitration_removeIt = 1'b0;
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushAll = 1'b0;
  always @ (execute_arbitration_isValid or execute_MEMORY_ENABLE or dBus_cmd_ready or execute_ALIGNEMENT_FAULT)
  begin
    execute_arbitration_haltItself = 1'b0;
    if((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_ALIGNEMENT_FAULT)))begin
      execute_arbitration_haltItself = 1'b1;
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @ (execute_arbitration_isFlushed)
  begin
    execute_arbitration_removeIt = 1'b0;
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @ (zz_82)
  begin
    execute_arbitration_flushAll = 1'b0;
    if(zz_82)begin
      execute_arbitration_flushAll = 1'b1;
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (memory_arbitration_isFlushed)
  begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushAll = 1'b0;
  assign writeBack_arbitration_haltItself = 1'b0;
  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (writeBack_arbitration_isFlushed)
  begin
    writeBack_arbitration_removeIt = 1'b0;
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  assign writeBack_arbitration_flushAll = 1'b0;
  always @ (writeBack_arbitration_isFiring or zz_89 or writeBack_FomalPlugin_haltFired)
  begin
    zz_207 = writeBack_arbitration_isFiring;
    rvfi_trap = 1'b0;
    zz_208 = 1'b0;
    if(zz_89)begin
      zz_207 = 1'b1;
      rvfi_trap = 1'b1;
      zz_208 = 1'b1;
    end
    if(writeBack_FomalPlugin_haltFired)begin
      zz_207 = 1'b0;
    end
  end

  assign rvfi_order = writeBack_FomalPlugin_order;
  assign rvfi_insn = zz_80;
  assign rvfi_intr = 1'b0;
  assign rvfi_mode = 2'd3;
  assign rvfi_ixl = 2'd1;
  assign rvfi_rs1_addr = (zz_79 ? zz_80[19 : 15] : (5'b00000));
  assign rvfi_rs2_addr = (zz_78 ? zz_80[24 : 20] : (5'b00000));
  assign rvfi_rs1_rdata = (zz_79 ? writeBack_RS1 : (32'b00000000000000000000000000000000));
  assign rvfi_rs2_rdata = (zz_78 ? writeBack_RS2 : (32'b00000000000000000000000000000000));
  assign rvfi_rd_addr = (zz_77 ? zz_80[11 : 7] : (5'b00000));
  assign rvfi_rd_wdata = (zz_77 ? zz_76 : (32'b00000000000000000000000000000000));
  assign rvfi_pc_rdata = writeBack_PC;
  assign rvfi_pc_wdata = writeBack_FORMAL_PC_NEXT;
  assign rvfi_mem_addr = writeBack_FORMAL_MEM_ADDR;
  assign rvfi_mem_rmask = writeBack_FORMAL_MEM_RMASK;
  assign rvfi_mem_wmask = writeBack_FORMAL_MEM_WMASK;
  assign rvfi_mem_rdata = writeBack_FORMAL_MEM_RDATA;
  assign rvfi_mem_wdata = writeBack_FORMAL_MEM_WDATA;
  always @ (prefetch_arbitration_isValid or zz_75 or fetch_arbitration_isValid or decode_arbitration_isValid or execute_arbitration_isValid or memory_arbitration_isValid or writeBack_arbitration_isValid or zz_74 or zz_73 or zz_72 or zz_71 or writeBack_FORMAL_HALT)
  begin
    writeBack_FomalPlugin_haltRequest = 1'b0;
    if((prefetch_arbitration_isValid && zz_75))begin
      if((((((1'b1 && (! fetch_arbitration_isValid)) && (! decode_arbitration_isValid)) && (! execute_arbitration_isValid)) && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid)))begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
    if((fetch_arbitration_isValid && zz_74))begin
      if(((((1'b1 && (! decode_arbitration_isValid)) && (! execute_arbitration_isValid)) && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid)))begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
    if((decode_arbitration_isValid && zz_73))begin
      if((((1'b1 && (! execute_arbitration_isValid)) && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid)))begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
    if((execute_arbitration_isValid && zz_72))begin
      if(((1'b1 && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid)))begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
    if((memory_arbitration_isValid && zz_71))begin
      if((1'b1 && (! writeBack_arbitration_isValid)))begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
    if((writeBack_arbitration_isValid && writeBack_FORMAL_HALT))begin
      if(1'b1)begin
        writeBack_FomalPlugin_haltRequest = 1'b1;
      end
    end
  end

  assign zz_84 = 1'b0;
  assign zz_70 = 1'b0;
  assign prefetch_PcManagerSimplePlugin_pcBeforeJumps = (prefetch_PcManagerSimplePlugin_pcReg + zz_216);
  assign zz_69 = prefetch_PcManagerSimplePlugin_pcBeforeJumps;
  always @ (prefetch_PC_CALC_WITHOUT_JUMP or prefetch_PcManagerSimplePlugin_jump_pcLoad_valid or prefetch_PcManagerSimplePlugin_jump_pcLoad_payload or prefetch_arbitration_isFiring)
  begin
    prefetch_PcManagerSimplePlugin_pc = prefetch_PC_CALC_WITHOUT_JUMP;
    prefetch_PcManagerSimplePlugin_samplePcNext = 1'b0;
    if(prefetch_PcManagerSimplePlugin_jump_pcLoad_valid)begin
      prefetch_PcManagerSimplePlugin_samplePcNext = 1'b1;
      prefetch_PcManagerSimplePlugin_pc = prefetch_PcManagerSimplePlugin_jump_pcLoad_payload;
    end
    if(prefetch_arbitration_isFiring)begin
      prefetch_PcManagerSimplePlugin_samplePcNext = 1'b1;
    end
  end

  assign prefetch_PcManagerSimplePlugin_jump_pcLoad_valid = zz_82;
  assign prefetch_PcManagerSimplePlugin_jump_pcLoad_payload = zz_83;
  assign zz_68 = prefetch_PcManagerSimplePlugin_pc;
  assign zz_67 = (prefetch_PC + (32'b00000000000000000000000000000100));
  assign zz_209 = (((prefetch_arbitration_isValid && (! prefetch_arbitration_removeIt)) && (! prefetch_arbitration_isStuckByOthers)) && (! (prefetch_IBusSimplePlugin_pendingCmd && (! iBus_rsp_ready))));
  assign iBus_cmd_payload_pc = zz_65;
  always @ (iBus_rsp_inst or zz_90 or zz_91)
  begin
    zz_64 = iBus_rsp_inst;
    if(zz_90)begin
      zz_64 = zz_91;
    end
  end

  assign zz_63 = (decode_arbitration_isStuck ? decode_INSTRUCTION : zz_62);
  assign zz_61 = 1'b1;
  assign zz_60 = (((zz_210 == (2'b10)) && (zz_211[1 : 0] != (2'b00))) || ((zz_210 == (2'b01)) && (zz_211[0 : 0] != (1'b0))));
  assign zz_212 = ((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! execute_arbitration_isStuckByOthers)) && (! execute_arbitration_removeIt)) && (! execute_ALIGNEMENT_FAULT));
  assign zz_213 = execute_INSTRUCTION[5];
  assign zz_211 = execute_SRC_ADD;
  assign zz_210 = execute_INSTRUCTION[13 : 12];
  always @ (zz_210 or execute_RS2)
  begin
    case(zz_210)
      2'b00 : begin
        zz_92 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        zz_92 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        zz_92 = execute_RS2[31 : 0];
      end
    endcase
  end

  assign zz_214 = zz_92;
  assign zz_59 = zz_211[1 : 0];
  always @ (zz_210)
  begin
    case(zz_210)
      2'b00 : begin
        zz_93 = (4'b0001);
      end
      2'b01 : begin
        zz_93 = (4'b0011);
      end
      default : begin
        zz_93 = (4'b1111);
      end
    endcase
  end

  assign execute_DBusSimplePlugin_formalMask = (zz_93 <<< zz_211[1 : 0]);
  assign zz_58 = (zz_211 & (32'b11111111111111111111111111111100));
  assign zz_57 = ((zz_212 && zz_213) ? execute_DBusSimplePlugin_formalMask : (4'b0000));
  assign zz_56 = ((zz_212 && (! zz_213)) ? execute_DBusSimplePlugin_formalMask : (4'b0000));
  assign zz_55 = zz_214;
  assign zz_54 = dBus_rsp_data;
  always @ (memory_ALIGNEMENT_FAULT or memory_arbitration_isValid or memory_MEMORY_ENABLE)
  begin
    zz_81 = memory_ALIGNEMENT_FAULT;
    if((! (memory_arbitration_isValid && memory_MEMORY_ENABLE)))begin
      zz_81 = 1'b0;
    end
  end

  always @ (writeBack_MEMORY_READ_DATA or writeBack_MEMORY_ADDRESS_LOW)
  begin
    writeBack_DBusSimplePlugin_rspShifted = writeBack_MEMORY_READ_DATA;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusSimplePlugin_rspShifted[15 : 0] = writeBack_MEMORY_READ_DATA[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign zz_94 = (writeBack_DBusSimplePlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (zz_94 or writeBack_DBusSimplePlugin_rspShifted)
  begin
    zz_95[31] = zz_94;
    zz_95[30] = zz_94;
    zz_95[29] = zz_94;
    zz_95[28] = zz_94;
    zz_95[27] = zz_94;
    zz_95[26] = zz_94;
    zz_95[25] = zz_94;
    zz_95[24] = zz_94;
    zz_95[23] = zz_94;
    zz_95[22] = zz_94;
    zz_95[21] = zz_94;
    zz_95[20] = zz_94;
    zz_95[19] = zz_94;
    zz_95[18] = zz_94;
    zz_95[17] = zz_94;
    zz_95[16] = zz_94;
    zz_95[15] = zz_94;
    zz_95[14] = zz_94;
    zz_95[13] = zz_94;
    zz_95[12] = zz_94;
    zz_95[11] = zz_94;
    zz_95[10] = zz_94;
    zz_95[9] = zz_94;
    zz_95[8] = zz_94;
    zz_95[7 : 0] = writeBack_DBusSimplePlugin_rspShifted[7 : 0];
  end

  assign zz_96 = (writeBack_DBusSimplePlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (zz_96 or writeBack_DBusSimplePlugin_rspShifted)
  begin
    zz_97[31] = zz_96;
    zz_97[30] = zz_96;
    zz_97[29] = zz_96;
    zz_97[28] = zz_96;
    zz_97[27] = zz_96;
    zz_97[26] = zz_96;
    zz_97[25] = zz_96;
    zz_97[24] = zz_96;
    zz_97[23] = zz_96;
    zz_97[22] = zz_96;
    zz_97[21] = zz_96;
    zz_97[20] = zz_96;
    zz_97[19] = zz_96;
    zz_97[18] = zz_96;
    zz_97[17] = zz_96;
    zz_97[16] = zz_96;
    zz_97[15 : 0] = writeBack_DBusSimplePlugin_rspShifted[15 : 0];
  end

  always @ (zz_215 or zz_95 or zz_97 or writeBack_DBusSimplePlugin_rspShifted)
  begin
    case(zz_215)
      2'b00 : begin
        writeBack_DBusSimplePlugin_rspFormated = zz_95;
      end
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspFormated = zz_97;
      end
      default : begin
        writeBack_DBusSimplePlugin_rspFormated = writeBack_DBusSimplePlugin_rspShifted;
      end
    endcase
  end

  assign zz_53 = writeBack_MEMORY_READ_DATA;
  assign zz_99 = ((decode_INSTRUCTION & (32'b00000000000000000000000000010100)) == (32'b00000000000000000000000000000100));
  assign zz_100 = ((decode_INSTRUCTION & (32'b00000000000000000000000000001000)) == (32'b00000000000000000000000000001000));
  assign zz_101 = ((decode_INSTRUCTION & (32'b00000000000000000000000001000100)) == (32'b00000000000000000000000001000000));
  assign zz_102 = ((decode_INSTRUCTION & (32'b00000000000000000000000000010000)) == (32'b00000000000000000000000000010000));
  assign zz_103 = ((decode_INSTRUCTION & (32'b00000000000000000000000000000100)) == (32'b00000000000000000000000000000100));
  assign zz_104 = ((decode_INSTRUCTION & (32'b00000000000000000000000001010000)) == (32'b00000000000000000000000000000000));
  assign zz_105 = ((decode_INSTRUCTION & (32'b00000000000000000000000001110000)) == (32'b00000000000000000000000000100000));
  assign zz_106 = ((decode_INSTRUCTION & (32'b00000000000000000000000000100000)) == (32'b00000000000000000000000000000000));
  assign zz_98 = {({zz_100,zz_99} != (2'b00)),{(((decode_INSTRUCTION & (32'b00000000000000000000000001000100)) == (32'b00000000000000000000000000000100)) != (1'b0)),{({zz_100,{zz_102,{zz_103,{zz_106,((decode_INSTRUCTION & (32'b00000000000000000100000001000000)) == (32'b00000000000000000100000000000000))}}}} != (5'b00000)),{({zz_100,{zz_103,zz_105}} != (3'b000)),{({zz_100,{zz_103,zz_106}} != (3'b000)),{({zz_103,{((decode_INSTRUCTION & (32'b00000000000000000010000000100000)) == (32'b00000000000000000010000000100000)),{((decode_INSTRUCTION & (32'b00000000000000000010000000010000)) == (32'b00000000000000000010000000010000)),{((decode_INSTRUCTION & (32'b00000000000000000001000000100000)) == (32'b00000000000000000000000000100000)),((decode_INSTRUCTION & (32'b00000000000000000001000000010000)) == (32'b00000000000000000000000000010000))}}}} != (5'b00000)),{({((decode_INSTRUCTION & (32'b00000000000000000000000000000100)) == (32'b00000000000000000000000000000000)),{zz_104,((decode_INSTRUCTION & (32'b00000000000000000000000000011000)) == (32'b00000000000000000000000000000000))}} != (3'b000)),{({((decode_INSTRUCTION & (32'b00000000000000000010000000010000)) == (32'b00000000000000000010000000000000)),((decode_INSTRUCTION & (32'b00000000000000000101000000000000)) == (32'b00000000000000000001000000000000))} != (2'b00)),{({zz_101,{((decode_INSTRUCTION & (32'b00000000000000000000000000100100)) == (32'b00000000000000000000000000100000)),zz_105}} != (3'b000)),{(zz_104 != (1'b0)),{({((decode_INSTRUCTION & (32'b00000000000000000001000000000000)) == (32'b00000000000000000001000000000000)),zz_103} != (2'b00)),{({zz_103,((decode_INSTRUCTION & (32'b00000000000000000011000000000000)) == (32'b00000000000000000010000000000000))} != (2'b00)),{({((decode_INSTRUCTION & (32'b00000000000000000111000000010100)) == (32'b00000000000000000101000000010000)),((decode_INSTRUCTION & (32'b00000000000000000111000001100100)) == (32'b00000000000000000101000000100000))} != (2'b00)),{({((decode_INSTRUCTION & (32'b01000000000000000011000000010100)) == (32'b01000000000000000001000000010000)),{((decode_INSTRUCTION & (32'b01000000000000000100000001100100)) == (32'b01000000000000000100000000100000)),((decode_INSTRUCTION & (32'b00000000000000000111000000010100)) == (32'b00000000000000000001000000010000))}} != (3'b000)),{({zz_102,((decode_INSTRUCTION & (32'b00000000000000000000000000100000)) == (32'b00000000000000000000000000100000))} != (2'b00)),{({zz_101,{((decode_INSTRUCTION & (32'b01000000000000000000000000110000)) == (32'b01000000000000000000000000110000)),((decode_INSTRUCTION & (32'b00000000000000000010000000010100)) == (32'b00000000000000000010000000010000))}} != (3'b000)),{({zz_100,zz_99} != (2'b00)),{(((decode_INSTRUCTION & (32'b00000000000000000000000001001000)) == (32'b00000000000000000000000001000000)) != (1'b0)),{({((decode_INSTRUCTION & (32'b00000000000000000100000001100000)) == (32'b00000000000000000100000000100000)),{((decode_INSTRUCTION & (32'b00000000000000000000000001100100)) == (32'b00000000000000000000000000100100)),((decode_INSTRUCTION & (32'b00000000000000000100000000010100)) == (32'b00000000000000000100000000010000))}} != (3'b000)),(((decode_INSTRUCTION & (32'b00000000000000000110000000010100)) == (32'b00000000000000000010000000010000)) != (1'b0))}}}}}}}}}}}}}}}}}}};
  assign zz_52 = ({((decode_INSTRUCTION & (32'b00000000000000000000000001011111)) == (32'b00000000000000000000000000010111)),{((decode_INSTRUCTION & (32'b00000000000000000000000001111111)) == (32'b00000000000000000000000001101111)),{((decode_INSTRUCTION & (32'b00000000000000000001000001101111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & (32'b00000000000000000100000001111111)) == (32'b00000000000000000100000001100011)),{((decode_INSTRUCTION & (32'b00000000000000000010000001111111)) == (32'b00000000000000000000000001100011)),{((decode_INSTRUCTION & (32'b00000000000000000010000001111111)) == (32'b00000000000000000010000000010011)),{((decode_INSTRUCTION & (32'b00000000000000000110000000111111)) == (32'b00000000000000000000000000100011)),{((decode_INSTRUCTION & (32'b00000000000000000010000001111111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & (32'b00000000000000000110000001011111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & (32'b00000000000000000101000001011111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & (32'b00000000000000000111000001111011)) == (32'b00000000000000000000000001100011)),{((decode_INSTRUCTION & (32'b11111110000000000000000001111111)) == (32'b00000000000000000000000000110011)),{((decode_INSTRUCTION & (32'b10111100000000000111000001111111)) == (32'b00000000000000000101000000010011)),{((decode_INSTRUCTION & (32'b11111100000000000011000001111111)) == (32'b00000000000000000001000000010011)),{((decode_INSTRUCTION & (32'b10111110000000000111000001111111)) == (32'b00000000000000000101000000110011)),((decode_INSTRUCTION & (32'b10111110000000000111000001111111)) == (32'b00000000000000000000000000110011))}}}}}}}}}}}}}}} != (16'b0000000000000000));
  assign zz_107 = zz_98[1 : 0];
  assign zz_51 = zz_107;
  assign zz_108 = zz_98[3 : 2];
  assign zz_50 = zz_108;
  assign zz_49 = zz_217[0];
  assign zz_48 = zz_218[0];
  assign zz_109 = zz_98[7 : 6];
  assign zz_47 = zz_109;
  assign zz_110 = zz_98[9 : 8];
  assign zz_46 = zz_110;
  assign zz_45 = zz_219[0];
  assign zz_44 = zz_220[0];
  assign zz_43 = zz_221[0];
  assign zz_42 = zz_222[0];
  assign zz_41 = zz_223[0];
  assign zz_111 = zz_98[16 : 15];
  assign zz_40 = zz_111;
  assign zz_39 = zz_224[0];
  assign zz_112 = zz_98[19 : 18];
  assign zz_38 = zz_112;
  assign decodeExceptionPort_valid = ((decode_arbitration_isValid && decode_INSTRUCTION_READY) && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = (4'b0010);
  assign decodeExceptionPort_payload_badAddr = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign zz_113 = 1'b1;
  assign decode_RegFilePlugin_rs1Data = zz_205;
  assign zz_114 = 1'b1;
  assign decode_RegFilePlugin_rs2Data = zz_206;
  assign zz_37 = decode_RegFilePlugin_rs1Data;
  assign zz_36 = decode_RegFilePlugin_rs2Data;
  always @ (zz_77 or writeBack_arbitration_isFiring or zz_115)
  begin
    writeBack_RegFilePlugin_regFileWrite_valid = (zz_77 && writeBack_arbitration_isFiring);
    if(zz_115)begin
      writeBack_RegFilePlugin_regFileWrite_valid = 1'b1;
    end
  end

  assign writeBack_RegFilePlugin_regFileWrite_payload_address = zz_80[11 : 7];
  assign writeBack_RegFilePlugin_regFileWrite_payload_data = zz_76;
  always @ (execute_ALU_BITWISE_CTRL or execute_SRC1 or execute_SRC2)
  begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_binary_sequancial_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_binary_sequancial_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      `AluBitwiseCtrlEnum_binary_sequancial_XOR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = execute_SRC1;
      end
    endcase
  end

  always @ (execute_ALU_CTRL or execute_IntAluPlugin_bitwise or execute_SRC_LESS or execute_SRC_ADD_SUB)
  begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_binary_sequancial_BITWISE : begin
        zz_116 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_binary_sequancial_SLT_SLTU : begin
        zz_116 = {31'd0, execute_SRC_LESS};
      end
      default : begin
        zz_116 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  assign zz_33 = zz_116;
  always @ (decode_SRC1_CTRL or zz_29 or decode_INSTRUCTION)
  begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_binary_sequancial_RS : begin
        zz_117 = zz_29;
      end
      `Src1CtrlEnum_binary_sequancial_FOUR : begin
        zz_117 = (32'b00000000000000000000000000000100);
      end
      default : begin
        zz_117 = {decode_INSTRUCTION[31 : 12],(12'b000000000000)};
      end
    endcase
  end

  assign zz_31 = zz_117;
  assign zz_118 = zz_225[11];
  always @ (zz_118)
  begin
    zz_119[19] = zz_118;
    zz_119[18] = zz_118;
    zz_119[17] = zz_118;
    zz_119[16] = zz_118;
    zz_119[15] = zz_118;
    zz_119[14] = zz_118;
    zz_119[13] = zz_118;
    zz_119[12] = zz_118;
    zz_119[11] = zz_118;
    zz_119[10] = zz_118;
    zz_119[9] = zz_118;
    zz_119[8] = zz_118;
    zz_119[7] = zz_118;
    zz_119[6] = zz_118;
    zz_119[5] = zz_118;
    zz_119[4] = zz_118;
    zz_119[3] = zz_118;
    zz_119[2] = zz_118;
    zz_119[1] = zz_118;
    zz_119[0] = zz_118;
  end

  assign zz_120 = zz_226[11];
  always @ (zz_120)
  begin
    zz_121[19] = zz_120;
    zz_121[18] = zz_120;
    zz_121[17] = zz_120;
    zz_121[16] = zz_120;
    zz_121[15] = zz_120;
    zz_121[14] = zz_120;
    zz_121[13] = zz_120;
    zz_121[12] = zz_120;
    zz_121[11] = zz_120;
    zz_121[10] = zz_120;
    zz_121[9] = zz_120;
    zz_121[8] = zz_120;
    zz_121[7] = zz_120;
    zz_121[6] = zz_120;
    zz_121[5] = zz_120;
    zz_121[4] = zz_120;
    zz_121[3] = zz_120;
    zz_121[2] = zz_120;
    zz_121[1] = zz_120;
    zz_121[0] = zz_120;
  end

  always @ (decode_SRC2_CTRL or zz_26 or zz_119 or decode_INSTRUCTION or zz_121 or zz_25)
  begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_binary_sequancial_RS : begin
        zz_122 = zz_26;
      end
      `Src2CtrlEnum_binary_sequancial_IMI : begin
        zz_122 = {zz_119,decode_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_binary_sequancial_IMS : begin
        zz_122 = {zz_121,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        zz_122 = zz_25;
      end
    endcase
  end

  assign zz_28 = zz_122;
  assign execute_SrcPlugin_addSub = zz_227;
  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign zz_24 = execute_SrcPlugin_addSub;
  assign zz_23 = execute_SrcPlugin_addSub;
  assign zz_22 = execute_SrcPlugin_less;
  assign execute_FullBarrielShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (execute_SRC1)
  begin
    zz_123[0] = execute_SRC1[31];
    zz_123[1] = execute_SRC1[30];
    zz_123[2] = execute_SRC1[29];
    zz_123[3] = execute_SRC1[28];
    zz_123[4] = execute_SRC1[27];
    zz_123[5] = execute_SRC1[26];
    zz_123[6] = execute_SRC1[25];
    zz_123[7] = execute_SRC1[24];
    zz_123[8] = execute_SRC1[23];
    zz_123[9] = execute_SRC1[22];
    zz_123[10] = execute_SRC1[21];
    zz_123[11] = execute_SRC1[20];
    zz_123[12] = execute_SRC1[19];
    zz_123[13] = execute_SRC1[18];
    zz_123[14] = execute_SRC1[17];
    zz_123[15] = execute_SRC1[16];
    zz_123[16] = execute_SRC1[15];
    zz_123[17] = execute_SRC1[14];
    zz_123[18] = execute_SRC1[13];
    zz_123[19] = execute_SRC1[12];
    zz_123[20] = execute_SRC1[11];
    zz_123[21] = execute_SRC1[10];
    zz_123[22] = execute_SRC1[9];
    zz_123[23] = execute_SRC1[8];
    zz_123[24] = execute_SRC1[7];
    zz_123[25] = execute_SRC1[6];
    zz_123[26] = execute_SRC1[5];
    zz_123[27] = execute_SRC1[4];
    zz_123[28] = execute_SRC1[3];
    zz_123[29] = execute_SRC1[2];
    zz_123[30] = execute_SRC1[1];
    zz_123[31] = execute_SRC1[0];
  end

  assign execute_FullBarrielShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_binary_sequancial_SLL_1) ? zz_123 : execute_SRC1);
  assign zz_20 = zz_236;
  always @ (memory_SHIFT_RIGHT)
  begin
    zz_124[0] = memory_SHIFT_RIGHT[31];
    zz_124[1] = memory_SHIFT_RIGHT[30];
    zz_124[2] = memory_SHIFT_RIGHT[29];
    zz_124[3] = memory_SHIFT_RIGHT[28];
    zz_124[4] = memory_SHIFT_RIGHT[27];
    zz_124[5] = memory_SHIFT_RIGHT[26];
    zz_124[6] = memory_SHIFT_RIGHT[25];
    zz_124[7] = memory_SHIFT_RIGHT[24];
    zz_124[8] = memory_SHIFT_RIGHT[23];
    zz_124[9] = memory_SHIFT_RIGHT[22];
    zz_124[10] = memory_SHIFT_RIGHT[21];
    zz_124[11] = memory_SHIFT_RIGHT[20];
    zz_124[12] = memory_SHIFT_RIGHT[19];
    zz_124[13] = memory_SHIFT_RIGHT[18];
    zz_124[14] = memory_SHIFT_RIGHT[17];
    zz_124[15] = memory_SHIFT_RIGHT[16];
    zz_124[16] = memory_SHIFT_RIGHT[15];
    zz_124[17] = memory_SHIFT_RIGHT[14];
    zz_124[18] = memory_SHIFT_RIGHT[13];
    zz_124[19] = memory_SHIFT_RIGHT[12];
    zz_124[20] = memory_SHIFT_RIGHT[11];
    zz_124[21] = memory_SHIFT_RIGHT[10];
    zz_124[22] = memory_SHIFT_RIGHT[9];
    zz_124[23] = memory_SHIFT_RIGHT[8];
    zz_124[24] = memory_SHIFT_RIGHT[7];
    zz_124[25] = memory_SHIFT_RIGHT[6];
    zz_124[26] = memory_SHIFT_RIGHT[5];
    zz_124[27] = memory_SHIFT_RIGHT[4];
    zz_124[28] = memory_SHIFT_RIGHT[3];
    zz_124[29] = memory_SHIFT_RIGHT[2];
    zz_124[30] = memory_SHIFT_RIGHT[1];
    zz_124[31] = memory_SHIFT_RIGHT[0];
  end

  always @ (zz_127 or zz_128 or decode_INSTRUCTION or writeBack_arbitration_isValid or writeBack_REGFILE_WRITE_VALID or writeBack_INSTRUCTION or memory_arbitration_isValid or memory_REGFILE_WRITE_VALID or memory_BYPASSABLE_MEMORY_STAGE or memory_INSTRUCTION or execute_arbitration_isValid or execute_REGFILE_WRITE_VALID or execute_BYPASSABLE_EXECUTE_STAGE or execute_INSTRUCTION or decode_RS1_USE or decode_RS2_USE)
  begin
    zz_125 = 1'b0;
    zz_126 = 1'b0;
    if(zz_127)begin
      if((zz_128 == decode_INSTRUCTION[19 : 15]))begin
        zz_125 = 1'b1;
      end
      if((zz_128 == decode_INSTRUCTION[24 : 20]))begin
        zz_126 = 1'b1;
      end
    end
    if((writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID))begin
      if((1'b1 || (! 1'b1)))begin
        if((writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]))begin
          zz_125 = 1'b1;
        end
        if((writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]))begin
          zz_126 = 1'b1;
        end
      end
    end
    if((memory_arbitration_isValid && memory_REGFILE_WRITE_VALID))begin
      if((1'b1 || (! memory_BYPASSABLE_MEMORY_STAGE)))begin
        if((memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]))begin
          zz_125 = 1'b1;
        end
        if((memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]))begin
          zz_126 = 1'b1;
        end
      end
    end
    if((execute_arbitration_isValid && execute_REGFILE_WRITE_VALID))begin
      if((1'b1 || (! execute_BYPASSABLE_EXECUTE_STAGE)))begin
        if((execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]))begin
          zz_125 = 1'b1;
        end
        if((execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]))begin
          zz_126 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      zz_125 = 1'b0;
    end
    if((! decode_RS2_USE))begin
      zz_126 = 1'b0;
    end
  end

  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign zz_129 = execute_INSTRUCTION[14 : 12];
  always @ (zz_129 or execute_BranchPlugin_eq or execute_SRC_LESS)
  begin
    if((zz_129 == (3'b000))) begin
        zz_130 = execute_BranchPlugin_eq;
    end else if((zz_129 == (3'b001))) begin
        zz_130 = (! execute_BranchPlugin_eq);
    end else if((((zz_129 & (3'b101)) == (3'b101)))) begin
        zz_130 = (! execute_SRC_LESS);
    end else begin
        zz_130 = execute_SRC_LESS;
    end
  end

  always @ (execute_BRANCH_CTRL or zz_130)
  begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequancial_INC : begin
        zz_131 = 1'b0;
      end
      `BranchCtrlEnum_binary_sequancial_JAL : begin
        zz_131 = 1'b1;
      end
      `BranchCtrlEnum_binary_sequancial_JALR : begin
        zz_131 = 1'b1;
      end
      default : begin
        zz_131 = zz_130;
      end
    endcase
  end

  assign zz_17 = zz_131;
  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_binary_sequancial_JALR) ? execute_RS1 : execute_PC);
  assign zz_132 = zz_238[19];
  always @ (zz_132)
  begin
    zz_133[10] = zz_132;
    zz_133[9] = zz_132;
    zz_133[8] = zz_132;
    zz_133[7] = zz_132;
    zz_133[6] = zz_132;
    zz_133[5] = zz_132;
    zz_133[4] = zz_132;
    zz_133[3] = zz_132;
    zz_133[2] = zz_132;
    zz_133[1] = zz_132;
    zz_133[0] = zz_132;
  end

  assign zz_134 = zz_239[11];
  always @ (zz_134)
  begin
    zz_135[19] = zz_134;
    zz_135[18] = zz_134;
    zz_135[17] = zz_134;
    zz_135[16] = zz_134;
    zz_135[15] = zz_134;
    zz_135[14] = zz_134;
    zz_135[13] = zz_134;
    zz_135[12] = zz_134;
    zz_135[11] = zz_134;
    zz_135[10] = zz_134;
    zz_135[9] = zz_134;
    zz_135[8] = zz_134;
    zz_135[7] = zz_134;
    zz_135[6] = zz_134;
    zz_135[5] = zz_134;
    zz_135[4] = zz_134;
    zz_135[3] = zz_134;
    zz_135[2] = zz_134;
    zz_135[1] = zz_134;
    zz_135[0] = zz_134;
  end

  assign zz_136 = zz_240[11];
  always @ (zz_136)
  begin
    zz_137[18] = zz_136;
    zz_137[17] = zz_136;
    zz_137[16] = zz_136;
    zz_137[15] = zz_136;
    zz_137[14] = zz_136;
    zz_137[13] = zz_136;
    zz_137[12] = zz_136;
    zz_137[11] = zz_136;
    zz_137[10] = zz_136;
    zz_137[9] = zz_136;
    zz_137[8] = zz_136;
    zz_137[7] = zz_136;
    zz_137[6] = zz_136;
    zz_137[5] = zz_136;
    zz_137[4] = zz_136;
    zz_137[3] = zz_136;
    zz_137[2] = zz_136;
    zz_137[1] = zz_136;
    zz_137[0] = zz_136;
  end

  always @ (execute_BRANCH_CTRL or zz_133 or execute_INSTRUCTION or zz_135 or zz_137)
  begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_binary_sequancial_JAL : begin
        zz_138 = {{zz_133,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      `BranchCtrlEnum_binary_sequancial_JALR : begin
        zz_138 = {zz_135,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        zz_138 = {{zz_137,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src2 = zz_138;
  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign zz_15 = {execute_BranchPlugin_branchAdder[31 : 1],((execute_BRANCH_CTRL == `BranchCtrlEnum_binary_sequancial_JALR) ? 1'b0 : execute_BranchPlugin_branchAdder[0])};
  assign zz_82 = (memory_arbitration_isFiring && memory_BRANCH_DO);
  assign zz_83 = memory_BRANCH_CALC;
  assign zz_14 = decode_ALU_BITWISE_CTRL;
  assign zz_12 = zz_46;
  assign zz_34 = zz_139;
  assign zz_27 = zz_40;
  assign zz_30 = zz_38;
  assign zz_11 = decode_SHIFT_CTRL;
  assign zz_8 = execute_SHIFT_CTRL;
  assign zz_9 = zz_47;
  assign zz_21 = zz_189;
  assign zz_19 = zz_190;
  assign zz_6 = decode_ALU_CTRL;
  assign zz_4 = zz_51;
  assign zz_32 = zz_197;
  assign zz_3 = decode_BRANCH_CTRL;
  assign zz_1 = zz_50;
  assign zz_16 = zz_201;
  assign prefetch_arbitration_isFlushed = (((((prefetch_arbitration_flushAll || fetch_arbitration_flushAll) || decode_arbitration_flushAll) || execute_arbitration_flushAll) || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign fetch_arbitration_isFlushed = ((((fetch_arbitration_flushAll || decode_arbitration_flushAll) || execute_arbitration_flushAll) || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign decode_arbitration_isFlushed = (((decode_arbitration_flushAll || execute_arbitration_flushAll) || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign execute_arbitration_isFlushed = ((execute_arbitration_flushAll || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign memory_arbitration_isFlushed = (memory_arbitration_flushAll || writeBack_arbitration_flushAll);
  assign writeBack_arbitration_isFlushed = writeBack_arbitration_flushAll;
  assign prefetch_arbitration_isStuckByOthers = (prefetch_arbitration_haltByOther || (((((1'b0 || fetch_arbitration_haltItself) || decode_arbitration_haltItself) || execute_arbitration_haltItself) || memory_arbitration_haltItself) || writeBack_arbitration_haltItself));
  assign prefetch_arbitration_isStuck = (prefetch_arbitration_haltItself || prefetch_arbitration_isStuckByOthers);
  assign prefetch_arbitration_isFiring = ((prefetch_arbitration_isValid && (! prefetch_arbitration_isStuck)) && (! prefetch_arbitration_removeIt));
  assign fetch_arbitration_isStuckByOthers = (fetch_arbitration_haltByOther || ((((1'b0 || decode_arbitration_haltItself) || execute_arbitration_haltItself) || memory_arbitration_haltItself) || writeBack_arbitration_haltItself));
  assign fetch_arbitration_isStuck = (fetch_arbitration_haltItself || fetch_arbitration_isStuckByOthers);
  assign fetch_arbitration_isFiring = ((fetch_arbitration_isValid && (! fetch_arbitration_isStuck)) && (! fetch_arbitration_removeIt));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_haltItself) || memory_arbitration_haltItself) || writeBack_arbitration_haltItself));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_haltItself) || writeBack_arbitration_haltItself));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_haltItself));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (posedge clk)
  begin
    if(reset) begin
      prefetch_arbitration_isValid <= 1'b0;
      fetch_arbitration_isValid <= 1'b0;
      decode_arbitration_isValid <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      writeBack_FomalPlugin_order <= (64'b0000000000000000000000000000000000000000000000000000000000000000);
      zz_85 <= zz_84;
      zz_86 <= zz_84;
      zz_87 <= zz_84;
      zz_88 <= zz_84;
      zz_89 <= zz_84;
      writeBack_FomalPlugin_haltFired <= 1'b0;
      prefetch_PcManagerSimplePlugin_pcReg <= (32'b00000000000000000000000000000000);
      prefetch_PcManagerSimplePlugin_inc <= 1'b0;
      prefetch_IBusSimplePlugin_pendingCmd <= 1'b0;
      zz_90 <= 1'b0;
      zz_115 <= 1'b1;
      zz_127 <= 1'b0;
      zz_200 <= (32'b00000000000000000000000000000000);
      zz_168 <= (32'b00000000000000000000000000000000);
    end else begin
      if(writeBack_arbitration_isFiring)begin
        writeBack_FomalPlugin_order <= (writeBack_FomalPlugin_order + (64'b0000000000000000000000000000000000000000000000000000000000000001));
      end
      zz_85 <= writeBack_FomalPlugin_haltRequest;
      zz_86 <= zz_85;
      zz_87 <= zz_86;
      zz_88 <= zz_87;
      zz_89 <= zz_88;
      if((zz_207 && zz_208))begin
        writeBack_FomalPlugin_haltFired <= 1'b1;
      end
      prefetch_arbitration_isValid <= 1'b1;
      if(prefetch_PcManagerSimplePlugin_jump_pcLoad_valid)begin
        prefetch_PcManagerSimplePlugin_inc <= 1'b0;
      end
      if(prefetch_arbitration_isFiring)begin
        prefetch_PcManagerSimplePlugin_inc <= 1'b1;
      end
      if(prefetch_PcManagerSimplePlugin_samplePcNext)begin
        prefetch_PcManagerSimplePlugin_pcReg <= prefetch_PcManagerSimplePlugin_pc;
      end
      if(iBus_rsp_ready)begin
        prefetch_IBusSimplePlugin_pendingCmd <= 1'b0;
      end
      if((zz_209 && iBus_cmd_ready))begin
        prefetch_IBusSimplePlugin_pendingCmd <= 1'b1;
      end
      if(iBus_rsp_ready)begin
        zz_90 <= 1'b1;
      end
      if((! fetch_arbitration_isStuck))begin
        zz_90 <= 1'b0;
      end
      zz_115 <= 1'b0;
      zz_127 <= (zz_77 && writeBack_arbitration_isFiring);
      if((! writeBack_arbitration_isStuck))begin
        zz_168 <= memory_INSTRUCTION;
      end
      if((! writeBack_arbitration_isStuck))begin
        zz_200 <= zz_18;
      end
      if(((! fetch_arbitration_isStuck) || fetch_arbitration_removeIt))begin
        fetch_arbitration_isValid <= 1'b0;
      end
      if(((! prefetch_arbitration_isStuck) && (! prefetch_arbitration_removeIt)))begin
        fetch_arbitration_isValid <= prefetch_arbitration_isValid;
      end
      if(((! decode_arbitration_isStuck) || decode_arbitration_removeIt))begin
        decode_arbitration_isValid <= 1'b0;
      end
      if(((! fetch_arbitration_isStuck) && (! fetch_arbitration_removeIt)))begin
        decode_arbitration_isValid <= fetch_arbitration_isValid;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
    end
  end

  always @ (posedge clk)
  begin
    if((! zz_90))begin
      zz_91 <= iBus_rsp_inst;
    end
    if (!(! (((dBus_rsp_ready && memory_MEMORY_ENABLE) && memory_arbitration_isValid) && memory_arbitration_isStuck))) begin
      $display("ERROR DBusSimplePlugin doesn't allow memory stage stall when read happend");
    end
    if (!(! (((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE) && (! writeBack_INSTRUCTION[5])) && writeBack_arbitration_isStuck))) begin
      $display("ERROR DBusSimplePlugin doesn't allow memory stage stall when read happend");
    end
    zz_128 <= zz_80[11 : 7];
    if((! execute_arbitration_isStuck))begin
      zz_139 <= zz_13;
    end
    if((! execute_arbitration_isStuck))begin
      zz_140 <= decode_SRC1;
    end
    if((! memory_arbitration_isStuck))begin
      zz_141 <= execute_BRANCH_CALC;
    end
    if((! execute_arbitration_isStuck))begin
      zz_142 <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_143 <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      zz_144 <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_145 <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_146 <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! fetch_arbitration_isStuck))begin
      zz_147 <= zz_75;
    end
    if((! decode_arbitration_isStuck))begin
      zz_148 <= zz_74;
    end
    if((! execute_arbitration_isStuck))begin
      zz_149 <= zz_73;
    end
    if((! memory_arbitration_isStuck))begin
      zz_150 <= zz_72;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_151 <= zz_71;
    end
    if((! execute_arbitration_isStuck))begin
      zz_152 <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      zz_153 <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      zz_154 <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_155 <= memory_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      zz_156 <= execute_FORMAL_MEM_WMASK;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_157 <= memory_FORMAL_MEM_WMASK;
    end
    if((! execute_arbitration_isStuck))begin
      zz_158 <= zz_26;
    end
    if((! memory_arbitration_isStuck))begin
      zz_159 <= execute_RS2;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_160 <= memory_RS2;
    end
    if((! memory_arbitration_isStuck))begin
      zz_161 <= execute_ALIGNEMENT_FAULT;
    end
    if((! execute_arbitration_isStuck))begin
      zz_162 <= decode_RS1_USE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_163 <= execute_RS1_USE;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_164 <= memory_RS1_USE;
    end
    if((! decode_arbitration_isStuck))begin
      zz_165 <= zz_62;
    end
    if((! execute_arbitration_isStuck))begin
      zz_166 <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      zz_167 <= execute_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      zz_169 <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_170 <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_171 <= memory_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_172 <= execute_FORMAL_MEM_WDATA;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_173 <= memory_FORMAL_MEM_WDATA;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_174 <= memory_MEMORY_READ_DATA;
    end
    if((! execute_arbitration_isStuck))begin
      zz_175 <= zz_29;
    end
    if((! memory_arbitration_isStuck))begin
      zz_176 <= execute_RS1;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_177 <= memory_RS1;
    end
    if((! execute_arbitration_isStuck))begin
      zz_178 <= decode_RS2_USE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_179 <= execute_RS2_USE;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_180 <= memory_RS2_USE;
    end
    if((! memory_arbitration_isStuck))begin
      zz_181 <= execute_FORMAL_MEM_RMASK;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_182 <= memory_FORMAL_MEM_RMASK;
    end
    if((! execute_arbitration_isStuck))begin
      zz_183 <= decode_SRC2;
    end
    if((! fetch_arbitration_isStuck))begin
      zz_184 <= prefetch_FORMAL_PC_NEXT;
    end
    if((! decode_arbitration_isStuck))begin
      zz_185 <= fetch_FORMAL_PC_NEXT;
    end
    if((! execute_arbitration_isStuck))begin
      zz_186 <= decode_FORMAL_PC_NEXT;
    end
    if((! memory_arbitration_isStuck))begin
      zz_187 <= execute_FORMAL_PC_NEXT;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_188 <= zz_66;
    end
    if((! execute_arbitration_isStuck))begin
      zz_189 <= zz_10;
    end
    if((! memory_arbitration_isStuck))begin
      zz_190 <= zz_7;
    end
    if((! memory_arbitration_isStuck))begin
      zz_191 <= execute_SHIFT_RIGHT;
    end
    if((! fetch_arbitration_isStuck))begin
      zz_192 <= zz_65;
    end
    if((! decode_arbitration_isStuck))begin
      zz_193 <= fetch_PC;
    end
    if((! execute_arbitration_isStuck))begin
      zz_194 <= zz_25;
    end
    if((! memory_arbitration_isStuck))begin
      zz_195 <= execute_PC;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_196 <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      zz_197 <= zz_5;
    end
    if((! execute_arbitration_isStuck))begin
      zz_198 <= decode_SRC_LESS_UNSIGNED;
    end
    if((! memory_arbitration_isStuck))begin
      zz_199 <= execute_REGFILE_WRITE_DATA;
    end
    if((! execute_arbitration_isStuck))begin
      zz_201 <= zz_2;
    end
    if((! memory_arbitration_isStuck))begin
      zz_202 <= execute_BRANCH_DO;
    end
    if((! memory_arbitration_isStuck))begin
      zz_203 <= execute_FORMAL_MEM_ADDR;
    end
    if((! writeBack_arbitration_isStuck))begin
      zz_204 <= memory_FORMAL_MEM_ADDR;
    end
    if (!(prefetch_arbitration_removeIt == 1'b0)) begin
      $display("ERROR removeIt should never be asserted on this stage");
    end
  end

endmodule


// This program was cloned from: https://github.com/YosysHQ/riscv-formal
// License: ISC License

// Generator : SpinalHDL v1.6.4    git head : 598c18959149eb18e5eee5b0aa3eef01ecaa41a1
// Component : VexRiscv
// Git hash  : e1620c68b2bfcff7ad1bc8ce665cf4ce29452141

`timescale 1ns/1ps 

module VexRiscv (
  output reg          rvfi_valid,
  output     [63:0]   rvfi_order,
  output     [31:0]   rvfi_insn,
  output reg          rvfi_trap,
  output reg          rvfi_halt,
  output              rvfi_intr,
  output     [1:0]    rvfi_mode,
  output     [1:0]    rvfi_ixl,
  output     [4:0]    rvfi_rs1_addr,
  output     [31:0]   rvfi_rs1_rdata,
  output     [4:0]    rvfi_rs2_addr,
  output     [31:0]   rvfi_rs2_rdata,
  output     [4:0]    rvfi_rd_addr,
  output     [31:0]   rvfi_rd_wdata,
  output     [31:0]   rvfi_pc_rdata,
  output     [31:0]   rvfi_pc_wdata,
  output     [31:0]   rvfi_mem_addr,
  output     [3:0]    rvfi_mem_rmask,
  output     [3:0]    rvfi_mem_wmask,
  output     [31:0]   rvfi_mem_rdata,
  output     [31:0]   rvfi_mem_wdata,
  output              iBus_cmd_valid,
  input               iBus_cmd_ready,
  output     [31:0]   iBus_cmd_payload_pc,
  input               iBus_rsp_valid,
  input               iBus_rsp_payload_error,
  input      [31:0]   iBus_rsp_payload_inst,
  output              dBus_cmd_valid,
  input               dBus_cmd_ready,
  output              dBus_cmd_payload_wr,
  output     [31:0]   dBus_cmd_payload_address,
  output     [31:0]   dBus_cmd_payload_data,
  output     [1:0]    dBus_cmd_payload_size,
  input               dBus_rsp_ready,
  input               dBus_rsp_error,
  input      [31:0]   dBus_rsp_data,
  input               clk,
  input               reset
);
  localparam ShiftCtrlEnum_DISABLE_1 = 2'd0;
  localparam ShiftCtrlEnum_SLL_1 = 2'd1;
  localparam ShiftCtrlEnum_SRL_1 = 2'd2;
  localparam ShiftCtrlEnum_SRA_1 = 2'd3;
  localparam BranchCtrlEnum_INC = 2'd0;
  localparam BranchCtrlEnum_B = 2'd1;
  localparam BranchCtrlEnum_JAL = 2'd2;
  localparam BranchCtrlEnum_JALR = 2'd3;
  localparam AluBitwiseCtrlEnum_XOR_1 = 2'd0;
  localparam AluBitwiseCtrlEnum_OR_1 = 2'd1;
  localparam AluBitwiseCtrlEnum_AND_1 = 2'd2;
  localparam AluCtrlEnum_ADD_SUB = 2'd0;
  localparam AluCtrlEnum_SLT_SLTU = 2'd1;
  localparam AluCtrlEnum_BITWISE = 2'd2;
  localparam Src2CtrlEnum_RS = 2'd0;
  localparam Src2CtrlEnum_IMI = 2'd1;
  localparam Src2CtrlEnum_IMS = 2'd2;
  localparam Src2CtrlEnum_PC = 2'd3;
  localparam Src1CtrlEnum_RS = 2'd0;
  localparam Src1CtrlEnum_IMU = 2'd1;
  localparam Src1CtrlEnum_PC_INCREMENT = 2'd2;
  localparam Src1CtrlEnum_URS1 = 2'd3;

  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready;
  reg        [54:0]   _zz_IBusSimplePlugin_predictor_history_port1;
  reg        [31:0]   _zz_RegFilePlugin_regFile_port0;
  reg        [31:0]   _zz_RegFilePlugin_regFile_port1;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  wire       [0:0]    IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy;
  wire       [31:0]   _zz_execute_NEXT_PC2;
  wire       [2:0]    _zz_execute_NEXT_PC2_1;
  wire       [31:0]   _zz_execute_SHIFT_RIGHT;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_1;
  wire       [32:0]   _zz_execute_SHIFT_RIGHT_2;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_1;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_2;
  wire                _zz_decode_LEGAL_INSTRUCTION_3;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_4;
  wire       [7:0]    _zz_decode_LEGAL_INSTRUCTION_5;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_6;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_7;
  wire       [31:0]   _zz_decode_LEGAL_INSTRUCTION_8;
  wire                _zz_decode_LEGAL_INSTRUCTION_9;
  wire       [0:0]    _zz_decode_LEGAL_INSTRUCTION_10;
  wire       [1:0]    _zz_decode_LEGAL_INSTRUCTION_11;
  wire       [31:0]   _zz_IBusSimplePlugin_fetchPc_pc;
  wire       [2:0]    _zz_IBusSimplePlugin_fetchPc_pc_1;
  wire       [31:0]   _zz_IBusSimplePlugin_decodePc_pcPlus;
  wire       [2:0]    _zz_IBusSimplePlugin_decodePc_pcPlus_1;
  wire       [31:0]   _zz_IBusSimplePlugin_decompressor_decompressed_27;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_28;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_29;
  wire       [6:0]    _zz_IBusSimplePlugin_decompressor_decompressed_30;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_31;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_32;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_33;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_34;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_35;
  wire       [31:0]   _zz__zz_decode_FORMAL_PC_NEXT;
  wire       [2:0]    _zz__zz_decode_FORMAL_PC_NEXT_1;
  wire       [54:0]   _zz_IBusSimplePlugin_predictor_history_port;
  wire       [9:0]    _zz_IBusSimplePlugin_predictor_history_port_1;
  wire       [9:0]    _zz__zz_IBusSimplePlugin_predictor_buffer_line_source_1;
  wire       [9:0]    _zz_IBusSimplePlugin_predictor_buffer_hazard;
  wire       [29:0]   _zz_IBusSimplePlugin_predictor_buffer_hazard_1;
  wire       [19:0]   _zz_IBusSimplePlugin_predictor_hit;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_1;
  wire       [0:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_2;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_3;
  wire       [0:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_4;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_5;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_6;
  wire       [0:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_7;
  wire       [1:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_8;
  wire       [0:0]    _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_9;
  wire       [29:0]   _zz_IBusSimplePlugin_predictor_historyWrite_payload_address;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next_1;
  wire       [0:0]    _zz_IBusSimplePlugin_pending_next_2;
  wire       [2:0]    _zz_IBusSimplePlugin_pending_next_3;
  wire       [0:0]    _zz_IBusSimplePlugin_pending_next_4;
  wire       [2:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter;
  wire       [0:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1;
  wire       [2:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_2;
  wire       [0:0]    _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_3;
  wire       [2:0]    _zz_DBusSimplePlugin_memoryExceptionPort_payload_code;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_1;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_2;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_3;
  wire                _zz__zz_decode_BRANCH_CTRL_2_4;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_5;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_6;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_7;
  wire                _zz__zz_decode_BRANCH_CTRL_2_8;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_9;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_10;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_11;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_12;
  wire       [16:0]   _zz__zz_decode_BRANCH_CTRL_2_13;
  wire                _zz__zz_decode_BRANCH_CTRL_2_14;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_15;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_16;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_17;
  wire                _zz__zz_decode_BRANCH_CTRL_2_18;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_19;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_20;
  wire                _zz__zz_decode_BRANCH_CTRL_2_21;
  wire       [12:0]   _zz__zz_decode_BRANCH_CTRL_2_22;
  wire                _zz__zz_decode_BRANCH_CTRL_2_23;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_24;
  wire                _zz__zz_decode_BRANCH_CTRL_2_25;
  wire                _zz__zz_decode_BRANCH_CTRL_2_26;
  wire                _zz__zz_decode_BRANCH_CTRL_2_27;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_28;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_29;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_30;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_31;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_32;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_33;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_34;
  wire       [8:0]    _zz__zz_decode_BRANCH_CTRL_2_35;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_36;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_37;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_38;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_39;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_40;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_41;
  wire                _zz__zz_decode_BRANCH_CTRL_2_42;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_43;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_44;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_45;
  wire                _zz__zz_decode_BRANCH_CTRL_2_46;
  wire       [4:0]    _zz__zz_decode_BRANCH_CTRL_2_47;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_48;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_49;
  wire                _zz__zz_decode_BRANCH_CTRL_2_50;
  wire       [31:0]   _zz__zz_decode_BRANCH_CTRL_2_51;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_52;
  wire                _zz__zz_decode_BRANCH_CTRL_2_53;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_54;
  wire       [0:0]    _zz__zz_decode_BRANCH_CTRL_2_55;
  wire       [1:0]    _zz__zz_decode_BRANCH_CTRL_2_56;
  wire                _zz__zz_decode_BRANCH_CTRL_2_57;
  wire                _zz__zz_decode_BRANCH_CTRL_2_58;
  wire                _zz_RegFilePlugin_regFile_port;
  wire                _zz_decode_RegFilePlugin_rs1Data;
  wire                _zz_RegFilePlugin_regFile_port_1;
  wire                _zz_decode_RegFilePlugin_rs2Data;
  wire       [0:0]    _zz__zz_execute_REGFILE_WRITE_DATA;
  wire       [2:0]    _zz__zz_decode_SRC1_1;
  wire       [4:0]    _zz__zz_decode_SRC1_1_1;
  wire       [11:0]   _zz__zz_decode_SRC2_4;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_1;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_2;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_3;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_4;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_5;
  wire       [31:0]   _zz_execute_SrcPlugin_addSub_6;
  wire       [19:0]   _zz__zz_execute_BRANCH_SRC22;
  wire       [11:0]   _zz__zz_execute_BRANCH_SRC22_4;
  wire       [31:0]   writeBack_FORMAL_MEM_RDATA;
  wire       [31:0]   memory_MEMORY_READ_DATA;
  wire                execute_TARGET_MISSMATCH2;
  wire       [31:0]   execute_NEXT_PC2;
  wire                execute_BRANCH_DO;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [31:0]   writeBack_FORMAL_MEM_WDATA;
  wire       [31:0]   memory_FORMAL_MEM_WDATA;
  wire       [31:0]   execute_FORMAL_MEM_WDATA;
  wire       [3:0]    writeBack_FORMAL_MEM_RMASK;
  wire       [3:0]    memory_FORMAL_MEM_RMASK;
  wire       [3:0]    execute_FORMAL_MEM_RMASK;
  wire       [3:0]    writeBack_FORMAL_MEM_WMASK;
  wire       [3:0]    memory_FORMAL_MEM_WMASK;
  wire       [3:0]    execute_FORMAL_MEM_WMASK;
  wire       [31:0]   writeBack_FORMAL_MEM_ADDR;
  wire       [31:0]   memory_FORMAL_MEM_ADDR;
  wire       [31:0]   execute_FORMAL_MEM_ADDR;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire       [31:0]   decode_SRC2;
  wire       [31:0]   decode_SRC1;
  wire                decode_SRC2_FORCE_ZERO;
  wire       [31:0]   writeBack_RS2;
  wire       [31:0]   memory_RS2;
  wire       [31:0]   decode_RS2;
  wire       [31:0]   writeBack_RS1;
  wire       [31:0]   memory_RS1;
  wire       [31:0]   decode_RS1;
  wire       [1:0]    decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL;
  wire       [1:0]    _zz_decode_to_execute_BRANCH_CTRL_1;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_to_memory_SHIFT_CTRL_1;
  wire       [1:0]    decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL;
  wire       [1:0]    _zz_decode_to_execute_SHIFT_CTRL_1;
  wire       [1:0]    decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                writeBack_RS2_USE;
  wire                memory_RS2_USE;
  wire                execute_RS2_USE;
  wire                decode_MEMORY_STORE;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       [1:0]    decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL;
  wire       [1:0]    _zz_decode_to_execute_ALU_CTRL_1;
  wire                writeBack_RS1_USE;
  wire                memory_RS1_USE;
  wire                execute_RS1_USE;
  wire                decode_MEMORY_ENABLE;
  wire                execute_PREDICTION_CONTEXT_hazard;
  wire                execute_PREDICTION_CONTEXT_hit;
  wire       [19:0]   execute_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    execute_PREDICTION_CONTEXT_line_branchWish;
  wire                execute_PREDICTION_CONTEXT_line_last2Bytes;
  wire       [31:0]   execute_PREDICTION_CONTEXT_line_target;
  wire                decode_PREDICTION_CONTEXT_hazard;
  wire                decode_PREDICTION_CONTEXT_hit;
  wire       [19:0]   decode_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    decode_PREDICTION_CONTEXT_line_branchWish;
  wire                decode_PREDICTION_CONTEXT_line_last2Bytes;
  wire       [31:0]   decode_PREDICTION_CONTEXT_line_target;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   writeBack_FORMAL_INSTRUCTION;
  wire       [31:0]   memory_FORMAL_INSTRUCTION;
  wire       [31:0]   execute_FORMAL_INSTRUCTION;
  wire       [31:0]   decode_FORMAL_INSTRUCTION;
  wire                writeBack_FORMAL_HALT;
  wire                memory_FORMAL_HALT;
  wire                execute_FORMAL_HALT;
  wire                decode_FORMAL_HALT;
  wire       [31:0]   memory_NEXT_PC2;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_TARGET_MISSMATCH2;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_IS_RVC;
  wire       [31:0]   execute_BRANCH_SRC22;
  wire       [31:0]   execute_PC;
  wire       [31:0]   execute_RS1;
  wire       [1:0]    execute_BRANCH_CTRL;
  wire       [1:0]    _zz_execute_BRANCH_CTRL;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_memory_to_writeBack_REGFILE_WRITE_DATA;
  wire       [1:0]    memory_SHIFT_CTRL;
  wire       [1:0]    _zz_memory_SHIFT_CTRL;
  wire       [1:0]    execute_SHIFT_CTRL;
  wire       [1:0]    _zz_execute_SHIFT_CTRL;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_decode_SRC2;
  wire       [31:0]   _zz_decode_SRC2_1;
  wire       [1:0]    decode_SRC2_CTRL;
  wire       [1:0]    _zz_decode_SRC2_CTRL;
  wire       [31:0]   _zz_decode_SRC1;
  wire       [1:0]    decode_SRC1_CTRL;
  wire       [1:0]    _zz_decode_SRC1_CTRL;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       [1:0]    execute_ALU_CTRL;
  wire       [1:0]    _zz_execute_ALU_CTRL;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       [1:0]    execute_ALU_BITWISE_CTRL;
  wire       [1:0]    _zz_execute_ALU_BITWISE_CTRL;
  reg                 _zz_1;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_1;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_1;
  wire       [1:0]    _zz_decode_SRC2_CTRL_1;
  wire       [1:0]    _zz_decode_ALU_CTRL_1;
  wire       [1:0]    _zz_decode_SRC1_CTRL_1;
  wire                writeBack_MEMORY_ENABLE;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire       [31:0]   writeBack_MEMORY_READ_DATA;
  wire                memory_ALIGNEMENT_FAULT;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_STORE;
  wire                memory_MEMORY_ENABLE;
  wire       [31:0]   execute_SRC_ADD;
  wire       [31:0]   execute_RS2;
  wire       [31:0]   execute_INSTRUCTION;
  wire                execute_MEMORY_STORE;
  wire                execute_MEMORY_ENABLE;
  wire                execute_ALIGNEMENT_FAULT;
  wire                memory_IS_RVC;
  wire       [31:0]   memory_PC;
  wire                memory_PREDICTION_CONTEXT_hazard;
  wire                memory_PREDICTION_CONTEXT_hit;
  wire       [19:0]   memory_PREDICTION_CONTEXT_line_source;
  wire       [1:0]    memory_PREDICTION_CONTEXT_line_branchWish;
  wire                memory_PREDICTION_CONTEXT_line_last2Bytes;
  wire       [31:0]   memory_PREDICTION_CONTEXT_line_target;
  reg                 _zz_2;
  reg        [31:0]   _zz_memory_to_writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   decode_PC;
  reg        [31:0]   _zz_decode_FORMAL_PC_NEXT;
  wire       [31:0]   decode_INSTRUCTION;
  wire                decode_IS_RVC;
  reg                 _zz_when_FormalPlugin_l114;
  reg                 _zz_when_FormalPlugin_l114_1;
  reg                 _zz_when_FormalPlugin_l114_2;
  reg                 _zz_when_FormalPlugin_l114_3;
  reg        [31:0]   _zz_rvfi_rd_wdata;
  wire                _zz_rvfi_rd_addr;
  wire                _zz_rvfi_rs2_addr;
  wire       [31:0]   _zz_rvfi_rs1_addr;
  wire                _zz_rvfi_rs1_addr_1;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  wire                decode_arbitration_flushNext;
  wire                decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  wire                execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  wire                execute_arbitration_flushIt;
  wire                execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  wire                writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  wire                writeBack_arbitration_flushIt;
  wire                writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  wire                IBusSimplePlugin_fetcherHalt;
  reg                 IBusSimplePlugin_incomingInstruction;
  wire                IBusSimplePlugin_fetchPrediction_cmd_hadBranch;
  wire       [31:0]   IBusSimplePlugin_fetchPrediction_cmd_targetPc;
  wire                IBusSimplePlugin_fetchPrediction_rsp_wasRight;
  wire       [31:0]   IBusSimplePlugin_fetchPrediction_rsp_finalPc;
  wire       [31:0]   IBusSimplePlugin_fetchPrediction_rsp_sourceLastWord;
  wire                IBusSimplePlugin_pcValids_0;
  wire                IBusSimplePlugin_pcValids_1;
  wire                IBusSimplePlugin_pcValids_2;
  wire                IBusSimplePlugin_pcValids_3;
  reg                 DBusSimplePlugin_memoryExceptionPort_valid;
  reg        [3:0]    DBusSimplePlugin_memoryExceptionPort_payload_code;
  wire       [31:0]   DBusSimplePlugin_memoryExceptionPort_payload_badAddr;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  reg        [63:0]   writeBack_FormalPlugin_order;
  reg                 writeBack_FormalPlugin_haltRequest;
  wire                when_FormalPlugin_l114;
  wire                when_FormalPlugin_l115;
  wire                when_FormalPlugin_l114_1;
  wire                when_FormalPlugin_l115_1;
  wire                when_FormalPlugin_l114_2;
  wire                when_FormalPlugin_l115_2;
  wire                when_FormalPlugin_l114_3;
  wire                when_FormalPlugin_l115_3;
  reg                 writeBack_FormalPlugin_haltRequest_delay_1;
  reg                 writeBack_FormalPlugin_haltRequest_delay_2;
  reg                 writeBack_FormalPlugin_haltRequest_delay_3;
  reg                 writeBack_FormalPlugin_haltRequest_delay_4;
  reg                 writeBack_FormalPlugin_haltRequest_delay_5;
  reg                 writeBack_FormalPlugin_haltFired;
  wire                when_FormalPlugin_l127;
  wire                when_HaltOnExceptionPlugin_l34;
  wire                when_HaltOnExceptionPlugin_l34_1;
  wire                IBusSimplePlugin_externalFlush;
  wire                IBusSimplePlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusSimplePlugin_jump_pcLoad_payload;
  wire                IBusSimplePlugin_fetchPc_output_valid;
  wire                IBusSimplePlugin_fetchPc_output_ready;
  wire       [31:0]   IBusSimplePlugin_fetchPc_output_payload;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusSimplePlugin_fetchPc_correction;
  reg                 IBusSimplePlugin_fetchPc_correctionReg;
  wire                IBusSimplePlugin_fetchPc_output_fire;
  wire                IBusSimplePlugin_fetchPc_corrected;
  wire                IBusSimplePlugin_fetchPc_pcRegPropagate;
  reg                 IBusSimplePlugin_fetchPc_booted;
  reg                 IBusSimplePlugin_fetchPc_inc;
  wire                when_Fetcher_l131;
  wire                IBusSimplePlugin_fetchPc_output_fire_1;
  wire                when_Fetcher_l131_1;
  reg        [31:0]   IBusSimplePlugin_fetchPc_pc;
  wire                IBusSimplePlugin_fetchPc_predictionPcLoad_valid;
  wire       [31:0]   IBusSimplePlugin_fetchPc_predictionPcLoad_payload;
  wire                IBusSimplePlugin_fetchPc_redo_valid;
  reg        [31:0]   IBusSimplePlugin_fetchPc_redo_payload;
  reg                 IBusSimplePlugin_fetchPc_flushed;
  wire                when_Fetcher_l158;
  reg                 IBusSimplePlugin_decodePc_flushed;
  reg        [31:0]   IBusSimplePlugin_decodePc_pcReg /* verilator public */ ;
  wire       [31:0]   IBusSimplePlugin_decodePc_pcPlus;
  wire                IBusSimplePlugin_decodePc_injectedDecode;
  wire                when_Fetcher_l180;
  wire                IBusSimplePlugin_decodePc_predictionPcLoad_valid;
  wire       [31:0]   IBusSimplePlugin_decodePc_predictionPcLoad_payload;
  wire                when_Fetcher_l192;
  reg                 IBusSimplePlugin_iBusRsp_redoFetch;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusSimplePlugin_iBusRsp_stages_0_halt;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_1_output_payload;
  wire                IBusSimplePlugin_iBusRsp_stages_1_halt;
  wire                _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  wire                _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  wire                IBusSimplePlugin_iBusRsp_flush;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  wire                IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  reg                 _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  reg        [31:0]   _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  reg                 IBusSimplePlugin_iBusRsp_readyForError;
  wire                IBusSimplePlugin_iBusRsp_output_valid;
  wire                IBusSimplePlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_pc;
  wire                IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusSimplePlugin_iBusRsp_output_payload_isRvc;
  wire                IBusSimplePlugin_decompressor_input_valid;
  reg                 IBusSimplePlugin_decompressor_input_ready;
  wire       [31:0]   IBusSimplePlugin_decompressor_input_payload_pc;
  wire                IBusSimplePlugin_decompressor_input_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_decompressor_input_payload_rsp_inst;
  wire                IBusSimplePlugin_decompressor_input_payload_isRvc;
  wire                IBusSimplePlugin_decompressor_output_valid;
  wire                IBusSimplePlugin_decompressor_output_ready;
  wire       [31:0]   IBusSimplePlugin_decompressor_output_payload_pc;
  wire                IBusSimplePlugin_decompressor_output_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_decompressor_output_payload_rsp_inst;
  wire                IBusSimplePlugin_decompressor_output_payload_isRvc;
  wire                IBusSimplePlugin_decompressor_flushNext;
  wire                IBusSimplePlugin_decompressor_consumeCurrent;
  reg                 IBusSimplePlugin_decompressor_bufferValid;
  reg        [15:0]   IBusSimplePlugin_decompressor_bufferData;
  wire                IBusSimplePlugin_decompressor_isInputLowRvc;
  wire                IBusSimplePlugin_decompressor_isInputHighRvc;
  reg                 IBusSimplePlugin_decompressor_throw2BytesReg;
  wire                IBusSimplePlugin_decompressor_throw2Bytes;
  wire                IBusSimplePlugin_decompressor_unaligned;
  reg                 IBusSimplePlugin_decompressor_bufferValidLatch;
  reg                 IBusSimplePlugin_decompressor_throw2BytesLatch;
  wire                IBusSimplePlugin_decompressor_bufferValidPatched;
  wire                IBusSimplePlugin_decompressor_throw2BytesPatched;
  wire       [31:0]   IBusSimplePlugin_decompressor_raw;
  wire                IBusSimplePlugin_decompressor_isRvc;
  wire       [15:0]   _zz_IBusSimplePlugin_decompressor_decompressed;
  reg        [31:0]   IBusSimplePlugin_decompressor_decompressed;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_1;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_2;
  wire       [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_3;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_4;
  reg        [11:0]   _zz_IBusSimplePlugin_decompressor_decompressed_5;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_6;
  reg        [9:0]    _zz_IBusSimplePlugin_decompressor_decompressed_7;
  wire       [20:0]   _zz_IBusSimplePlugin_decompressor_decompressed_8;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_9;
  reg        [14:0]   _zz_IBusSimplePlugin_decompressor_decompressed_10;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_11;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_12;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_13;
  reg        [9:0]    _zz_IBusSimplePlugin_decompressor_decompressed_14;
  wire       [20:0]   _zz_IBusSimplePlugin_decompressor_decompressed_15;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_16;
  reg        [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_17;
  wire       [12:0]   _zz_IBusSimplePlugin_decompressor_decompressed_18;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_19;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_20;
  wire       [4:0]    _zz_IBusSimplePlugin_decompressor_decompressed_21;
  wire       [4:0]    switch_Misc_l44;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_22;
  wire       [1:0]    switch_Misc_l211;
  wire       [1:0]    switch_Misc_l211_1;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_23;
  reg        [2:0]    _zz_IBusSimplePlugin_decompressor_decompressed_24;
  wire                _zz_IBusSimplePlugin_decompressor_decompressed_25;
  reg        [6:0]    _zz_IBusSimplePlugin_decompressor_decompressed_26;
  wire                IBusSimplePlugin_decompressor_output_fire;
  wire                IBusSimplePlugin_decompressor_bufferFill;
  wire                when_Fetcher_l283;
  wire                when_Fetcher_l286;
  wire                when_Fetcher_l291;
  wire                IBusSimplePlugin_injector_decodeInput_valid;
  wire                IBusSimplePlugin_injector_decodeInput_ready;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_pc;
  wire                IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  wire                IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_valid;
  reg        [31:0]   _zz_IBusSimplePlugin_injector_decodeInput_payload_pc;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  reg        [31:0]   _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  reg                 _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_0;
  wire                when_Fetcher_l329;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_1;
  wire                when_Fetcher_l329_1;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_2;
  wire                when_Fetcher_l329_2;
  reg                 IBusSimplePlugin_injector_nextPcCalc_valids_3;
  wire                when_Fetcher_l329_3;
  reg        [31:0]   IBusSimplePlugin_injector_formal_rawInDecode;
  wire                IBusSimplePlugin_predictor_historyWriteDelayPatched_valid;
  wire       [9:0]    IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_address;
  wire       [19:0]   IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_source;
  wire       [1:0]    IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_branchWish;
  wire                IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_target;
  reg                 IBusSimplePlugin_predictor_historyWrite_valid;
  reg        [9:0]    IBusSimplePlugin_predictor_historyWrite_payload_address;
  wire       [19:0]   IBusSimplePlugin_predictor_historyWrite_payload_data_source;
  reg        [1:0]    IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish;
  wire                IBusSimplePlugin_predictor_historyWrite_payload_data_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_historyWrite_payload_data_target;
  reg                 IBusSimplePlugin_predictor_writeLast_valid;
  reg        [9:0]    IBusSimplePlugin_predictor_writeLast_payload_address;
  reg        [19:0]   IBusSimplePlugin_predictor_writeLast_payload_data_source;
  reg        [1:0]    IBusSimplePlugin_predictor_writeLast_payload_data_branchWish;
  reg                 IBusSimplePlugin_predictor_writeLast_payload_data_last2Bytes;
  reg        [31:0]   IBusSimplePlugin_predictor_writeLast_payload_data_target;
  wire       [29:0]   _zz_IBusSimplePlugin_predictor_buffer_line_source;
  wire       [19:0]   IBusSimplePlugin_predictor_buffer_line_source;
  wire       [1:0]    IBusSimplePlugin_predictor_buffer_line_branchWish;
  wire                IBusSimplePlugin_predictor_buffer_line_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_buffer_line_target;
  wire       [54:0]   _zz_IBusSimplePlugin_predictor_buffer_line_source_1;
  reg                 IBusSimplePlugin_predictor_buffer_pcCorrected;
  wire                IBusSimplePlugin_predictor_buffer_hazard;
  reg        [19:0]   IBusSimplePlugin_predictor_line_source;
  reg        [1:0]    IBusSimplePlugin_predictor_line_branchWish;
  reg                 IBusSimplePlugin_predictor_line_last2Bytes;
  reg        [31:0]   IBusSimplePlugin_predictor_line_target;
  reg                 IBusSimplePlugin_predictor_buffer_hazard_regNextWhen;
  wire                IBusSimplePlugin_predictor_hazard;
  reg                 IBusSimplePlugin_predictor_hit;
  wire                when_Fetcher_l550;
  wire                IBusSimplePlugin_predictor_fetchContext_hazard;
  wire                IBusSimplePlugin_predictor_fetchContext_hit;
  wire       [19:0]   IBusSimplePlugin_predictor_fetchContext_line_source;
  wire       [1:0]    IBusSimplePlugin_predictor_fetchContext_line_branchWish;
  wire                IBusSimplePlugin_predictor_fetchContext_line_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_fetchContext_line_target;
  wire                IBusSimplePlugin_predictor_iBusRspContextOutput_hazard;
  reg                 IBusSimplePlugin_predictor_iBusRspContextOutput_hit;
  wire       [19:0]   IBusSimplePlugin_predictor_iBusRspContextOutput_line_source;
  wire       [1:0]    IBusSimplePlugin_predictor_iBusRspContextOutput_line_branchWish;
  wire                IBusSimplePlugin_predictor_iBusRspContextOutput_line_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_iBusRspContextOutput_line_target;
  reg                 IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hazard;
  reg                 IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hit;
  reg        [19:0]   IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_source;
  reg        [1:0]    IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_branchWish;
  reg                 IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_last2Bytes;
  reg        [31:0]   IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_target;
  wire                IBusSimplePlugin_predictor_injectorContext_hazard;
  wire                IBusSimplePlugin_predictor_injectorContext_hit;
  wire       [19:0]   IBusSimplePlugin_predictor_injectorContext_line_source;
  wire       [1:0]    IBusSimplePlugin_predictor_injectorContext_line_branchWish;
  wire                IBusSimplePlugin_predictor_injectorContext_line_last2Bytes;
  wire       [31:0]   IBusSimplePlugin_predictor_injectorContext_line_target;
  wire                when_Fetcher_l596;
  wire                IBusSimplePlugin_predictor_compressor_predictionBranch;
  wire                IBusSimplePlugin_predictor_compressor_unalignedWordIssue;
  wire                when_Fetcher_l611;
  wire                IBusSimplePlugin_injector_decodeInput_fire;
  wire                IBusSimplePlugin_decompressor_output_fire_1;
  wire                when_Fetcher_l617;
  wire                IBusSimplePlugin_cmd_valid;
  wire                IBusSimplePlugin_cmd_ready;
  wire       [31:0]   IBusSimplePlugin_cmd_payload_pc;
  wire                IBusSimplePlugin_pending_inc;
  wire                IBusSimplePlugin_pending_dec;
  reg        [2:0]    IBusSimplePlugin_pending_value;
  wire       [2:0]    IBusSimplePlugin_pending_next;
  wire                IBusSimplePlugin_cmdFork_canEmit;
  wire                when_IBusSimplePlugin_l305;
  wire                IBusSimplePlugin_cmd_fire;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_valid;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_ready;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  reg        [2:0]    IBusSimplePlugin_rspJoin_rspBuffer_discardCounter;
  wire                iBus_rsp_toStream_valid;
  wire                iBus_rsp_toStream_ready;
  wire                iBus_rsp_toStream_payload_error;
  wire       [31:0]   iBus_rsp_toStream_payload_inst;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_flush;
  wire                IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_pc;
  reg                 IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  wire                when_IBusSimplePlugin_l376;
  wire                IBusSimplePlugin_rspJoin_join_valid;
  wire                IBusSimplePlugin_rspJoin_join_ready;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_pc;
  wire                IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  wire       [31:0]   IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  wire                IBusSimplePlugin_rspJoin_join_payload_isRvc;
  wire                IBusSimplePlugin_rspJoin_exceptionDetected;
  wire                IBusSimplePlugin_rspJoin_join_fire;
  wire                IBusSimplePlugin_rspJoin_join_fire_1;
  wire                _zz_IBusSimplePlugin_iBusRsp_output_valid;
  wire                _zz_dBus_cmd_valid;
  reg                 execute_DBusSimplePlugin_skipCmd;
  reg        [31:0]   _zz_dBus_cmd_payload_data;
  wire                when_DBusSimplePlugin_l428;
  reg        [3:0]    _zz_execute_DBusSimplePlugin_formalMask;
  wire       [3:0]    execute_DBusSimplePlugin_formalMask;
  wire                when_DBusSimplePlugin_l482;
  wire                when_DBusSimplePlugin_l515;
  reg        [31:0]   writeBack_DBusSimplePlugin_rspShifted;
  wire       [1:0]    switch_Misc_l211_2;
  wire                _zz_writeBack_DBusSimplePlugin_rspFormated;
  reg        [31:0]   _zz_writeBack_DBusSimplePlugin_rspFormated_1;
  wire                _zz_writeBack_DBusSimplePlugin_rspFormated_2;
  reg        [31:0]   _zz_writeBack_DBusSimplePlugin_rspFormated_3;
  reg        [31:0]   writeBack_DBusSimplePlugin_rspFormated;
  wire                when_DBusSimplePlugin_l558;
  wire       [22:0]   _zz_decode_BRANCH_CTRL_2;
  wire                _zz_decode_BRANCH_CTRL_3;
  wire                _zz_decode_BRANCH_CTRL_4;
  wire                _zz_decode_BRANCH_CTRL_5;
  wire                _zz_decode_BRANCH_CTRL_6;
  wire       [1:0]    _zz_decode_SRC1_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_CTRL_2;
  wire       [1:0]    _zz_decode_SRC2_CTRL_2;
  wire       [1:0]    _zz_decode_ALU_BITWISE_CTRL_2;
  wire       [1:0]    _zz_decode_SHIFT_CTRL_2;
  wire       [1:0]    _zz_decode_BRANCH_CTRL_7;
  wire                when_RegFilePlugin_l63;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_3;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_execute_REGFILE_WRITE_DATA;
  reg        [31:0]   _zz_decode_SRC1_1;
  wire                _zz_decode_SRC2_2;
  reg        [19:0]   _zz_decode_SRC2_3;
  wire                _zz_decode_SRC2_4;
  reg        [19:0]   _zz_decode_SRC2_5;
  reg        [31:0]   _zz_decode_SRC2_6;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_execute_FullBarrelShifterPlugin_reversed;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1;
  reg                 HazardSimplePlugin_src0Hazard;
  reg                 HazardSimplePlugin_src1Hazard;
  wire                HazardSimplePlugin_writeBackWrites_valid;
  wire       [4:0]    HazardSimplePlugin_writeBackWrites_payload_address;
  wire       [31:0]   HazardSimplePlugin_writeBackWrites_payload_data;
  reg                 HazardSimplePlugin_writeBackBuffer_valid;
  reg        [4:0]    HazardSimplePlugin_writeBackBuffer_payload_address;
  reg        [31:0]   HazardSimplePlugin_writeBackBuffer_payload_data;
  wire                HazardSimplePlugin_addr0Match;
  wire                HazardSimplePlugin_addr1Match;
  wire                when_HazardSimplePlugin_l59;
  wire                when_HazardSimplePlugin_l62;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire                when_HazardSimplePlugin_l59_1;
  wire                when_HazardSimplePlugin_l62_1;
  wire                when_HazardSimplePlugin_l57_1;
  wire                when_HazardSimplePlugin_l58_1;
  wire                when_HazardSimplePlugin_l59_2;
  wire                when_HazardSimplePlugin_l62_2;
  wire                when_HazardSimplePlugin_l57_2;
  wire                when_HazardSimplePlugin_l58_2;
  wire                when_HazardSimplePlugin_l105;
  wire                when_HazardSimplePlugin_l108;
  wire                when_HazardSimplePlugin_l113;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    switch_Misc_l211_3;
  reg                 _zz_execute_BRANCH_DO;
  reg                 _zz_execute_BRANCH_DO_1;
  wire       [31:0]   execute_BranchPlugin_branch_src1;
  wire                _zz_execute_BRANCH_SRC22;
  reg        [10:0]   _zz_execute_BRANCH_SRC22_1;
  wire                _zz_execute_BRANCH_SRC22_2;
  reg        [19:0]   _zz_execute_BRANCH_SRC22_3;
  wire                _zz_execute_BRANCH_SRC22_4;
  reg        [18:0]   _zz_execute_BRANCH_SRC22_5;
  reg        [31:0]   _zz_execute_BRANCH_SRC22_6;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  wire                memory_BranchPlugin_predictionMissmatch;
  wire                when_Pipeline_l124;
  reg                 decode_to_execute_FORMAL_HALT;
  wire                when_Pipeline_l124_1;
  reg                 execute_to_memory_FORMAL_HALT;
  wire                when_Pipeline_l124_2;
  reg                 memory_to_writeBack_FORMAL_HALT;
  wire                when_Pipeline_l124_3;
  reg        [31:0]   decode_to_execute_PC;
  wire                when_Pipeline_l124_4;
  reg        [31:0]   execute_to_memory_PC;
  wire                when_Pipeline_l124_5;
  reg        [31:0]   memory_to_writeBack_PC;
  wire                when_Pipeline_l124_6;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  wire                when_Pipeline_l124_7;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  wire                when_Pipeline_l124_8;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  wire                when_Pipeline_l124_9;
  reg                 decode_to_execute_IS_RVC;
  wire                when_Pipeline_l124_10;
  reg                 execute_to_memory_IS_RVC;
  wire                when_Pipeline_l124_11;
  reg        [31:0]   decode_to_execute_FORMAL_INSTRUCTION;
  wire                when_Pipeline_l124_12;
  reg        [31:0]   execute_to_memory_FORMAL_INSTRUCTION;
  wire                when_Pipeline_l124_13;
  reg        [31:0]   memory_to_writeBack_FORMAL_INSTRUCTION;
  wire                when_Pipeline_l124_14;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_15;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_16;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  wire                when_Pipeline_l124_17;
  reg                 decode_to_execute_PREDICTION_CONTEXT_hazard;
  reg                 decode_to_execute_PREDICTION_CONTEXT_hit;
  reg        [19:0]   decode_to_execute_PREDICTION_CONTEXT_line_source;
  reg        [1:0]    decode_to_execute_PREDICTION_CONTEXT_line_branchWish;
  reg                 decode_to_execute_PREDICTION_CONTEXT_line_last2Bytes;
  reg        [31:0]   decode_to_execute_PREDICTION_CONTEXT_line_target;
  wire                when_Pipeline_l124_18;
  reg                 execute_to_memory_PREDICTION_CONTEXT_hazard;
  reg                 execute_to_memory_PREDICTION_CONTEXT_hit;
  reg        [19:0]   execute_to_memory_PREDICTION_CONTEXT_line_source;
  reg        [1:0]    execute_to_memory_PREDICTION_CONTEXT_line_branchWish;
  reg                 execute_to_memory_PREDICTION_CONTEXT_line_last2Bytes;
  reg        [31:0]   execute_to_memory_PREDICTION_CONTEXT_line_target;
  wire                when_Pipeline_l124_19;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  wire                when_Pipeline_l124_20;
  reg                 decode_to_execute_MEMORY_ENABLE;
  wire                when_Pipeline_l124_21;
  reg                 execute_to_memory_MEMORY_ENABLE;
  wire                when_Pipeline_l124_22;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  wire                when_Pipeline_l124_23;
  reg                 decode_to_execute_RS1_USE;
  wire                when_Pipeline_l124_24;
  reg                 execute_to_memory_RS1_USE;
  wire                when_Pipeline_l124_25;
  reg                 memory_to_writeBack_RS1_USE;
  wire                when_Pipeline_l124_26;
  reg        [1:0]    decode_to_execute_ALU_CTRL;
  wire                when_Pipeline_l124_27;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_28;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_29;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  wire                when_Pipeline_l124_30;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  wire                when_Pipeline_l124_31;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_32;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  wire                when_Pipeline_l124_33;
  reg                 decode_to_execute_MEMORY_STORE;
  wire                when_Pipeline_l124_34;
  reg                 execute_to_memory_MEMORY_STORE;
  wire                when_Pipeline_l124_35;
  reg                 decode_to_execute_RS2_USE;
  wire                when_Pipeline_l124_36;
  reg                 execute_to_memory_RS2_USE;
  wire                when_Pipeline_l124_37;
  reg                 memory_to_writeBack_RS2_USE;
  wire                when_Pipeline_l124_38;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  wire                when_Pipeline_l124_39;
  reg        [1:0]    decode_to_execute_ALU_BITWISE_CTRL;
  wire                when_Pipeline_l124_40;
  reg        [1:0]    decode_to_execute_SHIFT_CTRL;
  wire                when_Pipeline_l124_41;
  reg        [1:0]    execute_to_memory_SHIFT_CTRL;
  wire                when_Pipeline_l124_42;
  reg        [1:0]    decode_to_execute_BRANCH_CTRL;
  wire                when_Pipeline_l124_43;
  reg        [31:0]   decode_to_execute_RS1;
  wire                when_Pipeline_l124_44;
  reg        [31:0]   execute_to_memory_RS1;
  wire                when_Pipeline_l124_45;
  reg        [31:0]   memory_to_writeBack_RS1;
  wire                when_Pipeline_l124_46;
  reg        [31:0]   decode_to_execute_RS2;
  wire                when_Pipeline_l124_47;
  reg        [31:0]   execute_to_memory_RS2;
  wire                when_Pipeline_l124_48;
  reg        [31:0]   memory_to_writeBack_RS2;
  wire                when_Pipeline_l124_49;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  wire                when_Pipeline_l124_50;
  reg        [31:0]   decode_to_execute_SRC1;
  wire                when_Pipeline_l124_51;
  reg        [31:0]   decode_to_execute_SRC2;
  wire                when_Pipeline_l124_52;
  reg                 execute_to_memory_ALIGNEMENT_FAULT;
  wire                when_Pipeline_l124_53;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  wire                when_Pipeline_l124_54;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  wire                when_Pipeline_l124_55;
  reg        [31:0]   execute_to_memory_FORMAL_MEM_ADDR;
  wire                when_Pipeline_l124_56;
  reg        [31:0]   memory_to_writeBack_FORMAL_MEM_ADDR;
  wire                when_Pipeline_l124_57;
  reg        [3:0]    execute_to_memory_FORMAL_MEM_WMASK;
  wire                when_Pipeline_l124_58;
  reg        [3:0]    memory_to_writeBack_FORMAL_MEM_WMASK;
  wire                when_Pipeline_l124_59;
  reg        [3:0]    execute_to_memory_FORMAL_MEM_RMASK;
  wire                when_Pipeline_l124_60;
  reg        [3:0]    memory_to_writeBack_FORMAL_MEM_RMASK;
  wire                when_Pipeline_l124_61;
  reg        [31:0]   execute_to_memory_FORMAL_MEM_WDATA;
  wire                when_Pipeline_l124_62;
  reg        [31:0]   memory_to_writeBack_FORMAL_MEM_WDATA;
  wire                when_Pipeline_l124_63;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_64;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  wire                when_Pipeline_l124_65;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  wire                when_Pipeline_l124_66;
  reg                 execute_to_memory_BRANCH_DO;
  wire                when_Pipeline_l124_67;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  wire                when_Pipeline_l124_68;
  reg        [31:0]   execute_to_memory_NEXT_PC2;
  wire                when_Pipeline_l124_69;
  reg                 execute_to_memory_TARGET_MISSMATCH2;
  wire                when_Pipeline_l124_70;
  reg        [31:0]   memory_to_writeBack_MEMORY_READ_DATA;
  wire                when_Pipeline_l151;
  wire                when_Pipeline_l154;
  wire                when_Pipeline_l151_1;
  wire                when_Pipeline_l154_1;
  wire                when_Pipeline_l151_2;
  wire                when_Pipeline_l154_2;
  `ifndef SYNTHESIS
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_string;
  reg [31:0] _zz_decode_to_execute_BRANCH_CTRL_1_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_to_memory_SHIFT_CTRL_1_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] _zz_decode_to_execute_SHIFT_CTRL_1_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_string;
  reg [63:0] _zz_decode_to_execute_ALU_CTRL_1_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_execute_BRANCH_CTRL_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_memory_SHIFT_CTRL_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_execute_SHIFT_CTRL_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_decode_SRC2_CTRL_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_decode_SRC1_CTRL_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_execute_ALU_CTRL_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_execute_ALU_BITWISE_CTRL_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_1_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_1_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_1_string;
  reg [23:0] _zz_decode_SRC2_CTRL_1_string;
  reg [63:0] _zz_decode_ALU_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_1_string;
  reg [95:0] _zz_decode_SRC1_CTRL_2_string;
  reg [63:0] _zz_decode_ALU_CTRL_2_string;
  reg [23:0] _zz_decode_SRC2_CTRL_2_string;
  reg [39:0] _zz_decode_ALU_BITWISE_CTRL_2_string;
  reg [71:0] _zz_decode_SHIFT_CTRL_2_string;
  reg [31:0] _zz_decode_BRANCH_CTRL_7_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif

  reg [54:0] IBusSimplePlugin_predictor_history [0:1023];
  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_execute_NEXT_PC2_1 = (execute_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_execute_NEXT_PC2 = {29'd0, _zz_execute_NEXT_PC2_1};
  assign _zz_execute_SHIFT_RIGHT_1 = ($signed(_zz_execute_SHIFT_RIGHT_2) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT_1[31 : 0];
  assign _zz_execute_SHIFT_RIGHT_2 = {((execute_SHIFT_CTRL == ShiftCtrlEnum_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_IBusSimplePlugin_fetchPc_pc_1 = {IBusSimplePlugin_fetchPc_inc,2'b00};
  assign _zz_IBusSimplePlugin_fetchPc_pc = {29'd0, _zz_IBusSimplePlugin_fetchPc_pc_1};
  assign _zz_IBusSimplePlugin_decodePc_pcPlus_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz_IBusSimplePlugin_decodePc_pcPlus = {29'd0, _zz_IBusSimplePlugin_decodePc_pcPlus_1};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_27 = {{_zz_IBusSimplePlugin_decompressor_decompressed_10,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},12'h0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_34 = {{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[8 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_35 = {{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[8 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 9]},2'b00};
  assign _zz__zz_decode_FORMAL_PC_NEXT_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz__zz_decode_FORMAL_PC_NEXT = {29'd0, _zz__zz_decode_FORMAL_PC_NEXT_1};
  assign _zz__zz_IBusSimplePlugin_predictor_buffer_line_source_1 = _zz_IBusSimplePlugin_predictor_buffer_line_source[9:0];
  assign _zz_IBusSimplePlugin_predictor_buffer_hazard_1 = (IBusSimplePlugin_iBusRsp_stages_1_input_payload >>> 2);
  assign _zz_IBusSimplePlugin_predictor_buffer_hazard = _zz_IBusSimplePlugin_predictor_buffer_hazard_1[9:0];
  assign _zz_IBusSimplePlugin_predictor_hit = (IBusSimplePlugin_iBusRsp_stages_1_input_payload >>> 12);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish = (memory_PREDICTION_CONTEXT_line_branchWish + _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_1);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_2 = (memory_PREDICTION_CONTEXT_line_branchWish == 2'b10);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_1 = {1'd0, _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_2};
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_4 = (memory_PREDICTION_CONTEXT_line_branchWish == 2'b01);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_3 = {1'd0, _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_4};
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_5 = (memory_PREDICTION_CONTEXT_line_branchWish - _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_6);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_7 = memory_PREDICTION_CONTEXT_line_branchWish[1];
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_6 = {1'd0, _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_7};
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_9 = (! memory_PREDICTION_CONTEXT_line_branchWish[1]);
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_8 = {1'd0, _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_9};
  assign _zz_IBusSimplePlugin_predictor_historyWrite_payload_address = (IBusSimplePlugin_iBusRsp_stages_1_input_payload >>> 2);
  assign _zz_IBusSimplePlugin_pending_next = (IBusSimplePlugin_pending_value + _zz_IBusSimplePlugin_pending_next_1);
  assign _zz_IBusSimplePlugin_pending_next_2 = IBusSimplePlugin_pending_inc;
  assign _zz_IBusSimplePlugin_pending_next_1 = {2'd0, _zz_IBusSimplePlugin_pending_next_2};
  assign _zz_IBusSimplePlugin_pending_next_4 = IBusSimplePlugin_pending_dec;
  assign _zz_IBusSimplePlugin_pending_next_3 = {2'd0, _zz_IBusSimplePlugin_pending_next_4};
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1 = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000));
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter = {2'd0, _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_1};
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_3 = IBusSimplePlugin_pending_dec;
  assign _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_2 = {2'd0, _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_3};
  assign _zz_DBusSimplePlugin_memoryExceptionPort_payload_code = (memory_MEMORY_STORE ? 3'b110 : 3'b100);
  assign _zz__zz_execute_REGFILE_WRITE_DATA = execute_SRC_LESS;
  assign _zz__zz_decode_SRC1_1 = (decode_IS_RVC ? 3'b010 : 3'b100);
  assign _zz__zz_decode_SRC1_1_1 = decode_INSTRUCTION[19 : 15];
  assign _zz__zz_decode_SRC2_4 = {decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]};
  assign _zz_execute_SrcPlugin_addSub = ($signed(_zz_execute_SrcPlugin_addSub_1) + $signed(_zz_execute_SrcPlugin_addSub_4));
  assign _zz_execute_SrcPlugin_addSub_1 = ($signed(_zz_execute_SrcPlugin_addSub_2) + $signed(_zz_execute_SrcPlugin_addSub_3));
  assign _zz_execute_SrcPlugin_addSub_2 = execute_SRC1;
  assign _zz_execute_SrcPlugin_addSub_3 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_execute_SrcPlugin_addSub_4 = (execute_SRC_USE_SUB_LESS ? _zz_execute_SrcPlugin_addSub_5 : _zz_execute_SrcPlugin_addSub_6);
  assign _zz_execute_SrcPlugin_addSub_5 = 32'h00000001;
  assign _zz_execute_SrcPlugin_addSub_6 = 32'h0;
  assign _zz__zz_execute_BRANCH_SRC22 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz__zz_execute_BRANCH_SRC22_4 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_IBusSimplePlugin_predictor_history_port = {IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_target,{IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_last2Bytes,{IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_branchWish,IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_source}}};
  assign _zz_decode_RegFilePlugin_rs1Data = 1'b1;
  assign _zz_decode_RegFilePlugin_rs2Data = 1'b1;
  assign _zz_decode_LEGAL_INSTRUCTION = 32'h0000407f;
  assign _zz_decode_LEGAL_INSTRUCTION_1 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_decode_LEGAL_INSTRUCTION_2 = 32'h00002013;
  assign _zz_decode_LEGAL_INSTRUCTION_3 = ((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023);
  assign _zz_decode_LEGAL_INSTRUCTION_4 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003);
  assign _zz_decode_LEGAL_INSTRUCTION_5 = {((decode_INSTRUCTION & 32'h0000505f) == 32'h00000003),{((decode_INSTRUCTION & 32'h0000707b) == 32'h00000063),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION_6) == 32'h0000000f),{(_zz_decode_LEGAL_INSTRUCTION_7 == _zz_decode_LEGAL_INSTRUCTION_8),{_zz_decode_LEGAL_INSTRUCTION_9,{_zz_decode_LEGAL_INSTRUCTION_10,_zz_decode_LEGAL_INSTRUCTION_11}}}}}};
  assign _zz_decode_LEGAL_INSTRUCTION_6 = 32'h0000607f;
  assign _zz_decode_LEGAL_INSTRUCTION_7 = (decode_INSTRUCTION & 32'hfe00007f);
  assign _zz_decode_LEGAL_INSTRUCTION_8 = 32'h00000033;
  assign _zz_decode_LEGAL_INSTRUCTION_9 = ((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013);
  assign _zz_decode_LEGAL_INSTRUCTION_10 = ((decode_INSTRUCTION & 32'hfc00307f) == 32'h00001013);
  assign _zz_decode_LEGAL_INSTRUCTION_11 = {((decode_INSTRUCTION & 32'hbe00707f) == 32'h00005033),((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033)};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_28 = (_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b01);
  assign _zz_IBusSimplePlugin_decompressor_decompressed_29 = ((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b11) && (_zz_IBusSimplePlugin_decompressor_decompressed[6 : 5] == 2'b00));
  assign _zz_IBusSimplePlugin_decompressor_decompressed_30 = 7'h0;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_31 = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_32 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  assign _zz_IBusSimplePlugin_decompressor_decompressed_33 = _zz_IBusSimplePlugin_decompressor_decompressed[11 : 7];
  assign _zz__zz_decode_BRANCH_CTRL_2 = (decode_INSTRUCTION & 32'h0000001c);
  assign _zz__zz_decode_BRANCH_CTRL_2_1 = 32'h00000004;
  assign _zz__zz_decode_BRANCH_CTRL_2_2 = (decode_INSTRUCTION & 32'h00000048);
  assign _zz__zz_decode_BRANCH_CTRL_2_3 = 32'h00000040;
  assign _zz__zz_decode_BRANCH_CTRL_2_4 = ((decode_INSTRUCTION & 32'h00007014) == 32'h00005010);
  assign _zz__zz_decode_BRANCH_CTRL_2_5 = {((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_6) == 32'h40001010),((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_7) == 32'h00001010)};
  assign _zz__zz_decode_BRANCH_CTRL_2_8 = (|((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_9) == 32'h00000024));
  assign _zz__zz_decode_BRANCH_CTRL_2_10 = (|(_zz__zz_decode_BRANCH_CTRL_2_11 == _zz__zz_decode_BRANCH_CTRL_2_12));
  assign _zz__zz_decode_BRANCH_CTRL_2_13 = {(|_zz__zz_decode_BRANCH_CTRL_2_14),{(|_zz__zz_decode_BRANCH_CTRL_2_15),{_zz__zz_decode_BRANCH_CTRL_2_18,{_zz__zz_decode_BRANCH_CTRL_2_20,_zz__zz_decode_BRANCH_CTRL_2_22}}}};
  assign _zz__zz_decode_BRANCH_CTRL_2_6 = 32'h40003014;
  assign _zz__zz_decode_BRANCH_CTRL_2_7 = 32'h00007014;
  assign _zz__zz_decode_BRANCH_CTRL_2_9 = 32'h00000064;
  assign _zz__zz_decode_BRANCH_CTRL_2_11 = (decode_INSTRUCTION & 32'h00001000);
  assign _zz__zz_decode_BRANCH_CTRL_2_12 = 32'h00001000;
  assign _zz__zz_decode_BRANCH_CTRL_2_14 = ((decode_INSTRUCTION & 32'h00003000) == 32'h00002000);
  assign _zz__zz_decode_BRANCH_CTRL_2_15 = {((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_16) == 32'h00002000),((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_17) == 32'h00001000)};
  assign _zz__zz_decode_BRANCH_CTRL_2_18 = (|((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_19) == 32'h00000020));
  assign _zz__zz_decode_BRANCH_CTRL_2_20 = (|{_zz__zz_decode_BRANCH_CTRL_2_21,_zz_decode_BRANCH_CTRL_3});
  assign _zz__zz_decode_BRANCH_CTRL_2_22 = {(|_zz__zz_decode_BRANCH_CTRL_2_23),{(|_zz__zz_decode_BRANCH_CTRL_2_24),{_zz__zz_decode_BRANCH_CTRL_2_25,{_zz__zz_decode_BRANCH_CTRL_2_28,_zz__zz_decode_BRANCH_CTRL_2_35}}}};
  assign _zz__zz_decode_BRANCH_CTRL_2_16 = 32'h00002010;
  assign _zz__zz_decode_BRANCH_CTRL_2_17 = 32'h00005000;
  assign _zz__zz_decode_BRANCH_CTRL_2_19 = 32'h00000024;
  assign _zz__zz_decode_BRANCH_CTRL_2_21 = ((decode_INSTRUCTION & 32'h00000040) == 32'h00000040);
  assign _zz__zz_decode_BRANCH_CTRL_2_23 = ((decode_INSTRUCTION & 32'h00000020) == 32'h00000020);
  assign _zz__zz_decode_BRANCH_CTRL_2_24 = _zz_decode_BRANCH_CTRL_6;
  assign _zz__zz_decode_BRANCH_CTRL_2_25 = (|{_zz_decode_BRANCH_CTRL_4,{_zz__zz_decode_BRANCH_CTRL_2_26,_zz__zz_decode_BRANCH_CTRL_2_27}});
  assign _zz__zz_decode_BRANCH_CTRL_2_28 = (|{_zz_decode_BRANCH_CTRL_6,{_zz__zz_decode_BRANCH_CTRL_2_29,_zz__zz_decode_BRANCH_CTRL_2_30}});
  assign _zz__zz_decode_BRANCH_CTRL_2_35 = {(|{_zz__zz_decode_BRANCH_CTRL_2_36,_zz__zz_decode_BRANCH_CTRL_2_37}),{(|_zz__zz_decode_BRANCH_CTRL_2_39),{_zz__zz_decode_BRANCH_CTRL_2_42,{_zz__zz_decode_BRANCH_CTRL_2_45,_zz__zz_decode_BRANCH_CTRL_2_47}}}};
  assign _zz__zz_decode_BRANCH_CTRL_2_26 = ((decode_INSTRUCTION & 32'h00002010) == 32'h00002010);
  assign _zz__zz_decode_BRANCH_CTRL_2_27 = ((decode_INSTRUCTION & 32'h00001010) == 32'h00000010);
  assign _zz__zz_decode_BRANCH_CTRL_2_29 = _zz_decode_BRANCH_CTRL_5;
  assign _zz__zz_decode_BRANCH_CTRL_2_30 = {(_zz__zz_decode_BRANCH_CTRL_2_31 == _zz__zz_decode_BRANCH_CTRL_2_32),(_zz__zz_decode_BRANCH_CTRL_2_33 == _zz__zz_decode_BRANCH_CTRL_2_34)};
  assign _zz__zz_decode_BRANCH_CTRL_2_36 = _zz_decode_BRANCH_CTRL_4;
  assign _zz__zz_decode_BRANCH_CTRL_2_37 = ((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_38) == 32'h00000020);
  assign _zz__zz_decode_BRANCH_CTRL_2_39 = {_zz_decode_BRANCH_CTRL_4,(_zz__zz_decode_BRANCH_CTRL_2_40 == _zz__zz_decode_BRANCH_CTRL_2_41)};
  assign _zz__zz_decode_BRANCH_CTRL_2_42 = (|(_zz__zz_decode_BRANCH_CTRL_2_43 == _zz__zz_decode_BRANCH_CTRL_2_44));
  assign _zz__zz_decode_BRANCH_CTRL_2_45 = (|_zz__zz_decode_BRANCH_CTRL_2_46);
  assign _zz__zz_decode_BRANCH_CTRL_2_47 = {(|_zz__zz_decode_BRANCH_CTRL_2_48),{_zz__zz_decode_BRANCH_CTRL_2_50,{_zz__zz_decode_BRANCH_CTRL_2_52,_zz__zz_decode_BRANCH_CTRL_2_56}}};
  assign _zz__zz_decode_BRANCH_CTRL_2_31 = (decode_INSTRUCTION & 32'h0000000c);
  assign _zz__zz_decode_BRANCH_CTRL_2_32 = 32'h00000004;
  assign _zz__zz_decode_BRANCH_CTRL_2_33 = (decode_INSTRUCTION & 32'h00000028);
  assign _zz__zz_decode_BRANCH_CTRL_2_34 = 32'h0;
  assign _zz__zz_decode_BRANCH_CTRL_2_38 = 32'h00000070;
  assign _zz__zz_decode_BRANCH_CTRL_2_40 = (decode_INSTRUCTION & 32'h00000020);
  assign _zz__zz_decode_BRANCH_CTRL_2_41 = 32'h0;
  assign _zz__zz_decode_BRANCH_CTRL_2_43 = (decode_INSTRUCTION & 32'h00004014);
  assign _zz__zz_decode_BRANCH_CTRL_2_44 = 32'h00004010;
  assign _zz__zz_decode_BRANCH_CTRL_2_46 = ((decode_INSTRUCTION & 32'h00006014) == 32'h00002010);
  assign _zz__zz_decode_BRANCH_CTRL_2_48 = {((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_49) == 32'h0),_zz_decode_BRANCH_CTRL_3};
  assign _zz__zz_decode_BRANCH_CTRL_2_50 = (|((decode_INSTRUCTION & _zz__zz_decode_BRANCH_CTRL_2_51) == 32'h0));
  assign _zz__zz_decode_BRANCH_CTRL_2_52 = (|{_zz__zz_decode_BRANCH_CTRL_2_53,{_zz__zz_decode_BRANCH_CTRL_2_54,_zz__zz_decode_BRANCH_CTRL_2_55}});
  assign _zz__zz_decode_BRANCH_CTRL_2_56 = {(|_zz__zz_decode_BRANCH_CTRL_2_57),(|_zz__zz_decode_BRANCH_CTRL_2_58)};
  assign _zz__zz_decode_BRANCH_CTRL_2_49 = 32'h00000004;
  assign _zz__zz_decode_BRANCH_CTRL_2_51 = 32'h00000058;
  assign _zz__zz_decode_BRANCH_CTRL_2_53 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000040);
  assign _zz__zz_decode_BRANCH_CTRL_2_54 = ((decode_INSTRUCTION & 32'h00002014) == 32'h00002010);
  assign _zz__zz_decode_BRANCH_CTRL_2_55 = ((decode_INSTRUCTION & 32'h40000034) == 32'h40000030);
  assign _zz__zz_decode_BRANCH_CTRL_2_57 = ((decode_INSTRUCTION & 32'h00000014) == 32'h00000004);
  assign _zz__zz_decode_BRANCH_CTRL_2_58 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000004);
  always @(posedge clk) begin
    if(_zz_2) begin
      IBusSimplePlugin_predictor_history[IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_address] <= _zz_IBusSimplePlugin_predictor_history_port;
    end
  end

  always @(posedge clk) begin
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      _zz_IBusSimplePlugin_predictor_history_port1 <= IBusSimplePlugin_predictor_history[_zz__zz_IBusSimplePlugin_predictor_buffer_line_source_1];
    end
  end

  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs1Data) begin
      _zz_RegFilePlugin_regFile_port0 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs2Data) begin
      _zz_RegFilePlugin_regFile_port1 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @(posedge clk) begin
    if(_zz_1) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  StreamFifoLowLatency IBusSimplePlugin_rspJoin_rspBuffer_c (
    .io_push_valid            (iBus_rsp_toStream_valid                                         ), //i
    .io_push_ready            (IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready              ), //o
    .io_push_payload_error    (iBus_rsp_toStream_payload_error                                 ), //i
    .io_push_payload_inst     (iBus_rsp_toStream_payload_inst[31:0]                            ), //i
    .io_pop_valid             (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid               ), //o
    .io_pop_ready             (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready               ), //i
    .io_pop_payload_error     (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error       ), //o
    .io_pop_payload_inst      (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst[31:0]  ), //o
    .io_flush                 (1'b0                                                            ), //i
    .io_occupancy             (IBusSimplePlugin_rspJoin_rspBuffer_c_io_occupancy               ), //o
    .clk                      (clk                                                             ), //i
    .reset                    (reset                                                           )  //i
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_to_execute_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_to_execute_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_to_execute_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_to_execute_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_to_memory_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_to_memory_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_execute_to_memory_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_to_execute_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_to_execute_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_to_execute_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_to_execute_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_to_execute_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_to_execute_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_to_execute_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_to_execute_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : _zz_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : _zz_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : _zz_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_execute_BRANCH_CTRL_string = "JALR";
      default : _zz_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : _zz_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : _zz_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      Src2CtrlEnum_RS : decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_string = "PC ";
      default : _zz_decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      Src1CtrlEnum_RS : decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : _zz_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_execute_ALU_CTRL_string = "BITWISE ";
      default : _zz_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : _zz_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_1)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_1_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_1_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_1_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_1_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_1)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_1_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_1_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_1_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_1_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_1_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_1)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_1_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_1_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_1)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_1_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_1_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_1_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_1_string = "PC ";
      default : _zz_decode_SRC2_CTRL_1_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_1)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_1_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_1_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_1_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_1_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_1)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_1_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_1_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_1_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_1_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_1_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC1_CTRL_2)
      Src1CtrlEnum_RS : _zz_decode_SRC1_CTRL_2_string = "RS          ";
      Src1CtrlEnum_IMU : _zz_decode_SRC1_CTRL_2_string = "IMU         ";
      Src1CtrlEnum_PC_INCREMENT : _zz_decode_SRC1_CTRL_2_string = "PC_INCREMENT";
      Src1CtrlEnum_URS1 : _zz_decode_SRC1_CTRL_2_string = "URS1        ";
      default : _zz_decode_SRC1_CTRL_2_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_CTRL_2)
      AluCtrlEnum_ADD_SUB : _zz_decode_ALU_CTRL_2_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : _zz_decode_ALU_CTRL_2_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : _zz_decode_ALU_CTRL_2_string = "BITWISE ";
      default : _zz_decode_ALU_CTRL_2_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SRC2_CTRL_2)
      Src2CtrlEnum_RS : _zz_decode_SRC2_CTRL_2_string = "RS ";
      Src2CtrlEnum_IMI : _zz_decode_SRC2_CTRL_2_string = "IMI";
      Src2CtrlEnum_IMS : _zz_decode_SRC2_CTRL_2_string = "IMS";
      Src2CtrlEnum_PC : _zz_decode_SRC2_CTRL_2_string = "PC ";
      default : _zz_decode_SRC2_CTRL_2_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_decode_ALU_BITWISE_CTRL_2)
      AluBitwiseCtrlEnum_XOR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : _zz_decode_ALU_BITWISE_CTRL_2_string = "AND_1";
      default : _zz_decode_ALU_BITWISE_CTRL_2_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_SHIFT_CTRL_2)
      ShiftCtrlEnum_DISABLE_1 : _zz_decode_SHIFT_CTRL_2_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : _zz_decode_SHIFT_CTRL_2_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : _zz_decode_SHIFT_CTRL_2_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : _zz_decode_SHIFT_CTRL_2_string = "SRA_1    ";
      default : _zz_decode_SHIFT_CTRL_2_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_decode_BRANCH_CTRL_7)
      BranchCtrlEnum_INC : _zz_decode_BRANCH_CTRL_7_string = "INC ";
      BranchCtrlEnum_B : _zz_decode_BRANCH_CTRL_7_string = "B   ";
      BranchCtrlEnum_JAL : _zz_decode_BRANCH_CTRL_7_string = "JAL ";
      BranchCtrlEnum_JALR : _zz_decode_BRANCH_CTRL_7_string = "JALR";
      default : _zz_decode_BRANCH_CTRL_7_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      AluCtrlEnum_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      AluCtrlEnum_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      AluCtrlEnum_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      AluBitwiseCtrlEnum_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      AluBitwiseCtrlEnum_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      ShiftCtrlEnum_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      ShiftCtrlEnum_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      ShiftCtrlEnum_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      ShiftCtrlEnum_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      BranchCtrlEnum_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      BranchCtrlEnum_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      BranchCtrlEnum_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  `endif

  assign writeBack_FORMAL_MEM_RDATA = writeBack_MEMORY_READ_DATA;
  assign memory_MEMORY_READ_DATA = dBus_rsp_data;
  assign execute_TARGET_MISSMATCH2 = (decode_PC != execute_BRANCH_CALC);
  assign execute_NEXT_PC2 = (execute_PC + _zz_execute_NEXT_PC2);
  assign execute_BRANCH_DO = _zz_execute_BRANCH_DO_1;
  assign execute_SHIFT_RIGHT = _zz_execute_SHIFT_RIGHT;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign execute_REGFILE_WRITE_DATA = _zz_execute_REGFILE_WRITE_DATA;
  assign writeBack_FORMAL_MEM_WDATA = memory_to_writeBack_FORMAL_MEM_WDATA;
  assign memory_FORMAL_MEM_WDATA = execute_to_memory_FORMAL_MEM_WDATA;
  assign execute_FORMAL_MEM_WDATA = dBus_cmd_payload_data;
  assign writeBack_FORMAL_MEM_RMASK = memory_to_writeBack_FORMAL_MEM_RMASK;
  assign memory_FORMAL_MEM_RMASK = execute_to_memory_FORMAL_MEM_RMASK;
  assign execute_FORMAL_MEM_RMASK = ((dBus_cmd_valid && (! dBus_cmd_payload_wr)) ? execute_DBusSimplePlugin_formalMask : 4'b0000);
  assign writeBack_FORMAL_MEM_WMASK = memory_to_writeBack_FORMAL_MEM_WMASK;
  assign memory_FORMAL_MEM_WMASK = execute_to_memory_FORMAL_MEM_WMASK;
  assign execute_FORMAL_MEM_WMASK = ((dBus_cmd_valid && dBus_cmd_payload_wr) ? execute_DBusSimplePlugin_formalMask : 4'b0000);
  assign writeBack_FORMAL_MEM_ADDR = memory_to_writeBack_FORMAL_MEM_ADDR;
  assign memory_FORMAL_MEM_ADDR = execute_to_memory_FORMAL_MEM_ADDR;
  assign execute_FORMAL_MEM_ADDR = (dBus_cmd_payload_address & 32'hfffffffc);
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = dBus_cmd_payload_address[1 : 0];
  assign decode_SRC2 = _zz_decode_SRC2_6;
  assign decode_SRC1 = _zz_decode_SRC1_1;
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign writeBack_RS2 = memory_to_writeBack_RS2;
  assign memory_RS2 = execute_to_memory_RS2;
  assign decode_RS2 = decode_RegFilePlugin_rs2Data;
  assign writeBack_RS1 = memory_to_writeBack_RS1;
  assign memory_RS1 = execute_to_memory_RS1;
  assign decode_RS1 = decode_RegFilePlugin_rs1Data;
  assign decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL;
  assign _zz_decode_to_execute_BRANCH_CTRL = _zz_decode_to_execute_BRANCH_CTRL_1;
  assign _zz_execute_to_memory_SHIFT_CTRL = _zz_execute_to_memory_SHIFT_CTRL_1;
  assign decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL = _zz_decode_to_execute_SHIFT_CTRL_1;
  assign decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL = _zz_decode_to_execute_ALU_BITWISE_CTRL_1;
  assign decode_SRC_LESS_UNSIGNED = _zz_decode_BRANCH_CTRL_2[15];
  assign writeBack_RS2_USE = memory_to_writeBack_RS2_USE;
  assign memory_RS2_USE = execute_to_memory_RS2_USE;
  assign execute_RS2_USE = decode_to_execute_RS2_USE;
  assign decode_MEMORY_STORE = _zz_decode_BRANCH_CTRL_2[12];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_decode_BRANCH_CTRL_2[11];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_decode_BRANCH_CTRL_2[10];
  assign decode_ALU_CTRL = _zz_decode_ALU_CTRL;
  assign _zz_decode_to_execute_ALU_CTRL = _zz_decode_to_execute_ALU_CTRL_1;
  assign writeBack_RS1_USE = memory_to_writeBack_RS1_USE;
  assign memory_RS1_USE = execute_to_memory_RS1_USE;
  assign execute_RS1_USE = decode_to_execute_RS1_USE;
  assign decode_MEMORY_ENABLE = _zz_decode_BRANCH_CTRL_2[3];
  assign execute_PREDICTION_CONTEXT_hazard = decode_to_execute_PREDICTION_CONTEXT_hazard;
  assign execute_PREDICTION_CONTEXT_hit = decode_to_execute_PREDICTION_CONTEXT_hit;
  assign execute_PREDICTION_CONTEXT_line_source = decode_to_execute_PREDICTION_CONTEXT_line_source;
  assign execute_PREDICTION_CONTEXT_line_branchWish = decode_to_execute_PREDICTION_CONTEXT_line_branchWish;
  assign execute_PREDICTION_CONTEXT_line_last2Bytes = decode_to_execute_PREDICTION_CONTEXT_line_last2Bytes;
  assign execute_PREDICTION_CONTEXT_line_target = decode_to_execute_PREDICTION_CONTEXT_line_target;
  assign decode_PREDICTION_CONTEXT_hazard = IBusSimplePlugin_predictor_injectorContext_hazard;
  assign decode_PREDICTION_CONTEXT_hit = IBusSimplePlugin_predictor_injectorContext_hit;
  assign decode_PREDICTION_CONTEXT_line_source = IBusSimplePlugin_predictor_injectorContext_line_source;
  assign decode_PREDICTION_CONTEXT_line_branchWish = IBusSimplePlugin_predictor_injectorContext_line_branchWish;
  assign decode_PREDICTION_CONTEXT_line_last2Bytes = IBusSimplePlugin_predictor_injectorContext_line_last2Bytes;
  assign decode_PREDICTION_CONTEXT_line_target = IBusSimplePlugin_predictor_injectorContext_line_target;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = _zz_decode_FORMAL_PC_NEXT;
  assign writeBack_FORMAL_INSTRUCTION = memory_to_writeBack_FORMAL_INSTRUCTION;
  assign memory_FORMAL_INSTRUCTION = execute_to_memory_FORMAL_INSTRUCTION;
  assign execute_FORMAL_INSTRUCTION = decode_to_execute_FORMAL_INSTRUCTION;
  assign decode_FORMAL_INSTRUCTION = IBusSimplePlugin_injector_formal_rawInDecode;
  assign writeBack_FORMAL_HALT = memory_to_writeBack_FORMAL_HALT;
  assign memory_FORMAL_HALT = execute_to_memory_FORMAL_HALT;
  assign execute_FORMAL_HALT = decode_to_execute_FORMAL_HALT;
  assign decode_FORMAL_HALT = 1'b0;
  assign memory_NEXT_PC2 = execute_to_memory_NEXT_PC2;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_TARGET_MISSMATCH2 = execute_to_memory_TARGET_MISSMATCH2;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_IS_RVC = decode_to_execute_IS_RVC;
  assign execute_BRANCH_SRC22 = _zz_execute_BRANCH_SRC22_6;
  assign execute_PC = decode_to_execute_PC;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_BRANCH_CTRL = _zz_execute_BRANCH_CTRL;
  assign decode_RS2_USE = _zz_decode_BRANCH_CTRL_2[14];
  assign decode_RS1_USE = _zz_decode_BRANCH_CTRL_2[4];
  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @(*) begin
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid) begin
      case(memory_SHIFT_CTRL)
        ShiftCtrlEnum_SLL_1 : begin
          _zz_memory_to_writeBack_REGFILE_WRITE_DATA = _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1;
        end
        ShiftCtrlEnum_SRL_1, ShiftCtrlEnum_SRA_1 : begin
          _zz_memory_to_writeBack_REGFILE_WRITE_DATA = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
  end

  assign memory_SHIFT_CTRL = _zz_memory_SHIFT_CTRL;
  assign execute_SHIFT_CTRL = _zz_execute_SHIFT_CTRL;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_decode_SRC2 = decode_PC;
  assign _zz_decode_SRC2_1 = decode_RS2;
  assign decode_SRC2_CTRL = _zz_decode_SRC2_CTRL;
  assign _zz_decode_SRC1 = decode_RS1;
  assign decode_SRC1_CTRL = _zz_decode_SRC1_CTRL;
  assign decode_SRC_USE_SUB_LESS = _zz_decode_BRANCH_CTRL_2[2];
  assign decode_SRC_ADD_ZERO = _zz_decode_BRANCH_CTRL_2[18];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_execute_ALU_CTRL;
  assign execute_SRC2 = decode_to_execute_SRC2;
  assign execute_SRC1 = decode_to_execute_SRC1;
  assign execute_ALU_BITWISE_CTRL = _zz_execute_ALU_BITWISE_CTRL;
  always @(*) begin
    _zz_1 = 1'b0;
    if(lastStageRegFileWrite_valid) begin
      _zz_1 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusSimplePlugin_decompressor_output_payload_rsp_inst);
  always @(*) begin
    decode_REGFILE_WRITE_VALID = _zz_decode_BRANCH_CTRL_2[9];
    if(when_RegFilePlugin_l63) begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = (|{((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_decode_LEGAL_INSTRUCTION) == 32'h00004063),{(_zz_decode_LEGAL_INSTRUCTION_1 == _zz_decode_LEGAL_INSTRUCTION_2),{_zz_decode_LEGAL_INSTRUCTION_3,{_zz_decode_LEGAL_INSTRUCTION_4,_zz_decode_LEGAL_INSTRUCTION_5}}}}}}});
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_READ_DATA = memory_to_writeBack_MEMORY_READ_DATA;
  assign memory_ALIGNEMENT_FAULT = execute_to_memory_ALIGNEMENT_FAULT;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_STORE = execute_to_memory_MEMORY_STORE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign execute_MEMORY_STORE = decode_to_execute_MEMORY_STORE;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_ALIGNEMENT_FAULT = (((dBus_cmd_payload_size == 2'b10) && (dBus_cmd_payload_address[1 : 0] != 2'b00)) || ((dBus_cmd_payload_size == 2'b01) && (dBus_cmd_payload_address[0 : 0] != 1'b0)));
  assign memory_IS_RVC = execute_to_memory_IS_RVC;
  assign memory_PC = execute_to_memory_PC;
  assign memory_PREDICTION_CONTEXT_hazard = execute_to_memory_PREDICTION_CONTEXT_hazard;
  assign memory_PREDICTION_CONTEXT_hit = execute_to_memory_PREDICTION_CONTEXT_hit;
  assign memory_PREDICTION_CONTEXT_line_source = execute_to_memory_PREDICTION_CONTEXT_line_source;
  assign memory_PREDICTION_CONTEXT_line_branchWish = execute_to_memory_PREDICTION_CONTEXT_line_branchWish;
  assign memory_PREDICTION_CONTEXT_line_last2Bytes = execute_to_memory_PREDICTION_CONTEXT_line_last2Bytes;
  assign memory_PREDICTION_CONTEXT_line_target = execute_to_memory_PREDICTION_CONTEXT_line_target;
  always @(*) begin
    _zz_2 = 1'b0;
    if(IBusSimplePlugin_predictor_historyWriteDelayPatched_valid) begin
      _zz_2 = 1'b1;
    end
  end

  always @(*) begin
    _zz_memory_to_writeBack_FORMAL_PC_NEXT = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid) begin
      _zz_memory_to_writeBack_FORMAL_PC_NEXT = BranchPlugin_jumpInterface_payload;
    end
  end

  assign decode_PC = IBusSimplePlugin_decodePc_pcReg;
  assign decode_INSTRUCTION = IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  assign decode_IS_RVC = IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  always @(*) begin
    _zz_when_FormalPlugin_l114 = writeBack_FORMAL_HALT;
    if(writeBack_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114 = 1'b0;
    end
    if(writeBack_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114 = 1'b0;
    end
  end

  always @(*) begin
    _zz_when_FormalPlugin_l114_1 = memory_FORMAL_HALT;
    if(memory_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_1 = 1'b0;
    end
    if(when_HaltOnExceptionPlugin_l34_1) begin
      _zz_when_FormalPlugin_l114_1 = 1'b1;
    end
    if(memory_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_1 = 1'b0;
    end
  end

  always @(*) begin
    _zz_when_FormalPlugin_l114_2 = execute_FORMAL_HALT;
    if(execute_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_2 = 1'b0;
    end
    if(execute_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_2 = 1'b0;
    end
  end

  always @(*) begin
    _zz_when_FormalPlugin_l114_3 = decode_FORMAL_HALT;
    if(when_HaltOnExceptionPlugin_l34) begin
      _zz_when_FormalPlugin_l114_3 = 1'b1;
    end
    if(decode_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_3 = 1'b0;
    end
    if(decode_arbitration_isFlushed) begin
      _zz_when_FormalPlugin_l114_3 = 1'b0;
    end
  end

  always @(*) begin
    _zz_rvfi_rd_wdata = writeBack_REGFILE_WRITE_DATA;
    if(when_DBusSimplePlugin_l558) begin
      _zz_rvfi_rd_wdata = writeBack_DBusSimplePlugin_rspFormated;
    end
  end

  assign _zz_rvfi_rd_addr = writeBack_REGFILE_WRITE_VALID;
  assign _zz_rvfi_rs2_addr = writeBack_RS2_USE;
  assign _zz_rvfi_rs1_addr = writeBack_INSTRUCTION;
  assign _zz_rvfi_rs1_addr_1 = writeBack_RS1_USE;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @(*) begin
    decode_arbitration_haltItself = 1'b0;
    if(when_HaltOnExceptionPlugin_l34) begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  always @(*) begin
    decode_arbitration_haltByOther = 1'b0;
    if(when_HazardSimplePlugin_l113) begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @(*) begin
    decode_arbitration_removeIt = 1'b0;
    if(decode_arbitration_isFlushed) begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  assign decode_arbitration_flushNext = 1'b0;
  always @(*) begin
    execute_arbitration_haltItself = 1'b0;
    if(when_DBusSimplePlugin_l428) begin
      execute_arbitration_haltItself = 1'b1;
    end
  end

  assign execute_arbitration_haltByOther = 1'b0;
  always @(*) begin
    execute_arbitration_removeIt = 1'b0;
    if(execute_arbitration_isFlushed) begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  assign execute_arbitration_flushNext = 1'b0;
  always @(*) begin
    memory_arbitration_haltItself = 1'b0;
    if(when_HaltOnExceptionPlugin_l34_1) begin
      memory_arbitration_haltItself = 1'b1;
    end
    if(when_DBusSimplePlugin_l482) begin
      memory_arbitration_haltItself = 1'b1;
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @(*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_arbitration_isFlushed) begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @(*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_jumpInterface_valid) begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  assign writeBack_arbitration_haltItself = 1'b0;
  assign writeBack_arbitration_haltByOther = 1'b0;
  always @(*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(writeBack_arbitration_isFlushed) begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  assign writeBack_arbitration_flushIt = 1'b0;
  assign writeBack_arbitration_flushNext = 1'b0;
  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  assign IBusSimplePlugin_fetcherHalt = 1'b0;
  always @(*) begin
    IBusSimplePlugin_incomingInstruction = 1'b0;
    if(IBusSimplePlugin_iBusRsp_stages_1_input_valid) begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
    if(IBusSimplePlugin_injector_decodeInput_valid) begin
      IBusSimplePlugin_incomingInstruction = 1'b1;
    end
  end

  always @(*) begin
    rvfi_valid = writeBack_arbitration_isFiring;
    if(writeBack_FormalPlugin_haltRequest_delay_5) begin
      rvfi_valid = 1'b1;
    end
    if(writeBack_FormalPlugin_haltFired) begin
      rvfi_valid = 1'b0;
    end
  end

  assign rvfi_order = writeBack_FormalPlugin_order;
  assign rvfi_insn = writeBack_FORMAL_INSTRUCTION;
  always @(*) begin
    rvfi_trap = 1'b0;
    if(writeBack_FormalPlugin_haltRequest_delay_5) begin
      rvfi_trap = 1'b1;
    end
  end

  always @(*) begin
    rvfi_halt = 1'b0;
    if(writeBack_FormalPlugin_haltRequest_delay_5) begin
      rvfi_halt = 1'b1;
    end
  end

  assign rvfi_intr = 1'b0;
  assign rvfi_mode = 2'd3;
  assign rvfi_ixl = 2'd1;
  assign rvfi_rs1_addr = (_zz_rvfi_rs1_addr_1 ? _zz_rvfi_rs1_addr[19 : 15] : 5'h0);
  assign rvfi_rs2_addr = (_zz_rvfi_rs2_addr ? _zz_rvfi_rs1_addr[24 : 20] : 5'h0);
  assign rvfi_rs1_rdata = (_zz_rvfi_rs1_addr_1 ? writeBack_RS1 : 32'h0);
  assign rvfi_rs2_rdata = (_zz_rvfi_rs2_addr ? writeBack_RS2 : 32'h0);
  assign rvfi_rd_addr = (_zz_rvfi_rd_addr ? _zz_rvfi_rs1_addr[11 : 7] : 5'h0);
  assign rvfi_rd_wdata = (_zz_rvfi_rd_addr ? _zz_rvfi_rd_wdata : 32'h0);
  assign rvfi_pc_rdata = writeBack_PC;
  assign rvfi_pc_wdata = writeBack_FORMAL_PC_NEXT;
  assign rvfi_mem_addr = writeBack_FORMAL_MEM_ADDR;
  assign rvfi_mem_rmask = writeBack_FORMAL_MEM_RMASK;
  assign rvfi_mem_wmask = writeBack_FORMAL_MEM_WMASK;
  assign rvfi_mem_rdata = writeBack_FORMAL_MEM_RDATA;
  assign rvfi_mem_wdata = writeBack_FORMAL_MEM_WDATA;
  always @(*) begin
    writeBack_FormalPlugin_haltRequest = 1'b0;
    if(when_FormalPlugin_l114) begin
      if(when_FormalPlugin_l115) begin
        writeBack_FormalPlugin_haltRequest = 1'b1;
      end
    end
    if(when_FormalPlugin_l114_1) begin
      if(when_FormalPlugin_l115_1) begin
        writeBack_FormalPlugin_haltRequest = 1'b1;
      end
    end
    if(when_FormalPlugin_l114_2) begin
      if(when_FormalPlugin_l115_2) begin
        writeBack_FormalPlugin_haltRequest = 1'b1;
      end
    end
    if(when_FormalPlugin_l114_3) begin
      if(when_FormalPlugin_l115_3) begin
        writeBack_FormalPlugin_haltRequest = 1'b1;
      end
    end
  end

  assign when_FormalPlugin_l114 = (decode_arbitration_isValid && _zz_when_FormalPlugin_l114_3);
  assign when_FormalPlugin_l115 = (((1'b1 && (! execute_arbitration_isValid)) && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid));
  assign when_FormalPlugin_l114_1 = (execute_arbitration_isValid && _zz_when_FormalPlugin_l114_2);
  assign when_FormalPlugin_l115_1 = ((1'b1 && (! memory_arbitration_isValid)) && (! writeBack_arbitration_isValid));
  assign when_FormalPlugin_l114_2 = (memory_arbitration_isValid && _zz_when_FormalPlugin_l114_1);
  assign when_FormalPlugin_l115_2 = (1'b1 && (! writeBack_arbitration_isValid));
  assign when_FormalPlugin_l114_3 = (writeBack_arbitration_isValid && _zz_when_FormalPlugin_l114);
  assign when_FormalPlugin_l115_3 = 1'b1;
  assign when_FormalPlugin_l127 = (rvfi_valid && rvfi_halt);
  assign when_HaltOnExceptionPlugin_l34 = (decodeExceptionPort_valid != 1'b0);
  assign when_HaltOnExceptionPlugin_l34_1 = (DBusSimplePlugin_memoryExceptionPort_valid != 1'b0);
  assign IBusSimplePlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusSimplePlugin_jump_pcLoad_valid = (BranchPlugin_jumpInterface_valid != 1'b0);
  assign IBusSimplePlugin_jump_pcLoad_payload = BranchPlugin_jumpInterface_payload;
  always @(*) begin
    IBusSimplePlugin_fetchPc_correction = 1'b0;
    if(IBusSimplePlugin_fetchPc_predictionPcLoad_valid) begin
      IBusSimplePlugin_fetchPc_correction = 1'b1;
    end
    if(IBusSimplePlugin_fetchPc_redo_valid) begin
      IBusSimplePlugin_fetchPc_correction = 1'b1;
    end
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusSimplePlugin_fetchPc_output_fire = (IBusSimplePlugin_fetchPc_output_valid && IBusSimplePlugin_fetchPc_output_ready);
  assign IBusSimplePlugin_fetchPc_corrected = (IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_correctionReg);
  assign IBusSimplePlugin_fetchPc_pcRegPropagate = 1'b0;
  assign when_Fetcher_l131 = (IBusSimplePlugin_fetchPc_correction || IBusSimplePlugin_fetchPc_pcRegPropagate);
  assign IBusSimplePlugin_fetchPc_output_fire_1 = (IBusSimplePlugin_fetchPc_output_valid && IBusSimplePlugin_fetchPc_output_ready);
  assign when_Fetcher_l131_1 = ((! IBusSimplePlugin_fetchPc_output_valid) && IBusSimplePlugin_fetchPc_output_ready);
  always @(*) begin
    IBusSimplePlugin_fetchPc_pc = (IBusSimplePlugin_fetchPc_pcReg + _zz_IBusSimplePlugin_fetchPc_pc);
    if(IBusSimplePlugin_fetchPc_inc) begin
      IBusSimplePlugin_fetchPc_pc[1] = 1'b0;
    end
    if(IBusSimplePlugin_fetchPc_predictionPcLoad_valid) begin
      IBusSimplePlugin_fetchPc_pc = IBusSimplePlugin_fetchPc_predictionPcLoad_payload;
    end
    if(IBusSimplePlugin_fetchPc_redo_valid) begin
      IBusSimplePlugin_fetchPc_pc = IBusSimplePlugin_fetchPc_redo_payload;
    end
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_pc = IBusSimplePlugin_jump_pcLoad_payload;
    end
    IBusSimplePlugin_fetchPc_pc[0] = 1'b0;
  end

  always @(*) begin
    IBusSimplePlugin_fetchPc_flushed = 1'b0;
    if(IBusSimplePlugin_fetchPc_redo_valid) begin
      IBusSimplePlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusSimplePlugin_jump_pcLoad_valid) begin
      IBusSimplePlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign when_Fetcher_l158 = (IBusSimplePlugin_fetchPc_booted && ((IBusSimplePlugin_fetchPc_output_ready || IBusSimplePlugin_fetchPc_correction) || IBusSimplePlugin_fetchPc_pcRegPropagate));
  assign IBusSimplePlugin_fetchPc_output_valid = ((! IBusSimplePlugin_fetcherHalt) && IBusSimplePlugin_fetchPc_booted);
  assign IBusSimplePlugin_fetchPc_output_payload = IBusSimplePlugin_fetchPc_pc;
  always @(*) begin
    IBusSimplePlugin_decodePc_flushed = 1'b0;
    if(when_Fetcher_l192) begin
      IBusSimplePlugin_decodePc_flushed = 1'b1;
    end
  end

  assign IBusSimplePlugin_decodePc_pcPlus = (IBusSimplePlugin_decodePc_pcReg + _zz_IBusSimplePlugin_decodePc_pcPlus);
  assign IBusSimplePlugin_decodePc_injectedDecode = 1'b0;
  assign when_Fetcher_l180 = (decode_arbitration_isFiring && (! IBusSimplePlugin_decodePc_injectedDecode));
  assign when_Fetcher_l192 = (IBusSimplePlugin_jump_pcLoad_valid && ((! decode_arbitration_isStuck) || decode_arbitration_removeIt));
  always @(*) begin
    IBusSimplePlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusSimplePlugin_predictor_compressor_unalignedWordIssue) begin
      IBusSimplePlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusSimplePlugin_iBusRsp_stages_0_input_valid = IBusSimplePlugin_fetchPc_output_valid;
  assign IBusSimplePlugin_fetchPc_output_ready = IBusSimplePlugin_iBusRsp_stages_0_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_0_input_payload = IBusSimplePlugin_fetchPc_output_payload;
  always @(*) begin
    IBusSimplePlugin_iBusRsp_stages_0_halt = 1'b0;
    if(when_IBusSimplePlugin_l305) begin
      IBusSimplePlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready = (! IBusSimplePlugin_iBusRsp_stages_0_halt);
  assign IBusSimplePlugin_iBusRsp_stages_0_input_ready = (IBusSimplePlugin_iBusRsp_stages_0_output_ready && _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_valid = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && _zz_IBusSimplePlugin_iBusRsp_stages_0_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_payload = IBusSimplePlugin_iBusRsp_stages_0_input_payload;
  assign IBusSimplePlugin_iBusRsp_stages_1_halt = 1'b0;
  assign _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready = (! IBusSimplePlugin_iBusRsp_stages_1_halt);
  assign IBusSimplePlugin_iBusRsp_stages_1_input_ready = (IBusSimplePlugin_iBusRsp_stages_1_output_ready && _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_valid = (IBusSimplePlugin_iBusRsp_stages_1_input_valid && _zz_IBusSimplePlugin_iBusRsp_stages_1_input_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_payload = IBusSimplePlugin_iBusRsp_stages_1_input_payload;
  assign IBusSimplePlugin_fetchPc_redo_valid = IBusSimplePlugin_iBusRsp_redoFetch;
  always @(*) begin
    IBusSimplePlugin_fetchPc_redo_payload = IBusSimplePlugin_iBusRsp_stages_1_input_payload;
    if(IBusSimplePlugin_decompressor_throw2BytesReg) begin
      IBusSimplePlugin_fetchPc_redo_payload[1] = 1'b1;
    end
  end

  assign IBusSimplePlugin_iBusRsp_flush = (IBusSimplePlugin_externalFlush || IBusSimplePlugin_iBusRsp_redoFetch);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_ready = ((1'b0 && (! IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid)) || IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready);
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid = _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload = _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_valid = IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid;
  assign IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_ready = IBusSimplePlugin_iBusRsp_stages_1_input_ready;
  assign IBusSimplePlugin_iBusRsp_stages_1_input_payload = IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload;
  always @(*) begin
    IBusSimplePlugin_iBusRsp_readyForError = 1'b1;
    if(IBusSimplePlugin_injector_decodeInput_valid) begin
      IBusSimplePlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusSimplePlugin_decompressor_input_valid = (IBusSimplePlugin_iBusRsp_output_valid && (! IBusSimplePlugin_iBusRsp_redoFetch));
  assign IBusSimplePlugin_decompressor_input_payload_pc = IBusSimplePlugin_iBusRsp_output_payload_pc;
  assign IBusSimplePlugin_decompressor_input_payload_rsp_error = IBusSimplePlugin_iBusRsp_output_payload_rsp_error;
  assign IBusSimplePlugin_decompressor_input_payload_rsp_inst = IBusSimplePlugin_iBusRsp_output_payload_rsp_inst;
  assign IBusSimplePlugin_decompressor_input_payload_isRvc = IBusSimplePlugin_iBusRsp_output_payload_isRvc;
  assign IBusSimplePlugin_iBusRsp_output_ready = IBusSimplePlugin_decompressor_input_ready;
  assign IBusSimplePlugin_decompressor_flushNext = 1'b0;
  assign IBusSimplePlugin_decompressor_consumeCurrent = 1'b0;
  assign IBusSimplePlugin_decompressor_isInputLowRvc = (IBusSimplePlugin_decompressor_input_payload_rsp_inst[1 : 0] != 2'b11);
  assign IBusSimplePlugin_decompressor_isInputHighRvc = (IBusSimplePlugin_decompressor_input_payload_rsp_inst[17 : 16] != 2'b11);
  assign IBusSimplePlugin_decompressor_throw2Bytes = (IBusSimplePlugin_decompressor_throw2BytesReg || IBusSimplePlugin_decompressor_input_payload_pc[1]);
  assign IBusSimplePlugin_decompressor_unaligned = (IBusSimplePlugin_decompressor_throw2Bytes || IBusSimplePlugin_decompressor_bufferValid);
  assign IBusSimplePlugin_decompressor_bufferValidPatched = (IBusSimplePlugin_decompressor_input_valid ? IBusSimplePlugin_decompressor_bufferValid : IBusSimplePlugin_decompressor_bufferValidLatch);
  assign IBusSimplePlugin_decompressor_throw2BytesPatched = (IBusSimplePlugin_decompressor_input_valid ? IBusSimplePlugin_decompressor_throw2Bytes : IBusSimplePlugin_decompressor_throw2BytesLatch);
  assign IBusSimplePlugin_decompressor_raw = (IBusSimplePlugin_decompressor_bufferValidPatched ? {IBusSimplePlugin_decompressor_input_payload_rsp_inst[15 : 0],IBusSimplePlugin_decompressor_bufferData} : {IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16],(IBusSimplePlugin_decompressor_throw2BytesPatched ? IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16] : IBusSimplePlugin_decompressor_input_payload_rsp_inst[15 : 0])});
  assign IBusSimplePlugin_decompressor_isRvc = (IBusSimplePlugin_decompressor_raw[1 : 0] != 2'b11);
  assign _zz_IBusSimplePlugin_decompressor_decompressed = IBusSimplePlugin_decompressor_raw[15 : 0];
  always @(*) begin
    IBusSimplePlugin_decompressor_decompressed = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
    case(switch_Misc_l44)
      5'h0 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{{{2'b00,_zz_IBusSimplePlugin_decompressor_decompressed[10 : 7]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 11]},_zz_IBusSimplePlugin_decompressor_decompressed[5]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},2'b00},5'h02},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed_2},7'h13};
      end
      5'h02 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_3,_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_2},7'h03};
      end
      5'h06 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_3[11 : 5],_zz_IBusSimplePlugin_decompressor_decompressed_2},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_3[4 : 0]},7'h23};
      end
      5'h08 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_5,_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h09 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_8[20],_zz_IBusSimplePlugin_decompressor_decompressed_8[10 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_8[11]},_zz_IBusSimplePlugin_decompressor_decompressed_8[19 : 12]},_zz_IBusSimplePlugin_decompressor_decompressed_20},7'h6f};
      end
      5'h0a : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{_zz_IBusSimplePlugin_decompressor_decompressed_5,5'h0},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h0b : begin
        IBusSimplePlugin_decompressor_decompressed = ((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7] == 5'h02) ? {{{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_12,_zz_IBusSimplePlugin_decompressor_decompressed[4 : 3]},_zz_IBusSimplePlugin_decompressor_decompressed[5]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},4'b0000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13} : {{_zz_IBusSimplePlugin_decompressor_decompressed_27[31 : 12],_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h37});
      end
      5'h0c : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{((_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] == 2'b10) ? _zz_IBusSimplePlugin_decompressor_decompressed_26 : {{1'b0,(_zz_IBusSimplePlugin_decompressor_decompressed_28 || _zz_IBusSimplePlugin_decompressor_decompressed_29)},5'h0}),(((! _zz_IBusSimplePlugin_decompressor_decompressed[11]) || _zz_IBusSimplePlugin_decompressor_decompressed_22) ? _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2] : _zz_IBusSimplePlugin_decompressor_decompressed_2)},_zz_IBusSimplePlugin_decompressor_decompressed_1},_zz_IBusSimplePlugin_decompressor_decompressed_24},_zz_IBusSimplePlugin_decompressor_decompressed_1},(_zz_IBusSimplePlugin_decompressor_decompressed_22 ? 7'h13 : 7'h33)};
      end
      5'h0d : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_15[20],_zz_IBusSimplePlugin_decompressor_decompressed_15[10 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_15[11]},_zz_IBusSimplePlugin_decompressor_decompressed_15[19 : 12]},_zz_IBusSimplePlugin_decompressor_decompressed_19},7'h6f};
      end
      5'h0e : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_18[12],_zz_IBusSimplePlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed_19},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h0f : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_18[12],_zz_IBusSimplePlugin_decompressor_decompressed_18[10 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed_19},_zz_IBusSimplePlugin_decompressor_decompressed_1},3'b001},_zz_IBusSimplePlugin_decompressor_decompressed_18[4 : 1]},_zz_IBusSimplePlugin_decompressor_decompressed_18[11]},7'h63};
      end
      5'h10 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{7'h0,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b001},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h13};
      end
      5'h12 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{{{{4'b0000,_zz_IBusSimplePlugin_decompressor_decompressed[3 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed[12]},_zz_IBusSimplePlugin_decompressor_decompressed[6 : 4]},2'b00},_zz_IBusSimplePlugin_decompressor_decompressed_21},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h03};
      end
      5'h14 : begin
        IBusSimplePlugin_decompressor_decompressed = ((_zz_IBusSimplePlugin_decompressor_decompressed[12 : 2] == 11'h400) ? 32'h00100073 : ((_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2] == 5'h0) ? {{{{12'h0,_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},3'b000},(_zz_IBusSimplePlugin_decompressor_decompressed[12] ? _zz_IBusSimplePlugin_decompressor_decompressed_20 : _zz_IBusSimplePlugin_decompressor_decompressed_19)},7'h67} : {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_30,_zz_IBusSimplePlugin_decompressor_decompressed_31},(_zz_IBusSimplePlugin_decompressor_decompressed_32 ? _zz_IBusSimplePlugin_decompressor_decompressed_33 : _zz_IBusSimplePlugin_decompressor_decompressed_19)},3'b000},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 7]},7'h33}));
      end
      5'h16 : begin
        IBusSimplePlugin_decompressor_decompressed = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_34[11 : 5],_zz_IBusSimplePlugin_decompressor_decompressed[6 : 2]},_zz_IBusSimplePlugin_decompressor_decompressed_21},3'b010},_zz_IBusSimplePlugin_decompressor_decompressed_35[4 : 0]},7'h23};
      end
      default : begin
      end
    endcase
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_1 = {2'b01,_zz_IBusSimplePlugin_decompressor_decompressed[9 : 7]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_2 = {2'b01,_zz_IBusSimplePlugin_decompressor_decompressed[4 : 2]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_3 = {{{{5'h0,_zz_IBusSimplePlugin_decompressor_decompressed[5]},_zz_IBusSimplePlugin_decompressor_decompressed[12 : 10]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},2'b00};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_4 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_5[11] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[10] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[9] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[8] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[7] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[6] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[5] = _zz_IBusSimplePlugin_decompressor_decompressed_4;
    _zz_IBusSimplePlugin_decompressor_decompressed_5[4 : 0] = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 2];
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_6 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_7[9] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[8] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[7] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[6] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[5] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[4] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[3] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[2] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[1] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
    _zz_IBusSimplePlugin_decompressor_decompressed_7[0] = _zz_IBusSimplePlugin_decompressor_decompressed_6;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_8 = {{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_7,_zz_IBusSimplePlugin_decompressor_decompressed[8]},_zz_IBusSimplePlugin_decompressor_decompressed[10 : 9]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},_zz_IBusSimplePlugin_decompressor_decompressed[7]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11]},_zz_IBusSimplePlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_9 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_10[14] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[13] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[12] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[11] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[10] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[9] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[8] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[7] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[6] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[5] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[4] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[3] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[2] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[1] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
    _zz_IBusSimplePlugin_decompressor_decompressed_10[0] = _zz_IBusSimplePlugin_decompressor_decompressed_9;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_11 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_12[2] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
    _zz_IBusSimplePlugin_decompressor_decompressed_12[1] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
    _zz_IBusSimplePlugin_decompressor_decompressed_12[0] = _zz_IBusSimplePlugin_decompressor_decompressed_11;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_13 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_14[9] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[8] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[7] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[6] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[5] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[4] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[3] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[2] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[1] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
    _zz_IBusSimplePlugin_decompressor_decompressed_14[0] = _zz_IBusSimplePlugin_decompressor_decompressed_13;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_15 = {{{{{{{{_zz_IBusSimplePlugin_decompressor_decompressed_14,_zz_IBusSimplePlugin_decompressor_decompressed[8]},_zz_IBusSimplePlugin_decompressor_decompressed[10 : 9]},_zz_IBusSimplePlugin_decompressor_decompressed[6]},_zz_IBusSimplePlugin_decompressor_decompressed[7]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11]},_zz_IBusSimplePlugin_decompressor_decompressed[5 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_16 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_17[4] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[3] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[2] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[1] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
    _zz_IBusSimplePlugin_decompressor_decompressed_17[0] = _zz_IBusSimplePlugin_decompressor_decompressed_16;
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_18 = {{{{{_zz_IBusSimplePlugin_decompressor_decompressed_17,_zz_IBusSimplePlugin_decompressor_decompressed[6 : 5]},_zz_IBusSimplePlugin_decompressor_decompressed[2]},_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10]},_zz_IBusSimplePlugin_decompressor_decompressed[4 : 3]},1'b0};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_19 = 5'h0;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_20 = 5'h01;
  assign _zz_IBusSimplePlugin_decompressor_decompressed_21 = 5'h02;
  assign switch_Misc_l44 = {_zz_IBusSimplePlugin_decompressor_decompressed[1 : 0],_zz_IBusSimplePlugin_decompressor_decompressed[15 : 13]};
  assign _zz_IBusSimplePlugin_decompressor_decompressed_22 = (_zz_IBusSimplePlugin_decompressor_decompressed[11 : 10] != 2'b11);
  assign switch_Misc_l211 = _zz_IBusSimplePlugin_decompressor_decompressed[11 : 10];
  assign switch_Misc_l211_1 = _zz_IBusSimplePlugin_decompressor_decompressed[6 : 5];
  always @(*) begin
    case(switch_Misc_l211_1)
      2'b00 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b000;
      end
      2'b01 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b100;
      end
      2'b10 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b110;
      end
      default : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_23 = 3'b111;
      end
    endcase
  end

  always @(*) begin
    case(switch_Misc_l211)
      2'b00 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b01 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b101;
      end
      2'b10 : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = 3'b111;
      end
      default : begin
        _zz_IBusSimplePlugin_decompressor_decompressed_24 = _zz_IBusSimplePlugin_decompressor_decompressed_23;
      end
    endcase
  end

  assign _zz_IBusSimplePlugin_decompressor_decompressed_25 = _zz_IBusSimplePlugin_decompressor_decompressed[12];
  always @(*) begin
    _zz_IBusSimplePlugin_decompressor_decompressed_26[6] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[5] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[4] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[3] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[2] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[1] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
    _zz_IBusSimplePlugin_decompressor_decompressed_26[0] = _zz_IBusSimplePlugin_decompressor_decompressed_25;
  end

  assign IBusSimplePlugin_decompressor_output_valid = (IBusSimplePlugin_decompressor_input_valid && (! ((IBusSimplePlugin_decompressor_throw2Bytes && (! IBusSimplePlugin_decompressor_bufferValid)) && (! IBusSimplePlugin_decompressor_isInputHighRvc))));
  assign IBusSimplePlugin_decompressor_output_payload_pc = IBusSimplePlugin_decompressor_input_payload_pc;
  assign IBusSimplePlugin_decompressor_output_payload_isRvc = IBusSimplePlugin_decompressor_isRvc;
  assign IBusSimplePlugin_decompressor_output_payload_rsp_inst = (IBusSimplePlugin_decompressor_isRvc ? IBusSimplePlugin_decompressor_decompressed : IBusSimplePlugin_decompressor_raw);
  always @(*) begin
    IBusSimplePlugin_decompressor_input_ready = (IBusSimplePlugin_decompressor_output_ready && (((! IBusSimplePlugin_iBusRsp_stages_1_input_valid) || IBusSimplePlugin_decompressor_flushNext) || ((! (IBusSimplePlugin_decompressor_bufferValid && IBusSimplePlugin_decompressor_isInputHighRvc)) && (! (((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && IBusSimplePlugin_decompressor_isInputHighRvc)))));
    if(when_Fetcher_l617) begin
      IBusSimplePlugin_decompressor_input_ready = 1'b1;
    end
  end

  assign IBusSimplePlugin_decompressor_output_fire = (IBusSimplePlugin_decompressor_output_valid && IBusSimplePlugin_decompressor_output_ready);
  assign IBusSimplePlugin_decompressor_bufferFill = (((((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && (! IBusSimplePlugin_decompressor_isInputHighRvc)) || (IBusSimplePlugin_decompressor_bufferValid && (! IBusSimplePlugin_decompressor_isInputHighRvc))) || ((IBusSimplePlugin_decompressor_throw2Bytes && (! IBusSimplePlugin_decompressor_isRvc)) && (! IBusSimplePlugin_decompressor_isInputHighRvc)));
  assign when_Fetcher_l283 = (IBusSimplePlugin_decompressor_output_ready && IBusSimplePlugin_decompressor_input_valid);
  assign when_Fetcher_l286 = (IBusSimplePlugin_decompressor_output_ready && IBusSimplePlugin_decompressor_input_valid);
  assign when_Fetcher_l291 = (IBusSimplePlugin_externalFlush || IBusSimplePlugin_decompressor_consumeCurrent);
  assign IBusSimplePlugin_decompressor_output_ready = ((1'b0 && (! IBusSimplePlugin_injector_decodeInput_valid)) || IBusSimplePlugin_injector_decodeInput_ready);
  assign IBusSimplePlugin_injector_decodeInput_valid = _zz_IBusSimplePlugin_injector_decodeInput_valid;
  assign IBusSimplePlugin_injector_decodeInput_payload_pc = _zz_IBusSimplePlugin_injector_decodeInput_payload_pc;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_error = _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error;
  assign IBusSimplePlugin_injector_decodeInput_payload_rsp_inst = _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst;
  assign IBusSimplePlugin_injector_decodeInput_payload_isRvc = _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc;
  assign when_Fetcher_l329 = (! 1'b0);
  assign when_Fetcher_l329_1 = (! execute_arbitration_isStuck);
  assign when_Fetcher_l329_2 = (! memory_arbitration_isStuck);
  assign when_Fetcher_l329_3 = (! writeBack_arbitration_isStuck);
  assign IBusSimplePlugin_pcValids_0 = IBusSimplePlugin_injector_nextPcCalc_valids_0;
  assign IBusSimplePlugin_pcValids_1 = IBusSimplePlugin_injector_nextPcCalc_valids_1;
  assign IBusSimplePlugin_pcValids_2 = IBusSimplePlugin_injector_nextPcCalc_valids_2;
  assign IBusSimplePlugin_pcValids_3 = IBusSimplePlugin_injector_nextPcCalc_valids_3;
  assign IBusSimplePlugin_injector_decodeInput_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusSimplePlugin_injector_decodeInput_valid;
  always @(*) begin
    _zz_decode_FORMAL_PC_NEXT = (decode_PC + _zz__zz_decode_FORMAL_PC_NEXT);
    if(IBusSimplePlugin_decodePc_predictionPcLoad_valid) begin
      _zz_decode_FORMAL_PC_NEXT = IBusSimplePlugin_decodePc_predictionPcLoad_payload;
    end
  end

  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_valid = IBusSimplePlugin_predictor_historyWrite_valid;
  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_address = (IBusSimplePlugin_predictor_historyWrite_payload_address - 10'h001);
  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_source = IBusSimplePlugin_predictor_historyWrite_payload_data_source;
  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_branchWish = IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish;
  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_last2Bytes = IBusSimplePlugin_predictor_historyWrite_payload_data_last2Bytes;
  assign IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_target = IBusSimplePlugin_predictor_historyWrite_payload_data_target;
  assign _zz_IBusSimplePlugin_predictor_buffer_line_source = (IBusSimplePlugin_iBusRsp_stages_0_input_payload >>> 2);
  assign _zz_IBusSimplePlugin_predictor_buffer_line_source_1 = _zz_IBusSimplePlugin_predictor_history_port1;
  assign IBusSimplePlugin_predictor_buffer_line_source = _zz_IBusSimplePlugin_predictor_buffer_line_source_1[19 : 0];
  assign IBusSimplePlugin_predictor_buffer_line_branchWish = _zz_IBusSimplePlugin_predictor_buffer_line_source_1[21 : 20];
  assign IBusSimplePlugin_predictor_buffer_line_last2Bytes = _zz_IBusSimplePlugin_predictor_buffer_line_source_1[22];
  assign IBusSimplePlugin_predictor_buffer_line_target = _zz_IBusSimplePlugin_predictor_buffer_line_source_1[54 : 23];
  assign IBusSimplePlugin_predictor_buffer_hazard = (IBusSimplePlugin_predictor_writeLast_valid && (IBusSimplePlugin_predictor_writeLast_payload_address == _zz_IBusSimplePlugin_predictor_buffer_hazard));
  assign IBusSimplePlugin_predictor_hazard = (IBusSimplePlugin_predictor_buffer_hazard_regNextWhen || IBusSimplePlugin_predictor_buffer_pcCorrected);
  always @(*) begin
    IBusSimplePlugin_predictor_hit = (IBusSimplePlugin_predictor_line_source == _zz_IBusSimplePlugin_predictor_hit);
    if(when_Fetcher_l550) begin
      IBusSimplePlugin_predictor_hit = 1'b0;
    end
  end

  assign when_Fetcher_l550 = ((! IBusSimplePlugin_predictor_line_last2Bytes) && IBusSimplePlugin_iBusRsp_stages_1_input_payload[1]);
  assign IBusSimplePlugin_fetchPc_predictionPcLoad_valid = (((IBusSimplePlugin_predictor_line_branchWish[1] && IBusSimplePlugin_predictor_hit) && (! IBusSimplePlugin_predictor_hazard)) && IBusSimplePlugin_iBusRsp_stages_1_input_valid);
  assign IBusSimplePlugin_fetchPc_predictionPcLoad_payload = IBusSimplePlugin_predictor_line_target;
  assign IBusSimplePlugin_predictor_fetchContext_hazard = IBusSimplePlugin_predictor_hazard;
  assign IBusSimplePlugin_predictor_fetchContext_hit = IBusSimplePlugin_predictor_hit;
  assign IBusSimplePlugin_predictor_fetchContext_line_source = IBusSimplePlugin_predictor_line_source;
  assign IBusSimplePlugin_predictor_fetchContext_line_branchWish = IBusSimplePlugin_predictor_line_branchWish;
  assign IBusSimplePlugin_predictor_fetchContext_line_last2Bytes = IBusSimplePlugin_predictor_line_last2Bytes;
  assign IBusSimplePlugin_predictor_fetchContext_line_target = IBusSimplePlugin_predictor_line_target;
  assign IBusSimplePlugin_predictor_iBusRspContextOutput_hazard = IBusSimplePlugin_predictor_fetchContext_hazard;
  always @(*) begin
    IBusSimplePlugin_predictor_iBusRspContextOutput_hit = IBusSimplePlugin_predictor_fetchContext_hit;
    if(when_Fetcher_l611) begin
      IBusSimplePlugin_predictor_iBusRspContextOutput_hit = 1'b0;
    end
  end

  assign IBusSimplePlugin_predictor_iBusRspContextOutput_line_source = IBusSimplePlugin_predictor_fetchContext_line_source;
  assign IBusSimplePlugin_predictor_iBusRspContextOutput_line_branchWish = IBusSimplePlugin_predictor_fetchContext_line_branchWish;
  assign IBusSimplePlugin_predictor_iBusRspContextOutput_line_last2Bytes = IBusSimplePlugin_predictor_fetchContext_line_last2Bytes;
  assign IBusSimplePlugin_predictor_iBusRspContextOutput_line_target = IBusSimplePlugin_predictor_fetchContext_line_target;
  assign IBusSimplePlugin_predictor_injectorContext_hazard = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hazard;
  assign IBusSimplePlugin_predictor_injectorContext_hit = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hit;
  assign IBusSimplePlugin_predictor_injectorContext_line_source = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_source;
  assign IBusSimplePlugin_predictor_injectorContext_line_branchWish = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_branchWish;
  assign IBusSimplePlugin_predictor_injectorContext_line_last2Bytes = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_last2Bytes;
  assign IBusSimplePlugin_predictor_injectorContext_line_target = IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_target;
  assign IBusSimplePlugin_fetchPrediction_cmd_hadBranch = ((memory_PREDICTION_CONTEXT_hit && (! memory_PREDICTION_CONTEXT_hazard)) && memory_PREDICTION_CONTEXT_line_branchWish[1]);
  assign IBusSimplePlugin_fetchPrediction_cmd_targetPc = memory_PREDICTION_CONTEXT_line_target;
  always @(*) begin
    IBusSimplePlugin_predictor_historyWrite_valid = 1'b0;
    if(IBusSimplePlugin_fetchPrediction_rsp_wasRight) begin
      IBusSimplePlugin_predictor_historyWrite_valid = memory_PREDICTION_CONTEXT_hit;
    end else begin
      if(memory_PREDICTION_CONTEXT_hit) begin
        IBusSimplePlugin_predictor_historyWrite_valid = 1'b1;
      end else begin
        IBusSimplePlugin_predictor_historyWrite_valid = 1'b1;
      end
    end
    if(when_Fetcher_l596) begin
      IBusSimplePlugin_predictor_historyWrite_valid = 1'b0;
    end
    if(IBusSimplePlugin_predictor_compressor_unalignedWordIssue) begin
      IBusSimplePlugin_predictor_historyWrite_valid = 1'b1;
    end
  end

  always @(*) begin
    IBusSimplePlugin_predictor_historyWrite_payload_address = IBusSimplePlugin_fetchPrediction_rsp_sourceLastWord[11 : 2];
    if(IBusSimplePlugin_predictor_compressor_unalignedWordIssue) begin
      IBusSimplePlugin_predictor_historyWrite_payload_address = _zz_IBusSimplePlugin_predictor_historyWrite_payload_address[9:0];
    end
  end

  assign IBusSimplePlugin_predictor_historyWrite_payload_data_source = (IBusSimplePlugin_fetchPrediction_rsp_sourceLastWord >>> 12);
  assign IBusSimplePlugin_predictor_historyWrite_payload_data_target = IBusSimplePlugin_fetchPrediction_rsp_finalPc;
  assign IBusSimplePlugin_predictor_historyWrite_payload_data_last2Bytes = (memory_PC[1] && memory_IS_RVC);
  always @(*) begin
    if(IBusSimplePlugin_fetchPrediction_rsp_wasRight) begin
      IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish = (_zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish - _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_3);
    end else begin
      if(memory_PREDICTION_CONTEXT_hit) begin
        IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish = (_zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_5 + _zz_IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish_8);
      end else begin
        IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish = 2'b10;
      end
    end
    if(IBusSimplePlugin_predictor_compressor_unalignedWordIssue) begin
      IBusSimplePlugin_predictor_historyWrite_payload_data_branchWish = 2'b00;
    end
  end

  assign when_Fetcher_l596 = (memory_PREDICTION_CONTEXT_hazard || (! memory_arbitration_isFiring));
  assign IBusSimplePlugin_predictor_compressor_predictionBranch = ((IBusSimplePlugin_predictor_fetchContext_hit && (! IBusSimplePlugin_predictor_fetchContext_hazard)) && IBusSimplePlugin_predictor_fetchContext_line_branchWish[1]);
  assign IBusSimplePlugin_predictor_compressor_unalignedWordIssue = (((IBusSimplePlugin_iBusRsp_output_valid && IBusSimplePlugin_predictor_compressor_predictionBranch) && IBusSimplePlugin_predictor_fetchContext_line_last2Bytes) && (IBusSimplePlugin_decompressor_unaligned ? (! IBusSimplePlugin_decompressor_isInputHighRvc) : (IBusSimplePlugin_decompressor_isInputLowRvc && (! IBusSimplePlugin_decompressor_isInputHighRvc))));
  assign when_Fetcher_l611 = (IBusSimplePlugin_predictor_fetchContext_line_last2Bytes && (IBusSimplePlugin_decompressor_bufferValid || ((! IBusSimplePlugin_decompressor_throw2Bytes) && IBusSimplePlugin_decompressor_isInputLowRvc)));
  assign IBusSimplePlugin_injector_decodeInput_fire = (IBusSimplePlugin_injector_decodeInput_valid && IBusSimplePlugin_injector_decodeInput_ready);
  assign IBusSimplePlugin_decodePc_predictionPcLoad_valid = (((IBusSimplePlugin_predictor_injectorContext_line_branchWish[1] && IBusSimplePlugin_predictor_injectorContext_hit) && (! IBusSimplePlugin_predictor_injectorContext_hazard)) && IBusSimplePlugin_injector_decodeInput_fire);
  assign IBusSimplePlugin_decodePc_predictionPcLoad_payload = IBusSimplePlugin_predictor_injectorContext_line_target;
  assign IBusSimplePlugin_decompressor_output_fire_1 = (IBusSimplePlugin_decompressor_output_valid && IBusSimplePlugin_decompressor_output_ready);
  assign when_Fetcher_l617 = (((IBusSimplePlugin_predictor_fetchContext_line_branchWish[1] && IBusSimplePlugin_predictor_iBusRspContextOutput_hit) && (! IBusSimplePlugin_predictor_fetchContext_hazard)) && IBusSimplePlugin_decompressor_output_fire_1);
  assign iBus_cmd_valid = IBusSimplePlugin_cmd_valid;
  assign IBusSimplePlugin_cmd_ready = iBus_cmd_ready;
  assign iBus_cmd_payload_pc = IBusSimplePlugin_cmd_payload_pc;
  assign IBusSimplePlugin_pending_next = (_zz_IBusSimplePlugin_pending_next - _zz_IBusSimplePlugin_pending_next_3);
  assign IBusSimplePlugin_cmdFork_canEmit = (IBusSimplePlugin_iBusRsp_stages_0_output_ready && (IBusSimplePlugin_pending_value != 3'b111));
  assign when_IBusSimplePlugin_l305 = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && ((! IBusSimplePlugin_cmdFork_canEmit) || (! IBusSimplePlugin_cmd_ready)));
  assign IBusSimplePlugin_cmd_valid = (IBusSimplePlugin_iBusRsp_stages_0_input_valid && IBusSimplePlugin_cmdFork_canEmit);
  assign IBusSimplePlugin_cmd_fire = (IBusSimplePlugin_cmd_valid && IBusSimplePlugin_cmd_ready);
  assign IBusSimplePlugin_pending_inc = IBusSimplePlugin_cmd_fire;
  assign IBusSimplePlugin_cmd_payload_pc = {IBusSimplePlugin_iBusRsp_stages_0_input_payload[31 : 2],2'b00};
  assign iBus_rsp_toStream_valid = iBus_rsp_valid;
  assign iBus_rsp_toStream_payload_error = iBus_rsp_payload_error;
  assign iBus_rsp_toStream_payload_inst = iBus_rsp_payload_inst;
  assign iBus_rsp_toStream_ready = IBusSimplePlugin_rspJoin_rspBuffer_c_io_push_ready;
  assign IBusSimplePlugin_rspJoin_rspBuffer_flush = ((IBusSimplePlugin_rspJoin_rspBuffer_discardCounter != 3'b000) || IBusSimplePlugin_iBusRsp_flush);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_valid = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter == 3'b000));
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_error;
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_payload_inst;
  assign IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready = (IBusSimplePlugin_rspJoin_rspBuffer_output_ready || IBusSimplePlugin_rspJoin_rspBuffer_flush);
  assign IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire = (IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_valid && IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_ready);
  assign IBusSimplePlugin_pending_dec = IBusSimplePlugin_rspJoin_rspBuffer_c_io_pop_fire;
  assign IBusSimplePlugin_rspJoin_fetchRsp_pc = IBusSimplePlugin_iBusRsp_stages_1_output_payload;
  always @(*) begin
    IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_error;
    if(when_IBusSimplePlugin_l376) begin
      IBusSimplePlugin_rspJoin_fetchRsp_rsp_error = 1'b0;
    end
  end

  assign IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst = IBusSimplePlugin_rspJoin_rspBuffer_output_payload_inst;
  assign when_IBusSimplePlugin_l376 = (! IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  assign IBusSimplePlugin_rspJoin_exceptionDetected = 1'b0;
  assign IBusSimplePlugin_rspJoin_join_valid = (IBusSimplePlugin_iBusRsp_stages_1_output_valid && IBusSimplePlugin_rspJoin_rspBuffer_output_valid);
  assign IBusSimplePlugin_rspJoin_join_payload_pc = IBusSimplePlugin_rspJoin_fetchRsp_pc;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_error = IBusSimplePlugin_rspJoin_fetchRsp_rsp_error;
  assign IBusSimplePlugin_rspJoin_join_payload_rsp_inst = IBusSimplePlugin_rspJoin_fetchRsp_rsp_inst;
  assign IBusSimplePlugin_rspJoin_join_payload_isRvc = IBusSimplePlugin_rspJoin_fetchRsp_isRvc;
  assign IBusSimplePlugin_rspJoin_join_fire = (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_iBusRsp_stages_1_output_ready = (IBusSimplePlugin_iBusRsp_stages_1_output_valid ? IBusSimplePlugin_rspJoin_join_fire : IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_rspJoin_join_fire_1 = (IBusSimplePlugin_rspJoin_join_valid && IBusSimplePlugin_rspJoin_join_ready);
  assign IBusSimplePlugin_rspJoin_rspBuffer_output_ready = IBusSimplePlugin_rspJoin_join_fire_1;
  assign _zz_IBusSimplePlugin_iBusRsp_output_valid = (! IBusSimplePlugin_rspJoin_exceptionDetected);
  assign IBusSimplePlugin_rspJoin_join_ready = (IBusSimplePlugin_iBusRsp_output_ready && _zz_IBusSimplePlugin_iBusRsp_output_valid);
  assign IBusSimplePlugin_iBusRsp_output_valid = (IBusSimplePlugin_rspJoin_join_valid && _zz_IBusSimplePlugin_iBusRsp_output_valid);
  assign IBusSimplePlugin_iBusRsp_output_payload_pc = IBusSimplePlugin_rspJoin_join_payload_pc;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_error = IBusSimplePlugin_rspJoin_join_payload_rsp_error;
  assign IBusSimplePlugin_iBusRsp_output_payload_rsp_inst = IBusSimplePlugin_rspJoin_join_payload_rsp_inst;
  assign IBusSimplePlugin_iBusRsp_output_payload_isRvc = IBusSimplePlugin_rspJoin_join_payload_isRvc;
  assign _zz_dBus_cmd_valid = 1'b0;
  always @(*) begin
    execute_DBusSimplePlugin_skipCmd = 1'b0;
    if(execute_ALIGNEMENT_FAULT) begin
      execute_DBusSimplePlugin_skipCmd = 1'b1;
    end
  end

  assign dBus_cmd_valid = (((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! execute_arbitration_isStuckByOthers)) && (! execute_arbitration_isFlushed)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_dBus_cmd_valid));
  assign dBus_cmd_payload_wr = execute_MEMORY_STORE;
  assign dBus_cmd_payload_size = execute_INSTRUCTION[13 : 12];
  always @(*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_dBus_cmd_payload_data = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_dBus_cmd_payload_data = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_dBus_cmd_payload_data = execute_RS2[31 : 0];
      end
    endcase
  end

  assign dBus_cmd_payload_data = _zz_dBus_cmd_payload_data;
  assign when_DBusSimplePlugin_l428 = ((((execute_arbitration_isValid && execute_MEMORY_ENABLE) && (! dBus_cmd_ready)) && (! execute_DBusSimplePlugin_skipCmd)) && (! _zz_dBus_cmd_valid));
  always @(*) begin
    case(dBus_cmd_payload_size)
      2'b00 : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b0001;
      end
      2'b01 : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b0011;
      end
      default : begin
        _zz_execute_DBusSimplePlugin_formalMask = 4'b1111;
      end
    endcase
  end

  assign execute_DBusSimplePlugin_formalMask = (_zz_execute_DBusSimplePlugin_formalMask <<< dBus_cmd_payload_address[1 : 0]);
  assign dBus_cmd_payload_address = execute_SRC_ADD;
  assign when_DBusSimplePlugin_l482 = (((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (! memory_MEMORY_STORE)) && ((! dBus_rsp_ready) || 1'b0));
  always @(*) begin
    DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    if(memory_ALIGNEMENT_FAULT) begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b1;
    end
    if(when_DBusSimplePlugin_l515) begin
      DBusSimplePlugin_memoryExceptionPort_valid = 1'b0;
    end
  end

  always @(*) begin
    DBusSimplePlugin_memoryExceptionPort_payload_code = 4'bxxxx;
    if(memory_ALIGNEMENT_FAULT) begin
      DBusSimplePlugin_memoryExceptionPort_payload_code = {1'd0, _zz_DBusSimplePlugin_memoryExceptionPort_payload_code};
    end
  end

  assign DBusSimplePlugin_memoryExceptionPort_payload_badAddr = memory_REGFILE_WRITE_DATA;
  assign when_DBusSimplePlugin_l515 = (! ((memory_arbitration_isValid && memory_MEMORY_ENABLE) && (1'b1 || (! memory_arbitration_isStuckByOthers))));
  always @(*) begin
    writeBack_DBusSimplePlugin_rspShifted = writeBack_MEMORY_READ_DATA;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusSimplePlugin_rspShifted[15 : 0] = writeBack_MEMORY_READ_DATA[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusSimplePlugin_rspShifted[7 : 0] = writeBack_MEMORY_READ_DATA[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign switch_Misc_l211_2 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_writeBack_DBusSimplePlugin_rspFormated = (writeBack_DBusSimplePlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[31] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[30] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[29] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[28] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[27] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[26] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[25] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[24] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[23] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[22] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[21] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[20] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[19] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[18] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[17] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[16] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[15] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[14] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[13] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[12] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[11] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[10] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[9] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[8] = _zz_writeBack_DBusSimplePlugin_rspFormated;
    _zz_writeBack_DBusSimplePlugin_rspFormated_1[7 : 0] = writeBack_DBusSimplePlugin_rspShifted[7 : 0];
  end

  assign _zz_writeBack_DBusSimplePlugin_rspFormated_2 = (writeBack_DBusSimplePlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @(*) begin
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[31] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[30] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[29] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[28] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[27] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[26] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[25] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[24] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[23] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[22] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[21] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[20] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[19] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[18] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[17] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[16] = _zz_writeBack_DBusSimplePlugin_rspFormated_2;
    _zz_writeBack_DBusSimplePlugin_rspFormated_3[15 : 0] = writeBack_DBusSimplePlugin_rspShifted[15 : 0];
  end

  always @(*) begin
    case(switch_Misc_l211_2)
      2'b00 : begin
        writeBack_DBusSimplePlugin_rspFormated = _zz_writeBack_DBusSimplePlugin_rspFormated_1;
      end
      2'b01 : begin
        writeBack_DBusSimplePlugin_rspFormated = _zz_writeBack_DBusSimplePlugin_rspFormated_3;
      end
      default : begin
        writeBack_DBusSimplePlugin_rspFormated = writeBack_DBusSimplePlugin_rspShifted;
      end
    endcase
  end

  assign when_DBusSimplePlugin_l558 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_decode_BRANCH_CTRL_3 = ((decode_INSTRUCTION & 32'h00000018) == 32'h0);
  assign _zz_decode_BRANCH_CTRL_4 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_decode_BRANCH_CTRL_5 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_decode_BRANCH_CTRL_6 = ((decode_INSTRUCTION & 32'h00000010) == 32'h00000010);
  assign _zz_decode_BRANCH_CTRL_2 = {(|{_zz_decode_BRANCH_CTRL_5,(_zz__zz_decode_BRANCH_CTRL_2 == _zz__zz_decode_BRANCH_CTRL_2_1)}),{(|(_zz__zz_decode_BRANCH_CTRL_2_2 == _zz__zz_decode_BRANCH_CTRL_2_3)),{(|_zz__zz_decode_BRANCH_CTRL_2_4),{(|_zz__zz_decode_BRANCH_CTRL_2_5),{_zz__zz_decode_BRANCH_CTRL_2_8,{_zz__zz_decode_BRANCH_CTRL_2_10,_zz__zz_decode_BRANCH_CTRL_2_13}}}}}};
  assign _zz_decode_SRC1_CTRL_2 = _zz_decode_BRANCH_CTRL_2[1 : 0];
  assign _zz_decode_SRC1_CTRL_1 = _zz_decode_SRC1_CTRL_2;
  assign _zz_decode_ALU_CTRL_2 = _zz_decode_BRANCH_CTRL_2[6 : 5];
  assign _zz_decode_ALU_CTRL_1 = _zz_decode_ALU_CTRL_2;
  assign _zz_decode_SRC2_CTRL_2 = _zz_decode_BRANCH_CTRL_2[8 : 7];
  assign _zz_decode_SRC2_CTRL_1 = _zz_decode_SRC2_CTRL_2;
  assign _zz_decode_ALU_BITWISE_CTRL_2 = _zz_decode_BRANCH_CTRL_2[17 : 16];
  assign _zz_decode_ALU_BITWISE_CTRL_1 = _zz_decode_ALU_BITWISE_CTRL_2;
  assign _zz_decode_SHIFT_CTRL_2 = _zz_decode_BRANCH_CTRL_2[20 : 19];
  assign _zz_decode_SHIFT_CTRL_1 = _zz_decode_SHIFT_CTRL_2;
  assign _zz_decode_BRANCH_CTRL_7 = _zz_decode_BRANCH_CTRL_2[22 : 21];
  assign _zz_decode_BRANCH_CTRL_1 = _zz_decode_BRANCH_CTRL_7;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign when_RegFilePlugin_l63 = (decode_INSTRUCTION[11 : 7] == 5'h0);
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_RegFilePlugin_regFile_port0;
  assign decode_RegFilePlugin_rs2Data = _zz_RegFilePlugin_regFile_port1;
  always @(*) begin
    lastStageRegFileWrite_valid = (_zz_rvfi_rd_addr && writeBack_arbitration_isFiring);
    if(_zz_3) begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_address = _zz_rvfi_rs1_addr[11 : 7];
    if(_zz_3) begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @(*) begin
    lastStageRegFileWrite_payload_data = _zz_rvfi_rd_wdata;
    if(_zz_3) begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      AluBitwiseCtrlEnum_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      AluBitwiseCtrlEnum_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @(*) begin
    case(execute_ALU_CTRL)
      AluCtrlEnum_BITWISE : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_IntAluPlugin_bitwise;
      end
      AluCtrlEnum_SLT_SLTU : begin
        _zz_execute_REGFILE_WRITE_DATA = {31'd0, _zz__zz_execute_REGFILE_WRITE_DATA};
      end
      default : begin
        _zz_execute_REGFILE_WRITE_DATA = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @(*) begin
    case(decode_SRC1_CTRL)
      Src1CtrlEnum_RS : begin
        _zz_decode_SRC1_1 = _zz_decode_SRC1;
      end
      Src1CtrlEnum_PC_INCREMENT : begin
        _zz_decode_SRC1_1 = {29'd0, _zz__zz_decode_SRC1_1};
      end
      Src1CtrlEnum_IMU : begin
        _zz_decode_SRC1_1 = {decode_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_decode_SRC1_1 = {27'd0, _zz__zz_decode_SRC1_1_1};
      end
    endcase
  end

  assign _zz_decode_SRC2_2 = decode_INSTRUCTION[31];
  always @(*) begin
    _zz_decode_SRC2_3[19] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[18] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[17] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[16] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[15] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[14] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[13] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[12] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[11] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[10] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[9] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[8] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[7] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[6] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[5] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[4] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[3] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[2] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[1] = _zz_decode_SRC2_2;
    _zz_decode_SRC2_3[0] = _zz_decode_SRC2_2;
  end

  assign _zz_decode_SRC2_4 = _zz__zz_decode_SRC2_4[11];
  always @(*) begin
    _zz_decode_SRC2_5[19] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[18] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[17] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[16] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[15] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[14] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[13] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[12] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[11] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[10] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[9] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[8] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[7] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[6] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[5] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[4] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[3] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[2] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[1] = _zz_decode_SRC2_4;
    _zz_decode_SRC2_5[0] = _zz_decode_SRC2_4;
  end

  always @(*) begin
    case(decode_SRC2_CTRL)
      Src2CtrlEnum_RS : begin
        _zz_decode_SRC2_6 = _zz_decode_SRC2_1;
      end
      Src2CtrlEnum_IMI : begin
        _zz_decode_SRC2_6 = {_zz_decode_SRC2_3,decode_INSTRUCTION[31 : 20]};
      end
      Src2CtrlEnum_IMS : begin
        _zz_decode_SRC2_6 = {_zz_decode_SRC2_5,{decode_INSTRUCTION[31 : 25],decode_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_decode_SRC2_6 = _zz_decode_SRC2;
      end
    endcase
  end

  always @(*) begin
    execute_SrcPlugin_addSub = _zz_execute_SrcPlugin_addSub;
    if(execute_SRC2_FORCE_ZERO) begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @(*) begin
    _zz_execute_FullBarrelShifterPlugin_reversed[0] = execute_SRC1[31];
    _zz_execute_FullBarrelShifterPlugin_reversed[1] = execute_SRC1[30];
    _zz_execute_FullBarrelShifterPlugin_reversed[2] = execute_SRC1[29];
    _zz_execute_FullBarrelShifterPlugin_reversed[3] = execute_SRC1[28];
    _zz_execute_FullBarrelShifterPlugin_reversed[4] = execute_SRC1[27];
    _zz_execute_FullBarrelShifterPlugin_reversed[5] = execute_SRC1[26];
    _zz_execute_FullBarrelShifterPlugin_reversed[6] = execute_SRC1[25];
    _zz_execute_FullBarrelShifterPlugin_reversed[7] = execute_SRC1[24];
    _zz_execute_FullBarrelShifterPlugin_reversed[8] = execute_SRC1[23];
    _zz_execute_FullBarrelShifterPlugin_reversed[9] = execute_SRC1[22];
    _zz_execute_FullBarrelShifterPlugin_reversed[10] = execute_SRC1[21];
    _zz_execute_FullBarrelShifterPlugin_reversed[11] = execute_SRC1[20];
    _zz_execute_FullBarrelShifterPlugin_reversed[12] = execute_SRC1[19];
    _zz_execute_FullBarrelShifterPlugin_reversed[13] = execute_SRC1[18];
    _zz_execute_FullBarrelShifterPlugin_reversed[14] = execute_SRC1[17];
    _zz_execute_FullBarrelShifterPlugin_reversed[15] = execute_SRC1[16];
    _zz_execute_FullBarrelShifterPlugin_reversed[16] = execute_SRC1[15];
    _zz_execute_FullBarrelShifterPlugin_reversed[17] = execute_SRC1[14];
    _zz_execute_FullBarrelShifterPlugin_reversed[18] = execute_SRC1[13];
    _zz_execute_FullBarrelShifterPlugin_reversed[19] = execute_SRC1[12];
    _zz_execute_FullBarrelShifterPlugin_reversed[20] = execute_SRC1[11];
    _zz_execute_FullBarrelShifterPlugin_reversed[21] = execute_SRC1[10];
    _zz_execute_FullBarrelShifterPlugin_reversed[22] = execute_SRC1[9];
    _zz_execute_FullBarrelShifterPlugin_reversed[23] = execute_SRC1[8];
    _zz_execute_FullBarrelShifterPlugin_reversed[24] = execute_SRC1[7];
    _zz_execute_FullBarrelShifterPlugin_reversed[25] = execute_SRC1[6];
    _zz_execute_FullBarrelShifterPlugin_reversed[26] = execute_SRC1[5];
    _zz_execute_FullBarrelShifterPlugin_reversed[27] = execute_SRC1[4];
    _zz_execute_FullBarrelShifterPlugin_reversed[28] = execute_SRC1[3];
    _zz_execute_FullBarrelShifterPlugin_reversed[29] = execute_SRC1[2];
    _zz_execute_FullBarrelShifterPlugin_reversed[30] = execute_SRC1[1];
    _zz_execute_FullBarrelShifterPlugin_reversed[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == ShiftCtrlEnum_SLL_1) ? _zz_execute_FullBarrelShifterPlugin_reversed : execute_SRC1);
  always @(*) begin
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[0] = memory_SHIFT_RIGHT[31];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[1] = memory_SHIFT_RIGHT[30];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[2] = memory_SHIFT_RIGHT[29];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[3] = memory_SHIFT_RIGHT[28];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[4] = memory_SHIFT_RIGHT[27];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[5] = memory_SHIFT_RIGHT[26];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[6] = memory_SHIFT_RIGHT[25];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[7] = memory_SHIFT_RIGHT[24];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[8] = memory_SHIFT_RIGHT[23];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[9] = memory_SHIFT_RIGHT[22];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[10] = memory_SHIFT_RIGHT[21];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[11] = memory_SHIFT_RIGHT[20];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[12] = memory_SHIFT_RIGHT[19];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[13] = memory_SHIFT_RIGHT[18];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[14] = memory_SHIFT_RIGHT[17];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[15] = memory_SHIFT_RIGHT[16];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[16] = memory_SHIFT_RIGHT[15];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[17] = memory_SHIFT_RIGHT[14];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[18] = memory_SHIFT_RIGHT[13];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[19] = memory_SHIFT_RIGHT[12];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[20] = memory_SHIFT_RIGHT[11];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[21] = memory_SHIFT_RIGHT[10];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[22] = memory_SHIFT_RIGHT[9];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[23] = memory_SHIFT_RIGHT[8];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[24] = memory_SHIFT_RIGHT[7];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[25] = memory_SHIFT_RIGHT[6];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[26] = memory_SHIFT_RIGHT[5];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[27] = memory_SHIFT_RIGHT[4];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[28] = memory_SHIFT_RIGHT[3];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[29] = memory_SHIFT_RIGHT[2];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[30] = memory_SHIFT_RIGHT[1];
    _zz_memory_to_writeBack_REGFILE_WRITE_DATA_1[31] = memory_SHIFT_RIGHT[0];
  end

  always @(*) begin
    HazardSimplePlugin_src0Hazard = 1'b0;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr0Match) begin
        HazardSimplePlugin_src0Hazard = 1'b1;
      end
    end
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l59) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l59_1) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l59_2) begin
          HazardSimplePlugin_src0Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l105) begin
      HazardSimplePlugin_src0Hazard = 1'b0;
    end
  end

  always @(*) begin
    HazardSimplePlugin_src1Hazard = 1'b0;
    if(HazardSimplePlugin_writeBackBuffer_valid) begin
      if(HazardSimplePlugin_addr1Match) begin
        HazardSimplePlugin_src1Hazard = 1'b1;
      end
    end
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l62) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_1) begin
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l62_1) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l57_2) begin
      if(when_HazardSimplePlugin_l58_2) begin
        if(when_HazardSimplePlugin_l62_2) begin
          HazardSimplePlugin_src1Hazard = 1'b1;
        end
      end
    end
    if(when_HazardSimplePlugin_l108) begin
      HazardSimplePlugin_src1Hazard = 1'b0;
    end
  end

  assign HazardSimplePlugin_writeBackWrites_valid = (_zz_rvfi_rd_addr && writeBack_arbitration_isFiring);
  assign HazardSimplePlugin_writeBackWrites_payload_address = _zz_rvfi_rs1_addr[11 : 7];
  assign HazardSimplePlugin_writeBackWrites_payload_data = _zz_rvfi_rd_wdata;
  assign HazardSimplePlugin_addr0Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[19 : 15]);
  assign HazardSimplePlugin_addr1Match = (HazardSimplePlugin_writeBackBuffer_payload_address == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l59 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l62 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l57 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58 = (1'b1 || (! 1'b1));
  assign when_HazardSimplePlugin_l59_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l62_1 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l57_1 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_1 = (1'b1 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign when_HazardSimplePlugin_l59_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign when_HazardSimplePlugin_l62_2 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign when_HazardSimplePlugin_l57_2 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign when_HazardSimplePlugin_l58_2 = (1'b1 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign when_HazardSimplePlugin_l105 = (! decode_RS1_USE);
  assign when_HazardSimplePlugin_l108 = (! decode_RS2_USE);
  assign when_HazardSimplePlugin_l113 = (decode_arbitration_isValid && (HazardSimplePlugin_src0Hazard || HazardSimplePlugin_src1Hazard));
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign switch_Misc_l211_3 = execute_INSTRUCTION[14 : 12];
  always @(*) begin
    casez(switch_Misc_l211_3)
      3'b000 : begin
        _zz_execute_BRANCH_DO = execute_BranchPlugin_eq;
      end
      3'b001 : begin
        _zz_execute_BRANCH_DO = (! execute_BranchPlugin_eq);
      end
      3'b1?1 : begin
        _zz_execute_BRANCH_DO = (! execute_SRC_LESS);
      end
      default : begin
        _zz_execute_BRANCH_DO = execute_SRC_LESS;
      end
    endcase
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : begin
        _zz_execute_BRANCH_DO_1 = 1'b0;
      end
      BranchCtrlEnum_JAL : begin
        _zz_execute_BRANCH_DO_1 = 1'b1;
      end
      BranchCtrlEnum_JALR : begin
        _zz_execute_BRANCH_DO_1 = 1'b1;
      end
      default : begin
        _zz_execute_BRANCH_DO_1 = _zz_execute_BRANCH_DO;
      end
    endcase
  end

  assign execute_BranchPlugin_branch_src1 = ((execute_BRANCH_CTRL == BranchCtrlEnum_JALR) ? execute_RS1 : execute_PC);
  assign _zz_execute_BRANCH_SRC22 = _zz__zz_execute_BRANCH_SRC22[19];
  always @(*) begin
    _zz_execute_BRANCH_SRC22_1[10] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[9] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[8] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[7] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[6] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[5] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[4] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[3] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[2] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[1] = _zz_execute_BRANCH_SRC22;
    _zz_execute_BRANCH_SRC22_1[0] = _zz_execute_BRANCH_SRC22;
  end

  assign _zz_execute_BRANCH_SRC22_2 = execute_INSTRUCTION[31];
  always @(*) begin
    _zz_execute_BRANCH_SRC22_3[19] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[18] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[17] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[16] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[15] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[14] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[13] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[12] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[11] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[10] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[9] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[8] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[7] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[6] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[5] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[4] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[3] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[2] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[1] = _zz_execute_BRANCH_SRC22_2;
    _zz_execute_BRANCH_SRC22_3[0] = _zz_execute_BRANCH_SRC22_2;
  end

  assign _zz_execute_BRANCH_SRC22_4 = _zz__zz_execute_BRANCH_SRC22_4[11];
  always @(*) begin
    _zz_execute_BRANCH_SRC22_5[18] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[17] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[16] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[15] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[14] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[13] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[12] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[11] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[10] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[9] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[8] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[7] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[6] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[5] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[4] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[3] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[2] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[1] = _zz_execute_BRANCH_SRC22_4;
    _zz_execute_BRANCH_SRC22_5[0] = _zz_execute_BRANCH_SRC22_4;
  end

  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_JAL : begin
        _zz_execute_BRANCH_SRC22_6 = {{_zz_execute_BRANCH_SRC22_1,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
      end
      BranchCtrlEnum_JALR : begin
        _zz_execute_BRANCH_SRC22_6 = {_zz_execute_BRANCH_SRC22_3,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        _zz_execute_BRANCH_SRC22_6 = {{_zz_execute_BRANCH_SRC22_5,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
      end
    endcase
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BRANCH_SRC22);
  assign memory_BranchPlugin_predictionMissmatch = ((IBusSimplePlugin_fetchPrediction_cmd_hadBranch != memory_BRANCH_DO) || (memory_BRANCH_DO && memory_TARGET_MISSMATCH2));
  assign IBusSimplePlugin_fetchPrediction_rsp_wasRight = (! memory_BranchPlugin_predictionMissmatch);
  assign IBusSimplePlugin_fetchPrediction_rsp_finalPc = memory_BRANCH_CALC;
  assign IBusSimplePlugin_fetchPrediction_rsp_sourceLastWord = (((! memory_IS_RVC) && memory_PC[1]) ? memory_NEXT_PC2 : memory_PC);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BranchPlugin_predictionMissmatch) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = (memory_BRANCH_DO ? memory_BRANCH_CALC : memory_NEXT_PC2);
  assign when_Pipeline_l124 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_1 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_2 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_3 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_4 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_5 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_6 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_7 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_8 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_9 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_10 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_11 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_12 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_13 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_14 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_15 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_16 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_17 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_18 = (! memory_arbitration_isStuck);
  assign _zz_decode_SRC1_CTRL = _zz_decode_SRC1_CTRL_1;
  assign when_Pipeline_l124_19 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_20 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_21 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_22 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_23 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_24 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_25 = (! writeBack_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_CTRL_1 = decode_ALU_CTRL;
  assign _zz_decode_ALU_CTRL = _zz_decode_ALU_CTRL_1;
  assign when_Pipeline_l124_26 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_CTRL = decode_to_execute_ALU_CTRL;
  assign _zz_decode_SRC2_CTRL = _zz_decode_SRC2_CTRL_1;
  assign when_Pipeline_l124_27 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_28 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_29 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_30 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_31 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_32 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_33 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_34 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_35 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_36 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_37 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_38 = (! execute_arbitration_isStuck);
  assign _zz_decode_to_execute_ALU_BITWISE_CTRL_1 = decode_ALU_BITWISE_CTRL;
  assign _zz_decode_ALU_BITWISE_CTRL = _zz_decode_ALU_BITWISE_CTRL_1;
  assign when_Pipeline_l124_39 = (! execute_arbitration_isStuck);
  assign _zz_execute_ALU_BITWISE_CTRL = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_decode_to_execute_SHIFT_CTRL_1 = decode_SHIFT_CTRL;
  assign _zz_execute_to_memory_SHIFT_CTRL_1 = execute_SHIFT_CTRL;
  assign _zz_decode_SHIFT_CTRL = _zz_decode_SHIFT_CTRL_1;
  assign when_Pipeline_l124_40 = (! execute_arbitration_isStuck);
  assign _zz_execute_SHIFT_CTRL = decode_to_execute_SHIFT_CTRL;
  assign when_Pipeline_l124_41 = (! memory_arbitration_isStuck);
  assign _zz_memory_SHIFT_CTRL = execute_to_memory_SHIFT_CTRL;
  assign _zz_decode_to_execute_BRANCH_CTRL_1 = decode_BRANCH_CTRL;
  assign _zz_decode_BRANCH_CTRL = _zz_decode_BRANCH_CTRL_1;
  assign when_Pipeline_l124_42 = (! execute_arbitration_isStuck);
  assign _zz_execute_BRANCH_CTRL = decode_to_execute_BRANCH_CTRL;
  assign when_Pipeline_l124_43 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_44 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_45 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_46 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_47 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_48 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_49 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_50 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_51 = (! execute_arbitration_isStuck);
  assign when_Pipeline_l124_52 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_53 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_54 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_55 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_56 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_57 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_58 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_59 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_60 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_61 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_62 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_63 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_64 = (! writeBack_arbitration_isStuck);
  assign when_Pipeline_l124_65 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_66 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_67 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_68 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_69 = (! memory_arbitration_isStuck);
  assign when_Pipeline_l124_70 = (! writeBack_arbitration_isStuck);
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  assign when_Pipeline_l151 = ((! execute_arbitration_isStuck) || execute_arbitration_removeIt);
  assign when_Pipeline_l154 = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign when_Pipeline_l151_1 = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  assign when_Pipeline_l154_1 = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign when_Pipeline_l151_2 = ((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt);
  assign when_Pipeline_l154_2 = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  always @(posedge clk) begin
    if(reset) begin
      writeBack_FormalPlugin_order <= 64'h0;
      writeBack_FormalPlugin_haltRequest_delay_1 <= 1'b0;
      writeBack_FormalPlugin_haltRequest_delay_2 <= 1'b0;
      writeBack_FormalPlugin_haltRequest_delay_3 <= 1'b0;
      writeBack_FormalPlugin_haltRequest_delay_4 <= 1'b0;
      writeBack_FormalPlugin_haltRequest_delay_5 <= 1'b0;
      writeBack_FormalPlugin_haltFired <= 1'b0;
      IBusSimplePlugin_fetchPc_pcReg <= 32'h0;
      IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      IBusSimplePlugin_fetchPc_booted <= 1'b0;
      IBusSimplePlugin_fetchPc_inc <= 1'b0;
      IBusSimplePlugin_decodePc_pcReg <= 32'h0;
      _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= 1'b0;
      IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      IBusSimplePlugin_decompressor_throw2BytesReg <= 1'b0;
      _zz_IBusSimplePlugin_injector_decodeInput_valid <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusSimplePlugin_pending_value <= 3'b000;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= 3'b000;
      _zz_3 <= 1'b1;
      HazardSimplePlugin_writeBackBuffer_valid <= 1'b0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
    end else begin
      if(writeBack_arbitration_isFiring) begin
        writeBack_FormalPlugin_order <= (writeBack_FormalPlugin_order + 64'h0000000000000001);
      end
      writeBack_FormalPlugin_haltRequest_delay_1 <= writeBack_FormalPlugin_haltRequest;
      writeBack_FormalPlugin_haltRequest_delay_2 <= writeBack_FormalPlugin_haltRequest_delay_1;
      writeBack_FormalPlugin_haltRequest_delay_3 <= writeBack_FormalPlugin_haltRequest_delay_2;
      writeBack_FormalPlugin_haltRequest_delay_4 <= writeBack_FormalPlugin_haltRequest_delay_3;
      writeBack_FormalPlugin_haltRequest_delay_5 <= writeBack_FormalPlugin_haltRequest_delay_4;
      if(when_FormalPlugin_l127) begin
        writeBack_FormalPlugin_haltFired <= 1'b1;
      end
      if(IBusSimplePlugin_fetchPc_correction) begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b1;
      end
      if(IBusSimplePlugin_fetchPc_output_fire) begin
        IBusSimplePlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusSimplePlugin_fetchPc_booted <= 1'b1;
      if(when_Fetcher_l131) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if(IBusSimplePlugin_fetchPc_output_fire_1) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b1;
      end
      if(when_Fetcher_l131_1) begin
        IBusSimplePlugin_fetchPc_inc <= 1'b0;
      end
      if(when_Fetcher_l158) begin
        IBusSimplePlugin_fetchPc_pcReg <= IBusSimplePlugin_fetchPc_pc;
      end
      if(when_Fetcher_l180) begin
        IBusSimplePlugin_decodePc_pcReg <= IBusSimplePlugin_decodePc_pcPlus;
      end
      if(IBusSimplePlugin_decodePc_predictionPcLoad_valid) begin
        IBusSimplePlugin_decodePc_pcReg <= IBusSimplePlugin_decodePc_predictionPcLoad_payload;
      end
      if(when_Fetcher_l192) begin
        IBusSimplePlugin_decodePc_pcReg <= IBusSimplePlugin_jump_pcLoad_payload;
      end
      if(IBusSimplePlugin_iBusRsp_flush) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= 1'b0;
      end
      if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
        _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_valid <= (IBusSimplePlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(IBusSimplePlugin_decompressor_output_fire) begin
        IBusSimplePlugin_decompressor_throw2BytesReg <= ((((! IBusSimplePlugin_decompressor_unaligned) && IBusSimplePlugin_decompressor_isInputLowRvc) && IBusSimplePlugin_decompressor_isInputHighRvc) || (IBusSimplePlugin_decompressor_bufferValid && IBusSimplePlugin_decompressor_isInputHighRvc));
      end
      if(when_Fetcher_l283) begin
        IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      end
      if(when_Fetcher_l286) begin
        if(IBusSimplePlugin_decompressor_bufferFill) begin
          IBusSimplePlugin_decompressor_bufferValid <= 1'b1;
        end
      end
      if(when_Fetcher_l291) begin
        IBusSimplePlugin_decompressor_throw2BytesReg <= 1'b0;
        IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
      end
      if(decode_arbitration_removeIt) begin
        _zz_IBusSimplePlugin_injector_decodeInput_valid <= 1'b0;
      end
      if(IBusSimplePlugin_decompressor_output_ready) begin
        _zz_IBusSimplePlugin_injector_decodeInput_valid <= (IBusSimplePlugin_decompressor_output_valid && (! IBusSimplePlugin_externalFlush));
      end
      if(when_Fetcher_l329) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if(when_Fetcher_l329_1) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= IBusSimplePlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(when_Fetcher_l329_2) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= IBusSimplePlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(when_Fetcher_l329_3) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= IBusSimplePlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusSimplePlugin_decodePc_flushed) begin
        IBusSimplePlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(when_Fetcher_l617) begin
        IBusSimplePlugin_decompressor_bufferValid <= 1'b0;
        IBusSimplePlugin_decompressor_throw2BytesReg <= 1'b0;
      end
      IBusSimplePlugin_pending_value <= IBusSimplePlugin_pending_next;
      IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_rspJoin_rspBuffer_discardCounter - _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter);
      if(IBusSimplePlugin_iBusRsp_flush) begin
        IBusSimplePlugin_rspJoin_rspBuffer_discardCounter <= (IBusSimplePlugin_pending_value - _zz_IBusSimplePlugin_rspJoin_rspBuffer_discardCounter_2);
      end
      _zz_3 <= 1'b0;
      HazardSimplePlugin_writeBackBuffer_valid <= HazardSimplePlugin_writeBackWrites_valid;
      if(when_Pipeline_l151) begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154) begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(when_Pipeline_l151_1) begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_1) begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(when_Pipeline_l151_2) begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(when_Pipeline_l154_2) begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
    end
  end

  always @(posedge clk) begin
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      _zz_IBusSimplePlugin_iBusRsp_stages_0_output_m2sPipe_payload <= IBusSimplePlugin_iBusRsp_stages_0_output_payload;
    end
    if(IBusSimplePlugin_decompressor_input_valid) begin
      IBusSimplePlugin_decompressor_bufferValidLatch <= IBusSimplePlugin_decompressor_bufferValid;
    end
    if(IBusSimplePlugin_decompressor_input_valid) begin
      IBusSimplePlugin_decompressor_throw2BytesLatch <= IBusSimplePlugin_decompressor_throw2Bytes;
    end
    if(when_Fetcher_l286) begin
      IBusSimplePlugin_decompressor_bufferData <= IBusSimplePlugin_decompressor_input_payload_rsp_inst[31 : 16];
    end
    if(IBusSimplePlugin_decompressor_output_ready) begin
      _zz_IBusSimplePlugin_injector_decodeInput_payload_pc <= IBusSimplePlugin_decompressor_output_payload_pc;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_error <= IBusSimplePlugin_decompressor_output_payload_rsp_error;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_rsp_inst <= IBusSimplePlugin_decompressor_output_payload_rsp_inst;
      _zz_IBusSimplePlugin_injector_decodeInput_payload_isRvc <= IBusSimplePlugin_decompressor_output_payload_isRvc;
    end
    if(IBusSimplePlugin_injector_decodeInput_ready) begin
      IBusSimplePlugin_injector_formal_rawInDecode <= IBusSimplePlugin_decompressor_raw;
    end
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      IBusSimplePlugin_predictor_writeLast_valid <= IBusSimplePlugin_predictor_historyWriteDelayPatched_valid;
      IBusSimplePlugin_predictor_writeLast_payload_address <= IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_address;
      IBusSimplePlugin_predictor_writeLast_payload_data_source <= IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_source;
      IBusSimplePlugin_predictor_writeLast_payload_data_branchWish <= IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_branchWish;
      IBusSimplePlugin_predictor_writeLast_payload_data_last2Bytes <= IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_last2Bytes;
      IBusSimplePlugin_predictor_writeLast_payload_data_target <= IBusSimplePlugin_predictor_historyWriteDelayPatched_payload_data_target;
    end
    if(IBusSimplePlugin_iBusRsp_stages_0_input_ready) begin
      IBusSimplePlugin_predictor_buffer_pcCorrected <= IBusSimplePlugin_fetchPc_corrected;
    end
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      IBusSimplePlugin_predictor_line_source <= IBusSimplePlugin_predictor_buffer_line_source;
      IBusSimplePlugin_predictor_line_branchWish <= IBusSimplePlugin_predictor_buffer_line_branchWish;
      IBusSimplePlugin_predictor_line_last2Bytes <= IBusSimplePlugin_predictor_buffer_line_last2Bytes;
      IBusSimplePlugin_predictor_line_target <= IBusSimplePlugin_predictor_buffer_line_target;
    end
    if(IBusSimplePlugin_iBusRsp_stages_0_output_ready) begin
      IBusSimplePlugin_predictor_buffer_hazard_regNextWhen <= IBusSimplePlugin_predictor_buffer_hazard;
    end
    if(IBusSimplePlugin_injector_decodeInput_ready) begin
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hazard <= IBusSimplePlugin_predictor_iBusRspContextOutput_hazard;
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_hit <= IBusSimplePlugin_predictor_iBusRspContextOutput_hit;
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_source <= IBusSimplePlugin_predictor_iBusRspContextOutput_line_source;
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_branchWish <= IBusSimplePlugin_predictor_iBusRspContextOutput_line_branchWish;
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_last2Bytes <= IBusSimplePlugin_predictor_iBusRspContextOutput_line_last2Bytes;
      IBusSimplePlugin_predictor_iBusRspContextOutput_delay_1_line_target <= IBusSimplePlugin_predictor_iBusRspContextOutput_line_target;
    end
    HazardSimplePlugin_writeBackBuffer_payload_address <= HazardSimplePlugin_writeBackWrites_payload_address;
    HazardSimplePlugin_writeBackBuffer_payload_data <= HazardSimplePlugin_writeBackWrites_payload_data;
    if(when_Pipeline_l124) begin
      decode_to_execute_FORMAL_HALT <= _zz_when_FormalPlugin_l114_3;
    end
    if(when_Pipeline_l124_1) begin
      execute_to_memory_FORMAL_HALT <= _zz_when_FormalPlugin_l114_2;
    end
    if(when_Pipeline_l124_2) begin
      memory_to_writeBack_FORMAL_HALT <= _zz_when_FormalPlugin_l114_1;
    end
    if(when_Pipeline_l124_3) begin
      decode_to_execute_PC <= _zz_decode_SRC2;
    end
    if(when_Pipeline_l124_4) begin
      execute_to_memory_PC <= execute_PC;
    end
    if(when_Pipeline_l124_5) begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if(when_Pipeline_l124_6) begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if(when_Pipeline_l124_7) begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if(when_Pipeline_l124_8) begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if(when_Pipeline_l124_9) begin
      decode_to_execute_IS_RVC <= decode_IS_RVC;
    end
    if(when_Pipeline_l124_10) begin
      execute_to_memory_IS_RVC <= execute_IS_RVC;
    end
    if(when_Pipeline_l124_11) begin
      decode_to_execute_FORMAL_INSTRUCTION <= decode_FORMAL_INSTRUCTION;
    end
    if(when_Pipeline_l124_12) begin
      execute_to_memory_FORMAL_INSTRUCTION <= execute_FORMAL_INSTRUCTION;
    end
    if(when_Pipeline_l124_13) begin
      memory_to_writeBack_FORMAL_INSTRUCTION <= memory_FORMAL_INSTRUCTION;
    end
    if(when_Pipeline_l124_14) begin
      decode_to_execute_FORMAL_PC_NEXT <= decode_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_15) begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_16) begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_memory_to_writeBack_FORMAL_PC_NEXT;
    end
    if(when_Pipeline_l124_17) begin
      decode_to_execute_PREDICTION_CONTEXT_hazard <= decode_PREDICTION_CONTEXT_hazard;
      decode_to_execute_PREDICTION_CONTEXT_hit <= decode_PREDICTION_CONTEXT_hit;
      decode_to_execute_PREDICTION_CONTEXT_line_source <= decode_PREDICTION_CONTEXT_line_source;
      decode_to_execute_PREDICTION_CONTEXT_line_branchWish <= decode_PREDICTION_CONTEXT_line_branchWish;
      decode_to_execute_PREDICTION_CONTEXT_line_last2Bytes <= decode_PREDICTION_CONTEXT_line_last2Bytes;
      decode_to_execute_PREDICTION_CONTEXT_line_target <= decode_PREDICTION_CONTEXT_line_target;
    end
    if(when_Pipeline_l124_18) begin
      execute_to_memory_PREDICTION_CONTEXT_hazard <= execute_PREDICTION_CONTEXT_hazard;
      execute_to_memory_PREDICTION_CONTEXT_hit <= execute_PREDICTION_CONTEXT_hit;
      execute_to_memory_PREDICTION_CONTEXT_line_source <= execute_PREDICTION_CONTEXT_line_source;
      execute_to_memory_PREDICTION_CONTEXT_line_branchWish <= execute_PREDICTION_CONTEXT_line_branchWish;
      execute_to_memory_PREDICTION_CONTEXT_line_last2Bytes <= execute_PREDICTION_CONTEXT_line_last2Bytes;
      execute_to_memory_PREDICTION_CONTEXT_line_target <= execute_PREDICTION_CONTEXT_line_target;
    end
    if(when_Pipeline_l124_19) begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if(when_Pipeline_l124_20) begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_21) begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_22) begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if(when_Pipeline_l124_23) begin
      decode_to_execute_RS1_USE <= decode_RS1_USE;
    end
    if(when_Pipeline_l124_24) begin
      execute_to_memory_RS1_USE <= execute_RS1_USE;
    end
    if(when_Pipeline_l124_25) begin
      memory_to_writeBack_RS1_USE <= memory_RS1_USE;
    end
    if(when_Pipeline_l124_26) begin
      decode_to_execute_ALU_CTRL <= _zz_decode_to_execute_ALU_CTRL;
    end
    if(when_Pipeline_l124_27) begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_28) begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_29) begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if(when_Pipeline_l124_30) begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if(when_Pipeline_l124_31) begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_32) begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if(when_Pipeline_l124_33) begin
      decode_to_execute_MEMORY_STORE <= decode_MEMORY_STORE;
    end
    if(when_Pipeline_l124_34) begin
      execute_to_memory_MEMORY_STORE <= execute_MEMORY_STORE;
    end
    if(when_Pipeline_l124_35) begin
      decode_to_execute_RS2_USE <= decode_RS2_USE;
    end
    if(when_Pipeline_l124_36) begin
      execute_to_memory_RS2_USE <= execute_RS2_USE;
    end
    if(when_Pipeline_l124_37) begin
      memory_to_writeBack_RS2_USE <= memory_RS2_USE;
    end
    if(when_Pipeline_l124_38) begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if(when_Pipeline_l124_39) begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_decode_to_execute_ALU_BITWISE_CTRL;
    end
    if(when_Pipeline_l124_40) begin
      decode_to_execute_SHIFT_CTRL <= _zz_decode_to_execute_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_41) begin
      execute_to_memory_SHIFT_CTRL <= _zz_execute_to_memory_SHIFT_CTRL;
    end
    if(when_Pipeline_l124_42) begin
      decode_to_execute_BRANCH_CTRL <= _zz_decode_to_execute_BRANCH_CTRL;
    end
    if(when_Pipeline_l124_43) begin
      decode_to_execute_RS1 <= _zz_decode_SRC1;
    end
    if(when_Pipeline_l124_44) begin
      execute_to_memory_RS1 <= execute_RS1;
    end
    if(when_Pipeline_l124_45) begin
      memory_to_writeBack_RS1 <= memory_RS1;
    end
    if(when_Pipeline_l124_46) begin
      decode_to_execute_RS2 <= _zz_decode_SRC2_1;
    end
    if(when_Pipeline_l124_47) begin
      execute_to_memory_RS2 <= execute_RS2;
    end
    if(when_Pipeline_l124_48) begin
      memory_to_writeBack_RS2 <= memory_RS2;
    end
    if(when_Pipeline_l124_49) begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if(when_Pipeline_l124_50) begin
      decode_to_execute_SRC1 <= decode_SRC1;
    end
    if(when_Pipeline_l124_51) begin
      decode_to_execute_SRC2 <= decode_SRC2;
    end
    if(when_Pipeline_l124_52) begin
      execute_to_memory_ALIGNEMENT_FAULT <= execute_ALIGNEMENT_FAULT;
    end
    if(when_Pipeline_l124_53) begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if(when_Pipeline_l124_54) begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if(when_Pipeline_l124_55) begin
      execute_to_memory_FORMAL_MEM_ADDR <= execute_FORMAL_MEM_ADDR;
    end
    if(when_Pipeline_l124_56) begin
      memory_to_writeBack_FORMAL_MEM_ADDR <= memory_FORMAL_MEM_ADDR;
    end
    if(when_Pipeline_l124_57) begin
      execute_to_memory_FORMAL_MEM_WMASK <= execute_FORMAL_MEM_WMASK;
    end
    if(when_Pipeline_l124_58) begin
      memory_to_writeBack_FORMAL_MEM_WMASK <= memory_FORMAL_MEM_WMASK;
    end
    if(when_Pipeline_l124_59) begin
      execute_to_memory_FORMAL_MEM_RMASK <= execute_FORMAL_MEM_RMASK;
    end
    if(when_Pipeline_l124_60) begin
      memory_to_writeBack_FORMAL_MEM_RMASK <= memory_FORMAL_MEM_RMASK;
    end
    if(when_Pipeline_l124_61) begin
      execute_to_memory_FORMAL_MEM_WDATA <= execute_FORMAL_MEM_WDATA;
    end
    if(when_Pipeline_l124_62) begin
      memory_to_writeBack_FORMAL_MEM_WDATA <= memory_FORMAL_MEM_WDATA;
    end
    if(when_Pipeline_l124_63) begin
      execute_to_memory_REGFILE_WRITE_DATA <= execute_REGFILE_WRITE_DATA;
    end
    if(when_Pipeline_l124_64) begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_memory_to_writeBack_REGFILE_WRITE_DATA;
    end
    if(when_Pipeline_l124_65) begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if(when_Pipeline_l124_66) begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if(when_Pipeline_l124_67) begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if(when_Pipeline_l124_68) begin
      execute_to_memory_NEXT_PC2 <= execute_NEXT_PC2;
    end
    if(when_Pipeline_l124_69) begin
      execute_to_memory_TARGET_MISSMATCH2 <= execute_TARGET_MISSMATCH2;
    end
    if(when_Pipeline_l124_70) begin
      memory_to_writeBack_MEMORY_READ_DATA <= memory_MEMORY_READ_DATA;
    end
  end


endmodule

module StreamFifoLowLatency (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_error,
  input      [31:0]   io_push_payload_inst,
  output reg          io_pop_valid,
  input               io_pop_ready,
  output reg          io_pop_payload_error,
  output reg [31:0]   io_pop_payload_inst,
  input               io_flush,
  output     [0:0]    io_occupancy,
  input               clk,
  input               reset
);

  reg                 when_Phase_l623;
  reg                 pushPtr_willIncrement;
  reg                 pushPtr_willClear;
  wire                pushPtr_willOverflowIfInc;
  wire                pushPtr_willOverflow;
  reg                 popPtr_willIncrement;
  reg                 popPtr_willClear;
  wire                popPtr_willOverflowIfInc;
  wire                popPtr_willOverflow;
  wire                ptrMatch;
  reg                 risingOccupancy;
  wire                empty;
  wire                full;
  wire                pushing;
  wire                popping;
  wire                readed_error;
  wire       [31:0]   readed_inst;
  wire       [32:0]   _zz_readed_error;
  wire                when_Stream_l1019;
  wire                when_Stream_l1032;
  wire       [32:0]   _zz_readed_error_1;
  reg        [32:0]   _zz_readed_error_2;

  always @(*) begin
    when_Phase_l623 = 1'b0;
    if(pushing) begin
      when_Phase_l623 = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willIncrement = 1'b0;
    if(pushing) begin
      pushPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    pushPtr_willClear = 1'b0;
    if(io_flush) begin
      pushPtr_willClear = 1'b1;
    end
  end

  assign pushPtr_willOverflowIfInc = 1'b1;
  assign pushPtr_willOverflow = (pushPtr_willOverflowIfInc && pushPtr_willIncrement);
  always @(*) begin
    popPtr_willIncrement = 1'b0;
    if(popping) begin
      popPtr_willIncrement = 1'b1;
    end
  end

  always @(*) begin
    popPtr_willClear = 1'b0;
    if(io_flush) begin
      popPtr_willClear = 1'b1;
    end
  end

  assign popPtr_willOverflowIfInc = 1'b1;
  assign popPtr_willOverflow = (popPtr_willOverflowIfInc && popPtr_willIncrement);
  assign ptrMatch = 1'b1;
  assign empty = (ptrMatch && (! risingOccupancy));
  assign full = (ptrMatch && risingOccupancy);
  assign pushing = (io_push_valid && io_push_ready);
  assign popping = (io_pop_valid && io_pop_ready);
  assign io_push_ready = (! full);
  assign _zz_readed_error = _zz_readed_error_1;
  assign readed_error = _zz_readed_error[0];
  assign readed_inst = _zz_readed_error[32 : 1];
  assign when_Stream_l1019 = (! empty);
  always @(*) begin
    if(when_Stream_l1019) begin
      io_pop_valid = 1'b1;
    end else begin
      io_pop_valid = io_push_valid;
    end
  end

  always @(*) begin
    if(when_Stream_l1019) begin
      io_pop_payload_error = readed_error;
    end else begin
      io_pop_payload_error = io_push_payload_error;
    end
  end

  always @(*) begin
    if(when_Stream_l1019) begin
      io_pop_payload_inst = readed_inst;
    end else begin
      io_pop_payload_inst = io_push_payload_inst;
    end
  end

  assign when_Stream_l1032 = (pushing != popping);
  assign io_occupancy = (risingOccupancy && ptrMatch);
  assign _zz_readed_error_1 = _zz_readed_error_2;
  always @(posedge clk) begin
    if(reset) begin
      risingOccupancy <= 1'b0;
    end else begin
      if(when_Stream_l1032) begin
        risingOccupancy <= pushing;
      end
      if(io_flush) begin
        risingOccupancy <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if(when_Phase_l623) begin
      _zz_readed_error_2 <= {io_push_payload_inst,io_push_payload_error};
    end
  end


endmodule

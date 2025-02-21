// This program was cloned from: https://github.com/chipsalliance/UHDM-integration-tests
// License: Apache License 2.0

/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */

(* top =  1  *)

module bsg_adder_ripple_carry(a_i, b_i, s_o, c_o);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  
  input [15:0] a_i;
  wire [15:0] a_i;
  
  input [15:0] b_i;
  wire [15:0] b_i;
  
  output c_o;
  wire c_o;
  
  output [15:0] s_o;
  wire [15:0] s_o;
  assign _043_ = ~(a_i[13] ^ b_i[13]);
  assign _044_ = ~(a_i[12] & b_i[12]);
  assign _045_ = ~(a_i[12] ^ b_i[12]);
  assign _046_ = a_i[11] & b_i[11];
  assign _047_ = a_i[11] ^ b_i[11];
  assign _048_ = ~(a_i[10] & b_i[10]);
  assign _049_ = _047_ & ~(_048_);
  assign _050_ = _049_ | _046_;
  assign _051_ = ~(a_i[10] ^ b_i[10]);
  assign _052_ = _047_ & ~(_051_);
  assign _053_ = ~(a_i[9] & b_i[9]);
  assign _054_ = ~(a_i[9] ^ b_i[9]);
  assign _055_ = ~(a_i[8] & b_i[8]);
  assign _056_ = ~(_055_ | _054_);
  assign _057_ = _053_ & ~(_056_);
  assign _058_ = _052_ & ~(_057_);
  assign _059_ = _058_ | _050_;
  assign _060_ = ~(a_i[8] ^ b_i[8]);
  assign _061_ = _060_ | _054_;
  assign _062_ = _052_ & ~(_061_);
  assign _063_ = ~(a_i[7] & b_i[7]);
  assign _064_ = a_i[7] ^ b_i[7];
  assign _065_ = ~(a_i[6] & b_i[6]);
  assign _066_ = _064_ & ~(_065_);
  assign _067_ = _063_ & ~(_066_);
  assign _068_ = ~(a_i[6] ^ b_i[6]);
  assign _069_ = _064_ & ~(_068_);
  assign _070_ = ~(a_i[5] & b_i[5]);
  assign _071_ = a_i[5] ^ b_i[5];
  assign _072_ = ~(a_i[4] & b_i[4]);
  assign _073_ = _071_ & ~(_072_);
  assign _074_ = _070_ & ~(_073_);
  assign _075_ = _069_ & ~(_074_);
  assign _076_ = _067_ & ~(_075_);
  assign _077_ = ~(a_i[4] ^ b_i[4]);
  assign _078_ = _077_ | ~(_071_);
  assign _079_ = _069_ & ~(_078_);
  assign _080_ = ~(a_i[3] & b_i[3]);
  assign _081_ = a_i[3] ^ b_i[3];
  assign _082_ = ~(a_i[2] & b_i[2]);
  assign _083_ = _081_ & ~(_082_);
  assign _084_ = _080_ & ~(_083_);
  assign _085_ = ~(a_i[2] ^ b_i[2]);
  assign _086_ = _081_ & ~(_085_);
  assign _087_ = ~(a_i[1] & b_i[1]);
  assign _088_ = a_i[1] ^ b_i[1];
  assign _089_ = ~(a_i[0] & b_i[0]);
  assign _090_ = _088_ & ~(_089_);
  assign _091_ = _087_ & ~(_090_);
  assign _092_ = _086_ & ~(_091_);
  assign _000_ = _084_ & ~(_092_);
  assign _001_ = _079_ & ~(_000_);
  assign _002_ = _076_ & ~(_001_);
  assign _003_ = _062_ & ~(_002_);
  assign _004_ = ~(_003_ | _059_);
  assign _005_ = ~(_004_ | _045_);
  assign _006_ = _044_ & ~(_005_);
  assign s_o[13] = _006_ ^ _043_;
  assign _007_ = ~(a_i[14] ^ b_i[14]);
  assign _008_ = a_i[13] & b_i[13];
  assign _009_ = ~(_044_ | _043_);
  assign _010_ = ~(_009_ | _008_);
  assign _011_ = _045_ | _043_;
  assign _012_ = ~(_011_ | _004_);
  assign _013_ = _010_ & ~(_012_);
  assign s_o[14] = _013_ ^ _007_;
  assign _014_ = ~(a_i[15] ^ b_i[15]);
  assign _015_ = ~(a_i[14] & b_i[14]);
  assign _016_ = ~(_013_ | _007_);
  assign _017_ = _015_ & ~(_016_);
  assign s_o[15] = _017_ ^ _014_;
  assign s_o[0] = a_i[0] ^ b_i[0];
  assign _018_ = a_i[15] & b_i[15];
  assign _019_ = ~(_015_ | _014_);
  assign _020_ = _019_ | _018_;
  assign _021_ = _014_ | _007_;
  assign _022_ = ~(_021_ | _010_);
  assign _023_ = _022_ | _020_;
  assign _024_ = _021_ | _011_;
  assign _025_ = _059_ & ~(_024_);
  assign _026_ = _025_ | _023_;
  assign _027_ = _024_ | ~(_062_);
  assign _028_ = ~(_027_ | _002_);
  assign c_o = _028_ | _026_;
  assign s_o[1] = ~(_089_ ^ _088_);
  assign s_o[2] = _091_ ^ _085_;
  assign _029_ = ~(_091_ | _085_);
  assign _030_ = _029_ | ~(_082_);
  assign s_o[3] = _030_ ^ _081_;
  assign s_o[4] = _000_ ^ _077_;
  assign _031_ = ~(_000_ | _077_);
  assign _032_ = _031_ | ~(_072_);
  assign s_o[5] = _032_ ^ _071_;
  assign _033_ = ~(_000_ | _078_);
  assign _034_ = _074_ & ~(_033_);
  assign s_o[6] = _034_ ^ _068_;
  assign _035_ = ~(_034_ | _068_);
  assign _036_ = _035_ | ~(_065_);
  assign s_o[7] = _036_ ^ _064_;
  assign s_o[8] = _002_ ^ _060_;
  assign _037_ = ~(_002_ | _060_);
  assign _038_ = _055_ & ~(_037_);
  assign s_o[9] = _038_ ^ _054_;
  assign _039_ = ~(_002_ | _061_);
  assign _040_ = _057_ & ~(_039_);
  assign s_o[10] = _040_ ^ _051_;
  assign _041_ = ~(_040_ | _051_);
  assign _042_ = _041_ | ~(_048_);
  assign s_o[11] = _042_ ^ _047_;
  assign s_o[12] = _004_ ^ _045_;
endmodule


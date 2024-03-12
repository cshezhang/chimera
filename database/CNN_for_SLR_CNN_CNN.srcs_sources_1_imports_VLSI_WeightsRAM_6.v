`timescale 1ns / 1ps

module WeightsRAM_6(
    input clk,
    input enable,
    input [3:0] addr, //filter number from 0 to 15
    output reg [35:0] weights
    );
    
    reg [8:0] weight [0:63];
    
    always@(posedge enable)
    begin
        weight[0] <= 9'b111100111;
        weight[1] <= 9'b110010010;
        weight[2] <= 9'b111010011;
        weight[3] <= 9'b000010000;
        weight[4] <= 9'b000010101;
        weight[5] <= 9'b110101110;
        weight[6] <= 9'b111101101;
        weight[7] <= 9'b110110100;
        weight[8] <= 9'b000001110;
        weight[9] <= 9'b000010100;
        weight[10] <= 9'b000000010;
        weight[11] <= 9'b001010010;
        weight[12] <= 9'b000000001;
        weight[13] <= 9'b111010011;
        weight[14] <= 9'b000101011;
        weight[15] <= 9'b000001011;
        weight[16] <= 9'b111001100;
        weight[17] <= 9'b110101001;
        weight[18] <= 9'b111111011;
        weight[19] <= 9'b000000010;
        weight[20] <= 9'b111001111;
        weight[21] <= 9'b111011100;
        weight[22] <= 9'b000010001;
        weight[23] <= 9'b111111110;
        weight[24] <= 9'b111011100;
        weight[25] <= 9'b000110011;
        weight[26] <= 9'b111001100;
        weight[27] <= 9'b111011111;
        weight[28] <= 9'b000000111;
        weight[29] <= 9'b000001110;
        weight[30] <= 9'b000000110;
        weight[31] <= 9'b000100010;
        weight[32] <= 9'b111111000;
        weight[33] <= 9'b000010010;
        weight[34] <= 9'b111101111;
        weight[35] <= 9'b110111010;
        weight[36] <= 9'b000010101;
        weight[37] <= 9'b110100101;
        weight[38] <= 9'b111100001;
        weight[39] <= 9'b000111011;
        weight[40] <= 9'b111010011;
        weight[41] <= 9'b000011110;
        weight[42] <= 9'b110111001;
        weight[43] <= 9'b111110101;
        weight[44] <= 9'b000010111;
        weight[45] <= 9'b111101101;
        weight[46] <= 9'b000000111;
        weight[47] <= 9'b111011111;
        weight[48] <= 9'b111001001;
        weight[49] <= 9'b001000011;
        weight[50] <= 9'b000001110;
        weight[51] <= 9'b000010111;
        weight[52] <= 9'b111110101;
        weight[53] <= 9'b111000110;
        weight[54] <= 9'b111000001;
        weight[55] <= 9'b110011010;
        weight[56] <= 9'b000101011;
        weight[57] <= 9'b000101001;
        weight[58] <= 9'b111111111;
        weight[59] <= 9'b000111110;
        weight[60] <= 9'b111111101;
        weight[61] <= 9'b111000111;
        weight[62] <= 9'b111101110;
        weight[63] <= 9'b000011000;

    end
    
    always@(posedge clk)
    begin
        case(addr)
            0:
            begin
                weights <= { weight[0], weight[1], weight[2], weight[3]};
            end
            1:
            begin
                weights <= { weight[4], weight[5], weight[6], weight[7]};
            end
            2:
            begin
                weights <= { weight[8], weight[9], weight[10], weight[11]};
            end
            3:
            begin
                weights <= { weight[12], weight[13], weight[14], weight[15]};
            end
            4:
            begin
                weights <= { weight[16], weight[17], weight[18], weight[19]};
            end
            5:
            begin
                weights <= { weight[20], weight[21], weight[22], weight[23]};
            end
            6:
            begin
                weights <= { weight[24], weight[25], weight[26], weight[27]};
            end
            7:
            begin
                weights <= { weight[28], weight[29], weight[30], weight[31]};
            end
            8:
            begin
                weights <= { weight[32], weight[33], weight[34], weight[35]};
            end
            9:
            begin
                weights <= { weight[36], weight[37], weight[38], weight[39]};
            end
            10:
            begin
                weights <= { weight[40], weight[41], weight[42], weight[43]};
            end
            11:
            begin
                weights <= { weight[44], weight[45], weight[46], weight[47]};
            end
            12:
            begin
                weights <= { weight[48], weight[49], weight[50], weight[51]};
            end
            13:
            begin
                weights <= { weight[52], weight[53], weight[54], weight[55]};
            end
            14:
            begin
                weights <= { weight[56], weight[57], weight[58], weight[59]};
            end
            15:
            begin
                weights <= { weight[60], weight[61], weight[62], weight[63]};
            end
            default:
            begin
                weights <= 36'd0;
            end
        endcase
        
    end
endmodule

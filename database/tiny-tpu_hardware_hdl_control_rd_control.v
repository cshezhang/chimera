// This module controls the signal to read data from memory
// It will send enble and memory signal to memArr module
// Alan Qin
// Apri. 22 2019

module rd_control(
    clk, // clock signal
    reset, // reset the inputs and reg signals
    active, // this module only works when the active is high
    rd_en, // enable accessing to the memeory
    rd_addr, // read address the full address should be base addr + wr_addr
    wr_active // enable write output control
    );

    parameter width_height = 16;
    localparam data_width = width_height*8;
    localparam count_width = $clog2(width_height) + 1;

    input clk;
    input reset;
    input active;
    output reg [width_height-1:0] rd_en;
    output reg [data_width-1:0] rd_addr;
    output reg wr_active;

    reg [width_height-1:0] rd_en_c;
    reg [data_width-1:0] rd_addr_c;
    reg [count_width-1:0] count, count_c;
    reg rd_start, rd_start_c;

    always @(posedge clk) begin
        rd_en <= rd_en_c;
        rd_addr <= rd_addr_c;
        count <= count_c;
        rd_start <= rd_start_c;
    end

    always @(*) begin
        rd_start_c = rd_start;
        rd_addr_c = rd_addr;
        count_c = count;
        wr_active = 0;

        if(active) begin
            rd_start_c = 1;
        end

        if (rd_start) begin // start to get read address
            if (count >= 16) begin
                rd_en_c = rd_en << 1;
            end

            else begin
                rd_en_c = (rd_en << 1) + 1'b1;
            end

            rd_addr_c = {7'b0, rd_en[15],
                         7'b0, rd_en[14],
                         7'b0, rd_en[13],
                         7'b0, rd_en[12],
                         7'b0, rd_en[11],
                         7'b0, rd_en[10],
                         7'b0, rd_en[9],
                         7'b0, rd_en[8],
                         7'b0, rd_en[7],
                         7'b0, rd_en[6],
                         7'b0, rd_en[5],
                         7'b0, rd_en[4],
                         7'b0, rd_en[3],
                         7'b0, rd_en[2],
                         7'b0, rd_en[1],
                         7'b0, rd_en[0]} + rd_addr;

            count_c = count + 1'b1;

            if (count > 16) begin
                wr_active = 1;
            end

            if (count == width_height*2-1) begin
                rd_start_c = 0;
                rd_addr_c = 16'h0000;
                count_c = 0;
                wr_active = 0;
            end
        end

        else begin
            rd_en_c = 16'h0000;
        end

        if (reset == 1'b1) begin
            rd_addr_c = 0;
            rd_en_c  = 16'h0000;
            rd_start_c = 0;
            count_c = 0;
            wr_active = 0;
        end
    end
endmodule

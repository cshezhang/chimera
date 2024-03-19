//
//      verilog template for combinational logic  in Axiline
//

module comb#(
    parameter bitwidth  =8
)(
    input [bitwidth-1:0]data_in,
    input [bitwidth-1:0]bias,
    input valid,
    output [bitwidth-1:0]data_out
);
    wire [bitwidth-1:0] data;
    /*combination logic*/

    wire[bitwidth-1:0] temp;
                    assign temp=data_in-bias;
                    logstic logstic1(
                        .in(temp),
                        .out(data)
                    );


    assign data_out=data&valid;

endmodule

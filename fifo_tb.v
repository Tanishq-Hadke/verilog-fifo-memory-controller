`timescale 1ns/1ps

module fifo_tb;

reg clk;
reg reset;
reg write_en;
reg read_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

fifo uut (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .read_en(read_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
write_en = 0;
read_en = 0;

#10 reset = 0;

#10
write_en = 1;
data_in = 8'd10;

#10 data_in = 8'd20;
#10 data_in = 8'd30;
#10 data_in = 8'd40;

#10 write_en = 0;

#10 read_en = 1;

#50 read_en = 0;

#20 $finish;

end

endmodule

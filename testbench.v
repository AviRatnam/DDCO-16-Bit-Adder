`timescale 1 ns / 100 ps

module tb;
    reg clk;
    wire [15:0] sig_in1, sig_in2,sum;
    wire cout;
    initial begin $dumpfile("htw.vcd"); $dumpvars(0,tb); end
    initial clk = 1'b0; always #5 clk =~ clk;
    assign sig_in1[0] = 1'b1;
    assign sig_in1[1] = 1'b1;
    assign sig_in1[2] = 1'b0;
    assign sig_in1[3] = 1'b0;
    assign sig_in1[4] = 1'b0;
    assign sig_in1[5] = 1'b0;
    assign sig_in1[6] = 1'b0;
    assign sig_in1[7] = 1'b0;
    assign sig_in1[8] = 1'b0;
    assign sig_in1[9] = 1'b0;
    assign sig_in1[10] = 1'b0;
    assign sig_in1[11] = 1'b0;
    assign sig_in1[12] = 1'b0;
    assign sig_in1[13] = 1'b0;
    assign sig_in1[14] = 1'b0;
    assign sig_in1[15] = 1'b0;

    assign sig_in2[0] = 1'b1;
    assign sig_in2[1] = 1'b0;
    assign sig_in2[2] = 1'b0;
    assign sig_in2[3] = 1'b0;
    assign sig_in2[4] = 1'b0;
    assign sig_in2[5] = 1'b0;
    assign sig_in2[6] = 1'b0;
    assign sig_in2[7] = 1'b0;
    assign sig_in2[8] = 1'b0;
    assign sig_in2[9] = 1'b0;
    assign sig_in2[10] = 1'b0;
    assign sig_in2[11] = 1'b0;
    assign sig_in2[12] = 1'b0;
    assign sig_in2[13] = 1'b0;
    assign sig_in2[14] = 1'b0;
    assign sig_in2[15] = 1'b0;

    //serialcompliment sci0 (clk, set, sig_in1, sig_in2, sig_out);
    serial tammy(sum,cout,sig_in1,sig_in2,clk);
    initial begin
        #165 $finish;
    end
endmodule
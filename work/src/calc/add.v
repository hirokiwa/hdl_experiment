module add(A_DATA, B_DATA, SUB_DATA);
    input [3:0] A_DATA, B_DATA;
    output [5:0] SUB_DATA;
    wire c0, c1, c2, c3;

    halfadder HA0(A_DATA[0], B_DATA[0], SUB_DATA[0], c0);
    fulladder FA1(A_DATA[1], B_DATA[1], c0, SUB_DATA[1], c1);
    fulladder FA2(A_DATA[2], B_DATA[2], c1, SUB_DATA[2], c2);
    fulladder FA3(A_DATA[3], B_DATA[3], c2, SUB_DATA[3], c3);

    assign SUB_DATA[4] = c3;
    assign SUB_DATA[5] = 1'h0;

endmodule
module logic(a, b, c);
    input a,b;
    output c;

    assign c = ((a & (~b)) | ((~a) & b));
endmodule

module addandsub (A_DATA, B_DATA, SUB_SEL, RESULT);
    input [5:0] A_DATA;
    input [5:0] B_DATA;
    input SUB_SEL;
    output [5:0] RESULT;
    wire [5:0] bm;
    wire c0, c1, c2, c3, c4, c5;

    logic logic0(B_DATA[0], SUB_SEL, bm[0]);
    logic logic1(B_DATA[1], SUB_SEL, bm[1]);
    logic logic2(B_DATA[2], SUB_SEL, bm[2]);
    logic logic3(B_DATA[3], SUB_SEL, bm[3]);
    logic logic4(B_DATA[4], SUB_SEL, bm[4]);
    logic logic5(B_DATA[5], SUB_SEL, bm[5]);

    fulladder FA0(A_DATA[0], bm[0], SUB_SEL, RESULT[0], c0);
    fulladder FA1(A_DATA[1], bm[1], c0, RESULT[1], c1);
    fulladder FA2(A_DATA[2], bm[2], c1, RESULT[2], c2);
    fulladder FA3(A_DATA[3], bm[3], c2, RESULT[3], c3);
    fulladder FA4(A_DATA[4], bm[4], c3, RESULT[4], c4);
    fulladder FA5(A_DATA[5], bm[5], c4, RESULT[5], c5);

endmodule
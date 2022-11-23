module halfadder(A,B,Y,CO);
    input A,B;
    output Y, CO;

    assign CO = A & B;
    assign Y = A ^B;
    
endmodule
module add(A_DATA, B_DATA, SUB_DATA);
input [3:0] A_DATA, B_DATA;
output [5:0] SUB_DATA;

assign SUB_DATA = A_DATA + B_DATA;

endmodule
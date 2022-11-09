module BCDTOP(X, Y, S, CARRY, dummy);
input [3:0] X, Y;
output [3:0] S;
output CARRY, dummy;
wire f0, f1, f2, f3, c3, cry;

// coding...
ripple4adder ripple4adder(X, Y)

endmodule
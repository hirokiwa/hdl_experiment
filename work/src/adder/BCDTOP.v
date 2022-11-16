module BCDTOP(X, Y, S, CARRY, dummy);
    input [3:0] X, Y;
    output [3:0] S;
    output CARRY, dummy;
    wire f0, f1, f2, f3, c3, cry;

    ripple4adder ripple4adder(X, Y, {f3, f2, f1, f0}, c3);
    carrydetect carrydetect(f1, f3, f2, f3, cry);
    hosei6 hosei6(f1, f2, cry, f3, S[3:1], dummy);

    S[0] = f0;

    initial begin
                X = 4'h0; Y = 4'h0;
        #50     X = 4'h3; Y = 4'h5;
        #50     X = 4'h4; Y = 4'h6;
        #50     X = 4'h9; Y = 4'h9;
        #50     X = 4'h7; Y = 4'h6;
        #50     X = 4'h1; Y = 4'h8;
        #50     $finish;
    end

    initial begin
        $monitor("%t %h %h %h %h" , $time, a, b, sum, carry );
    end

endmodule
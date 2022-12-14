module test_adder4_behavior;
    reg [3:0] a, b;
    wire [4:0] sum;

    adder4_behavior adder4_behavior(a, b, sum);

    initial begin
                a = 4'h2; b = 4'h3;
        #50     a = 4'h4; b = 4'h7;
        #50     a = 4'h5; b = 4'ha;
        #50     a = 4'h6; b = 4'he;
        #50     a = 4'hd; b = 4'h9;
        #50     $finish;
    end

    initial begin
        $monitor("%t %h %h %h" , $time, a, b, sum);
    end
    
endmodule
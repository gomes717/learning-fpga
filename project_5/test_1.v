


module test_1(
    input a,b,
    output c,d
    );

    assign c = a & b;
    assign d = a | b;
endmodule

module study_1_tb();

reg a,b;
wire c,d;

test_1 dut(a,b,c,d);

initial begin
a = 1;
b = 1;
#10;
a = 0;
b = 1;
#10;
a = 1;
b = 0;
#10;
a = 0;
b = 0;
#10;
end
endmodule
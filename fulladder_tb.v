module fulladder_tb;
reg  A_input, B_input, C_input;
wire Sum,C_output;  
fulladder newfull(.A(A_input), .B(B_input), .Cin(C_input), .S(Sum), .Cout(C_output));

initial
begin
    $dumpfile("fulladder_tb.vcd");
    $dumpvars(0,fulladder_tb);
    $monitor("A=%b B=%b Cin=%b      S=%b Cout=%b\n", A_input, B_input, C_input, Sum, C_output);

    A_input=0;
    B_input=0;
    C_input=0;
    #70 $finish;
end
always #40 A_input=~A_input;
always #20 B_input=~B_input;
always #10 C_input=~C_input;
endmodule
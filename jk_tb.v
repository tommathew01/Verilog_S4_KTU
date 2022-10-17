module jk_tb;
reg j,k,clk;
wire q,qbar;

jk_ff DUT (j,k,clk,q,qbar);

initial begin
    clk=0;
end

always #5 clk = ~clk;

initial begin
     $dumpfile("jk.vcd");
     $dumpvars;

    $monitor("%t | j=%b | k=%b | q=%b | qbar=%b",$time,j,k,q,qbar);
    #10; j=0;k=1;
    #10; j=1;k=1;
    #10; j=1;k=0;
    #10; j=0;k=0;
    #10 $finish;
end
endmodule
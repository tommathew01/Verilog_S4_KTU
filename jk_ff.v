module jk_ff(j,k,clk,q,qbar);
input j,k,clk;
output reg q,qbar;
always @ (negedge clk)
begin
    if(j==0 && k== 0) begin
        q<=q;
        qbar<=qbar; end
    if(j==1 && k== 0) begin
        q<=1;
        qbar<=0; end
    if(j==0 && k== 1) begin
        q<=0;
        qbar<=1; end
    if(j==1 && k== 1) begin
        q<=~q;
        qbar<=~qbar; end
end
endmodule
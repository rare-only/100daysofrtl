module parallel_subtractor(a,b,ci,d,co);
input a,b,ci;
output d,co;
assign d=a^b^ci;
assign co=(a & b) | (b & ci) | (ci & a);
endmodule    

module parallel_full_subtractor(
    input [3:0] a,b,
    input ci,
    output[3:0] d,
    output co);
    wire [2:0] w;
 parallel_subtractor fa1 (a[0],!b[0],ci,d[0],w[0]);
 parallel_subtractor fa2 (a[1],!b[1],w[0],d[1],w[1]);
 parallel_subtractor fa3 (a[2],!b[2],w[1],d[2],w[2]);
 parallel_subtractor fa4 (a[3],!b[3],w[2],d[3],co);
 endmodule

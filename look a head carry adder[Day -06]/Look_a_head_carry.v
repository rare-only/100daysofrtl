module Look_a_head_carry(a,b,ci,sum,co);
input [3:0]a,b;
input ci;
output [3:0] sum;
output co;
// wire p0,p1,p2,p3,g0,g1,g2,g3;
wire [3:0] c;

// //design the logic for the generate functions
 and (g0,a[0],b[0]),
     (g1,a[1],b[1]),
     (g2,a[2],b[2]),
     (g3,a[3],b[3]);

//design the logic for the propagate functions
xor  (p0,a[0],b[0]),
     (p1,a[1],b[1]),
     (p2,a[2],b[2]),
     (p3,a[3],b[3]);   
//design the logic for the sum functions
xor   (sum[0],p0,ci),
      (sum[1],p1,c[0]),
      (sum[2],p2,c[1]),
      (sum[3],p3,c[2]);
//use  continuous assign statement
      assign c[0] = (g0) | (p0&ci), 
             c[1] = (g1) | (p1&g0)  | (p1&p0&ci), 
             c[2] = (g2) | (p2&g1)  | (p2&p1&g0)  | (p2&p1&p0&ci), 
             c[3] = (g3) | (p3&g2)  | (p3&p2&g1)  | (p3&p2&p1&g0)  | (p3&p2&p1&p0&ci);

    assign co= c[3];
    endmodule
        

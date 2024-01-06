`timescale 1ns/1ns
module fifteen_input_OC_T(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,
			 output y3,y2,y1,y0);
    
    // count 14 first  inputs' ones
    wire w2, w1, w0, x2, x1, x0;
    seven_input_OC_T OC7_1(a,b,c,d,e,f,g,x2,x1,x0);
    seven_input_OC_T OC7_2(h,i,j,k,l,m,n,w2,w1,w0);

    // recount ones in lsb of results and fifteenth input
    wire z1;
    three_input_OC_T OC3_1(x0,w0,o,z1,y0);
    
    // recount ones in second bit of results
    wire r2;
    three_input_OC_T OC3_2(x1,w1,z1,r2,y1);

    // recount ones in third bit of results
    three_input_OC_T OC3_3(x2,w2,r2,y3,y2);


endmodule
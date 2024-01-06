`timescale 1ns/1ns
module seven_input_OC_T(input a,b,c,d,e,f,g, output y2,y1,y0);
    
    // count first 6 inputs' ones
    wire w1, w0, x1, x0;
    three_input_OC_T OC1(a,b,c,w1,w0), OC2(d,e,f,x1,x0);
   
    // recount ones in lsb of results and seventh input
    wire z1;
    three_input_OC_T OC3(w0,x0,g,z1,y0);
    
    // recount ones in second bit of results
    three_input_OC_T OC4(w1,x1,z1,y2,y1);


endmodule
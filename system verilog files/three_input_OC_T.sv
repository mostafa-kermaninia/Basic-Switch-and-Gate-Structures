`timescale 1ns/1ns
module three_input_OC_T(input a,b,c, output y1,y0);
supply1 Vdd;
supply0 Gnd;

// Build y0
wire w1, w2, w3, w4, w5, w6;
//// y0's Pull Up
pmos #(5,6,7) p1(w1,Vdd,~a), p2(w4,Vdd,a),
	p3(w2,w1,~b), p4(w3,w1,b), p7(w5,w4,~b), p8(w6,w4,b),
	p5(y0,w2,~c), p6(y0,w3,c), p9(y0,w5,c), p10(y0,w6,~c);
//// y0's Pull Down
nmos #(3,4,5) n1(y0,w8,~a), n3(y0,w9,~b), n5(y0,w9,~c),	
	n4(w9,w8,b), n6(w9,w8,c),
	n2(w8,Gnd,a), n7(w8,w7,~b), n9(w8,w7,c),
	n8(w7,Gnd,b), n10(w7,Gnd,~c);

// Build y1
wire w10, w11, w12, w13;
//// y1's Pull Up
pmos #(5,6,7) p11(w10,Vdd,~a), p14(w11,Vdd,~b),
	p12(y1,w10,~b), p13(y1,w10,~c), p15(y1,w11,~c);
//// y1's Pull Down
nmos #(3,4,5) n12(y1,w13,~b), n13(w13,w12,~c), n11(y1,w12,~a),
	n14(w12,Gnd,~b), n15(w12,Gnd,~c);

endmodule
	
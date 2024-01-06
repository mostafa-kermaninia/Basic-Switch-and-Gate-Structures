`timescale 1ns/1ns
module three_input_OC_G_plus(input a,b,c, output y1,y0);
	
	// Build y0
	wire w1, w2, w3, w4, w5, w6, w7, w8;
	// first level
	nand #(5) N1(w1,b,c), N2(w2,~b,~c), N5(w5,b,~c), N6(w6,~b,c);
	// second level
	nand #(5) N3(w3,w1,w2), N7(w7,w5,w6);
	// third level
	nand #(5) N4(w4,w3,a), N8(w8,w7,~a);
	// forth level
	nand #(5) N9(y0,w4,w8);
	
	// Build y1
	wire w9, w10, w11;
	// first level
	nand #(5) N10(w9,~b,~c), N11(w11,b,c);
	// second level
	nand #(5) N12(w10,w9,a);
	// third level
	nand #(5) N13(y1,w10,w11);
	
endmodule
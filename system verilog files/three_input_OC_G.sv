`timescale 1ns/1ns
module three_input_OC_G(input a,b,c, output y1,y0);
	
	// Build y0
	wire w1, w2, w3, w4;
	// 3_input nands	
	nand #(9) N1(w1,a,b,c), N2(w2,a,~b,~c), N3(w3,~a,b,~c), N4(w4,~a,~b,c);
	// 4_input nand
	nand #(12) N5(y0,w1,w2,w3,w4);
	
	// Build y1
	wire w5, w6, w7;
	// 2_input nands
	nand #(6) N6(w5,a,b), N7(w6,a,c), N8(w7,b,c);
	// 3_input nand
	nand #(9) N9(y1,w5,w6,w7);
	
endmodule
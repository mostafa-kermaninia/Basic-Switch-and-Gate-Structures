`timescale 1ns/1ns
module three_input_OC_G_TB();
	logic aa=1,bb=0,cc=0;
	wire yt1,yt0,yg1,yg0;
	three_input_OC_T CUT1(.a(aa),.b(bb),.c(cc),.y1(yt1),.y0(yt0));
	three_input_OC_G CUT2(.a(aa),.b(bb),.c(cc),.y1(yg1),.y0(yg0));

	initial begin
	// abc = 100
	#31;
	aa=0;
	// abc = 000
	#37;
	cc=1;
	// abc = 001
	#41;
	cc=0;
	#43
	aa=1;
	#47
	bb=1;
	// abc = 110
	#53;
	aa=0;
	// abc = 010
	#59;
	aa=1;
	// abc = 110
	#67;
	end
endmodule

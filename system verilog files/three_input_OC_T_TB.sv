`timescale 1ns/1ns
module three_input_OC_T_TB();
	logic aa=1,bb=0,cc=0;
	wire yy1,yy0;
	three_input_OC_T CUT1(.a(aa),.b(bb),.c(cc),.y1(yy1),.y0(yy0));
	initial begin
	// abc = 100
	#30;
	aa=0;
	// abc = 000
	#30;
	cc=1;
	// abc = 001
	#30;
	cc=0;
	aa=1;
	bb=1;
	// abc = 110
	#30;
	aa=0;
	// abc = 010
	#30;
	aa=1;
	// abc = 110
	#30;
	end
endmodule
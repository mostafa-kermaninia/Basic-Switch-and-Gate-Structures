`timescale 1ns/1ns
module three_input_OC_E_TB();
	logic aa=0,bb=0,cc=0;
	wire yt1,yt0,yg1,yg0,ye1,ye0;
	three_input_OC_T CUT1(.a(aa),.b(bb),.c(cc),.y1(yt1),.y0(yt0));
	three_input_OC_G_plus CUT2(.a(aa),.b(bb),.c(cc),.y1(yg1),.y0(yg0));
	three_input_OC_E CUT3(.a(aa),.b(bb),.c(cc),.y1(ye1),.y0(ye0));

	initial begin
	// abc = 000
	#31 aa=1;
	// abc = 100
	#34 aa=0;
	// abc = 000

	
	#37 cc=1;
	// abc = 001
	#41 cc=0;
	// abc = 000

	#43 aa=1;
	// abc = 100
	#47 bb=1;
	// abc = 110
	#53 aa=0;
	// abc = 010
	#59 bb=0;
	// abc = 000


	#61 aa=1;
	// abc = 100
	#67 bb=1;
	// abc = 110
	#71 cc=1;
	// abc = 111
	#79 aa=0;
	// abc = 011
	
	#101;
	end
endmodule

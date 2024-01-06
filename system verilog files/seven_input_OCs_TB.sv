`timescale 1ns/1ns
module seven_input_OCs_TB();
	logic aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0;
	wire yt2,yt1,yt0,ye2,ye1,ye0;
	seven_input_OC_T CUT1(.a(aa),.b(bb),.c(cc),.d(dd),.e(ee),.f(ff),.g(gg),
		.y2(yt2),.y1(yt1),.y0(yt0));
	seven_input_OC_E CUT2(.a(aa),.b(bb),.c(cc),.d(dd),.e(ee),.f(ff),.g(gg),
		.y2(ye2),.y1(ye1),.y0(ye0));
        
	initial begin
        // abcdefg = 0000000
	#87 aa=1;
    	// abcdefg = 1000000
	#91 aa=0;
        // abcdefg = 0000000
        #97 gg=1;
        // abcdefg = 0000001
	#101 gg=0;
        // abcdefg = 0000000
	#103 aa=1; bb=1; cc=1; dd=1; ee=1; ff=1; gg=1;
        // abcdefg = 1111111
	#107 aa=0;
        // abcdefg = 0111111
	#111 aa=1;
        // abcdefg = 1111111
	#113 gg=0;
        // abcdefg = 1111110
	#117 gg=1;
        // abcdefg = 1111111
	#121 bb=0;
        // abcdefg = 1011111
	#123 gg=0;
        // abcdefg = 1111110

	end
endmodule
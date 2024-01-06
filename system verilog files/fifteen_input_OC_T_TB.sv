`timescale 1ns/1ns
module fifteen_input_OC_T_TB();
	logic aa=0, bb=0, cc=0, dd=0, ee=0, ff=0, gg=0;
        logic hh=0, ii=0, jj=0, kk=0, ll=0, mm=0, nn=0, oo=0;
	wire yy3, yy2, yy1, yy0;
	
        fifteen_input_OC_T CUT1(aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,yy3,yy2,yy1,yy0);
        
	initial begin
        // abcdefghijklmno = 000000000000000
        #151 aa=1;
        // abcdefghijklmno = 100000000000000
        #157 aa=0;
        // abcdefghijklmno = 000000000000000

        #161 oo=1;
        // abcdefghijklmno = 000000000000001
        #167 oo=0;
        // abcdefghijklmno = 000000000000000

        #173 aa=1;bb=1;cc=1;dd=1;ee=1;ff=1;gg=1;hh=1;ii=1;jj=1;kk=1;ll=1;mm=1;
        // abcdefghijklmno = 11111111111100
        #181 nn=1;
        // abcdefghijklmno = 11111111111110
        #183 oo=1;
        // abcdefghijklmno = 11111111111111

        #187 oo=0;
        // abcdefghijklmno = 11111111111110
        #191 aa=0;
        // abcdefghijklmno = 01111111111110
        
        #203;
	end
endmodule
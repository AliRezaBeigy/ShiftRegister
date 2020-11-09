module ShiftRegisterTest();
	reg c, l, rtl, r;
	reg [3:0] d;
	wire [3:0] q, nq;
	ShiftRegister sr(.C(c), .L(l), .RTL(rtl), .R(r), .D(d), .Q(q), .nQ(nq));
	initial
	begin
		$monitor("%g Clock:%b Data:%b Q:%b NotQ:%b Load:%b RTL:%b", $time, c, d, q, nq, l, rtl);
		assign l = 0;
		assign r = 0;
		assign c = 1;
		assign rtl = 1;
		assign d = 4'b1111;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b1110;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b1110;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b1111;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign l = 1;
		assign d = 4'b1011;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign l = 0;
		assign rtl = 0;
		assign d = 4'b0000;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b1111;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b0111;
		#10
		assign c = 0;
		#10
		assign c = 1;
		assign d = 4'b1111;
	end
endmodule
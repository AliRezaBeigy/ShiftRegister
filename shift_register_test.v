module ShiftRegisterTest();
	reg c, l;
	reg [3:0] d;
	wire [3:0] q, nq;
	ShiftRegister sr(.C(c), .L(l), .D(d), .Q(q), .nQ(nq));
	initial
	begin
		$monitor("%g Clock:%b Data:%b Q:%b NotQ:%b Load:%b", $time, c, d, q, nq, l);
		assign l = 0;
		assign c = 1;
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
	end
endmodule
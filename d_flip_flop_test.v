module DFlipFlopTest();
	reg c, d;
	wire q, nq;
	DFlipFlop dff(.C(c), .D(d), .Q(q), .nQ(nq));
	initial
	begin
		$monitor("%g Clock:%b Data:%b Q:%b NotQ:%b", $time, c, d, q, nq);
		assign c = 1;
		assign d = 1;
		#10
		assign c = 0;
		assign d = 0;
		#10
		assign c = 1;
		#10
		assign c = 0;
		assign d = 1;
		#10
		assign c = 1;
	end
endmodule
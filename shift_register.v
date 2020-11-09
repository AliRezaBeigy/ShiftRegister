module ShiftRegister(C, L, RTL, R, D, Q, nQ);
	parameter n = 4;
	reg [n - 1:0] Dm;
	input wire C, L, RTL, R;
	input wire [n - 1:0] D;
	output wire [n - 1:0] Q;
	output wire [n - 1:0] nQ;

	always@(posedge C or posedge L)
	begin
		if(R)
		    assign Dm = 0;
		else if(L == 0)
		begin
			if(RTL == 1)
				assign Dm = {Q[n - 2:0], D[0]};
			else
				assign Dm = {D[n - 1], Q[n - 1:1]};
		end
		else
		begin
			assign Dm = {D[n - 1:0]};
		end
	end

	genvar i;
	generate for (i = 0; i < n; i = i + 1)
		DFlipFlop dff(.C(C), .D(Dm[i]), .Q(Q[i]), .nQ(nQ[i]));
	endgenerate
endmodule
module ShiftRegister(input wire C, input wire L, input wire RTL, input wire [3:0] D, output wire [3:0] Q, output wire [3:0] nQ);
	reg [3:0] Dm;

	always@(posedge C or posedge L)
	begin
		if(L == 0)
		begin
			if(RTL == 1)
				assign Dm = {Q[2], Q[1], Q[0], D[0]};
			else
				assign Dm = {D[3], Q[3], Q[2], Q[1]};
		end
		else
		begin
			assign Dm = {D[3], D[2], D[1], D[0]};
		end
	end
	
	genvar i;
	generate for (i = 0; i < 4; i = i + 1)
		DFlipFlop dff(.C(C), .D(Dm[i]), .Q(Q[i]), .nQ(nQ[i]));
	endgenerate
endmodule
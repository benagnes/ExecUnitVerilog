module mux21(a, b, s, out);
	// paramter N=32;
	input a,b,s;
	output out;
	
	// wires and reg
	reg out_x;

	always @*
	begin
		if(s==0)
			out_x = a;
		else
			out_x = b;
	end
	assign out = out_x;
endmodule

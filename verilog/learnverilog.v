module learnverilog #(parameter N=32) (opA, opB, add_sub, sum, cout, ovfl, zero, altb, altbu);
	// paramter N=32;
	input [N-1:0] opA, opB;
	input add_sub;
	output [N-1:0] sum;
	output cout, ovfl, zero, altb, altbu;

	// wire for input B (need to negate when sub operation ON)
	wire [N-1:0] opBin;
	wire [N-1:0] add_sub_out;
	wire overflow, carry_out;

	//add_sub myadd_sub(opA, opB, add_sub, sum, cout, ovfl);
	add_sub myadd_sub(opA, opBin, add_sub, add_sub_out, carry_out, overflow);
	// 2:1 mux for add / sub -> if add_sub = '0' then add, if '1' then sub
	assign opBin=(add_sub)?~opB:opB;

	// output flags
	assign ovfl = overflow;
	assign cout = carry_out;
	assign zero = ~add_sub_out; // giant NOR gate
	assign altbu = !carry_out; // only meaningful if doing A - B
	assign altb = overflow ^ add_sub_out[N-1]; // only meaningful if doing A - B

	assign sum = add_sub_out;
endmodule
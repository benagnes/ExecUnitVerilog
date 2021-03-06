module add_sub #(parameter N=32) (opA, opB, cin, sum, cout, ovfl);
	input [N-1:0] opA, opB;
	input cin;
	output [N-1:0] sum;
	output cout, ovfl;
	// internal wires
	wire [N-1:0] carry;
	wire overflow;

    // begin architecture
	genvar i;
	generate
	    for(i=0;i<N;i=i+1)
	    begin : loop_adder
		    if(i==0) begin
			    full_adder f(opA[i], opB[i], cin, sum[i], carry[i]);
		    end
		    else begin
			    full_adder f(opA[i], opB[i], carry[i-1], sum[i], carry[i]);
		    end
		    assign ovfl = carry[30] ^ carry[31];
		    assign cout = carry[31];
	    end
	endgenerate
endmodule

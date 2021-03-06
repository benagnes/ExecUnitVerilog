`timescale 1 ns/10 ps

module tb_multiplier;
	reg [3:0] A;
	reg [3:0] B;
	wire [7:0] P;

	localparam period = 20; // default units is ns

	multiply UUT (.A(A), .B(B), .P(P));
    
	initial // initial block executes only once
        begin
            // 2*1 = 1
            A = 4'b0001;
            B = 4'b0010;
            #period; // wait for period 

	    // 2*2 = 4
            A = 4'b0010;
            B = 4'b0010;
            #period; // wait for period 

	    // 8*8 = 64
            A = 4'b1000;
            B = 4'b1000;
            #period; // wait for period 

	    // 9*9 = 81
            A = 4'b1001;
            B = 4'b1001;
            #period; // wait for period 

	    // 10 * 10 == 100
            A = 4'b1010;
            B = 4'b1010;
            #period; // wait for period 
        end
endmodule

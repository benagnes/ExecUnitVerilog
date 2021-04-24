`timescale 1 ns/10 ps

module learn_verilog_tb;
	reg [31:0] opA;
	reg [31:0] opB;
	reg opCode; // 0 == add, 1 == sub
	wire [31:0] sum;
	wire cout;
	wire ovfl;
	wire zero;
	wire altb;
	wire altbu;

	localparam period = 20; // default units is ns

	learnverilog UUT (.opA(opA), .opB(opB), .add_sub(opCode), .sum(sum), .cout(cout), .ovfl(ovfl), .zero(zero), .altb(altb), .altbu(altbu));
	//learnverilog(opA, opB, cin, sum, cout);
    
	initial // initial block executes only once
        begin
            // values for a and b
            opA = 32'b00000000000000000000000000000000;
            opB = 32'b00000000000000000000000000000000;
	    opCode = 0;
            #period; // wait for period 

            opA = 32'b00000000000000000000000000000001;
            opB = 32'b00000000000000000000000000000000;
	    opCode = 0;
            #period; // wait for period

            opA = 32'b00000000000000000000000000000000;
            opB = 32'b00000000000000000000000000000001;
	    opCode = 0;
            #period; // wait for period 

            opA = 32'b00000000000000000000000000000001;
            opB = 32'b00000000000000000000000000000001;
	    opCode = 1;
            #period; // wait for period

            opA = {32{1'b1}}; // assigns all bits to 0
            opB = {32{1'b1}};
	    opCode = 1;
            #period; // wait for period 


            opA = 32'b10000000000000000000000000000001;
            opB = 32'b10000000000000000000000000000001;
	    opCode = 1;
            #period; // wait for period 
        end
endmodule
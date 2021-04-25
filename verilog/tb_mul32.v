`timescale 1 ns/10 ps

module tb_mul32 #(parameter N=32);
    reg clk;
    reg reset;
    reg enable;
	reg [N-1:0] multiplier;
	reg [N-1:0] multiplicand;

    wire ready;
	wire [N-1:0] product_upper;
	wire [N-1:0] product_lower;
    //wire cout;

	localparam period = 10; // default units is ns

	multiply_32 UUT (.clk(clk), .reset(reset), .enable(enable), .multiplier(multiplier), .multiplicand(multiplicand), 
                        .ready(ready), .product_upper(product_upper), .product_lower(product_lower));//, .cout(cout));

    // setup clock
    always #(period/2) clk = ~clk;
    
	initial // initial block executes only once
        begin
            clk <= 0;
            reset <= 1;
            enable <= 0;
            multiplier <= 32'b00000000000000000000000000000011;
            multiplicand <= 32'b00000000000000000000000000000011;
            #period; // wait for period 

            reset <= 0;
            enable <= 1;
            #(period*35); // wait for period 

            enable <= 0;
            #period;
        end
endmodule

module multiply_32 #(parameter N=32) (clk, reset, enable, multiplier, multiplicand, ready, product_upper, product_lower);//, cout); // unsigned 32 bit multiplier
   input clk;
   input reset; // active high, synchronous reset
   input enable;
   input [N-1:0] multiplier; // 32 bit multiplier
   input [N-1:0] multiplicand; // 32 bit multiplicand

   output reg [N-1:0] product_upper; // upper 32 bits of product
   output reg [N-1:0] product_lower; // lower 32 bits of product
   //output reg cout; // carry-out of product
   output reg ready; // ready high when done computing

   // wires / reg's
   integer cycle_counter;
   reg [N-1:0] multiplicand_reg;
   reg [N*2:0] product_reg; // register to hold product

   wire [N-1:0] adder_out; // 32 bit sum of adder
   wire adder_cout; // carry out from adder
   wire ovfl;

   // have to instantiate outisde of the always
   add_sub add_sub0(product_reg[63:32], multiplicand_reg, 1'b0, adder_out, adder_cout, ovfl);


   always @(posedge clk)
   begin
      if(reset) // active high reset 
      begin
         // reset all internal reg's
         cycle_counter <= 0;
         multiplicand_reg <= {N{1'b0}};
         product_reg <= {65{1'b0}}; // 65 bits

         // reset outputs?
         ready <= 0;
         product_upper <= {N{1'b0}};
         product_lower <= {N{1'b0}};
         //cout <= 0;
      end
      else if (enable) // active high enable
      begin
          // if start of operation then read in new multiplier and multiplicand
          if (cycle_counter == 0) begin
              ready <= 0;
              product_reg[N-1:0] <= multiplier; // right half of product reg contains multiplier 
              multiplicand_reg <= multiplicand;
              cycle_counter <= cycle_counter + 1;
          end
          else
          begin
             // add upper 32 bits of product w/ multiplicand ONLY if bottom bit (bit 0) of product is 1
             if (product_reg[0] == 1)
             begin
                 product_reg <= {adder_cout, adder_out, product_reg[N-1:1]};
                 //product_reg <= {adder_cout, adder_out, product_reg[N-1:0]} >> 1;
                 //product_reg[N*2] <= adder_cout;
                 //product_reg[N*2-1:N] <= adder_out;
             end
             else
             begin
                 product_reg <= product_reg >> 1;
             end
             // shift multiplicand left and increment counter
             // << or >> is a binary shift. >>> is a SIGNED shift right maintaining value of msb
             if (cycle_counter == 1) begin
                multiplicand_reg <= multiplicand_reg;
             end
             else begin
                multiplicand_reg <= multiplicand_reg << 1;
             end
             cycle_counter <= cycle_counter + 1;

             if (cycle_counter == 34) // 32 + 2 cycle (to read in values) ?
             begin
                 product_upper <= product_reg[63:N];
                 product_lower <= product_reg[N-1:0];
                 //cout <= product_reg[64];
                 ready <= 1;
                 cycle_counter <= 0;
             end
          end
      end
   end

endmodule // multiplier

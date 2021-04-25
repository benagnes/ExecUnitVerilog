module multiply_32 #(parameter N=32) (clk, reset, enable, multiplier, multiplicand, ready, product_upper, product_lower, cout); // unsigned 32 bit multiplier
   input clk;
   input reset; // active high, synchronous reset
   input enable;
   input [N-1:0] multiplier; // 32 bit multiplier
   input [N-1:0] multiplicand; // 32 bit multiplicand

   output reg [N-1:0] product_upper; // upper 32 bits of product
   output reg [N-1:0] product_lower; // lower 32 bits of product
   output reg cout; // carry-out of product
   output reg ready; // ready high when done computing

   // wires / reg's
   reg [N-1:0] multiplicand_reg;
   //wire [N-1:0] multiplicand_wire;

   integer cycle_counter;

   reg [N*2:0] product_reg; // register to hold product
   //wire [N*2:0] product_wire; // 65 bit product

   wire [N-1:0] adder_out; // 32 bit sum of adder
   wire adder_cout; // carry out from adder
   wire ovfl;

   // have to instantiate outisde of the always
   //add_sub add_sub0(product_reg[N*2:N+1], multiplicand_reg, 1'b0, adder_out, adder_cout, ovfl);
   add_sub add_sub0(product_reg[N*2:N+1], multiplicand_reg, 1'b0, product_reg[N*2-1:N], product_reg[N*2], ovfl);

   //assign multiplicand_wire = multiplicand_reg;
   //assign product_wire = product_reg;

   always @(posedge clk)
   begin
      if(reset) // active high reset 
      begin
         // reset all internal reg's
         cycle_counter <= 0;
         multiplicand_reg <= {N{1'b0}};
         product_reg <= {65{1'b0}}; // 65 bits

         // reset outputs?
         //ready <= 0;
         //product_upper <= {N{1'b0}};
         //product_lower <= {N{1'b0}};
         //cout <= 0;
      end
      else if (enable) // active high enable
      begin
         // if start of operation then read in new multiplier and multiplicand
         cycle_counter <= 0;
         product_reg[N-1:0] <= multiplier; // right half of product reg contains multiplier 
         multiplicand_reg <= multiplicand;
      end
      else
      begin
         // add upper 32 bits of product w/ multiplicand ONLY if bottom bit (bit 0) of product is 1
         if (product_reg[0] == 1)
         begin
            //add_sub add_sub0(product_reg[N*2:N+1], multiplicand_reg, 1'b0, adder_out, adder_cout, ovfl); // bits 64 downto 33 of product go into adder
            // module add_sub #(parameter N=32) (enable, opA, opB, cin, sum, cout, ovfl);
            //product_reg[N*2] <= adder_cout;
            //product_reg[N*2-1:N] <= adder_out;
         end

         // shift multiplicand left, shift product right
         // << or >> is a binary shift. >>> is a SIGNED shift right maintaining value of msb
         multiplicand_reg <= multiplicand_reg << 1;
         product_reg <= product_reg >> 1;
         cycle_counter <= cycle_counter + 1;

         if (cycle_counter == 32)
         begin
             product_upper <= product_reg[N*2-1:N];
             product_lower <= product_reg[N-1:0];
             cout <= product_reg[N*2];
             ready <= 1;
             cycle_counter <= 0;
         end
         else
         begin  
             ready <= 0;
         end
      end
   end

endmodule // multiplier

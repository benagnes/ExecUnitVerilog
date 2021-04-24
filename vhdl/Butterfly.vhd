-------------------------------------------------------------------------------
-- BUTTERFLY_INT
-- fcampi@sfu.ca Dec 2015
-------------------------------------------------------------------------------

-- Integer Butterfly for Radix-2 FFT calculation
-- This is a simple 32-bit butterfly to be composed for
-- more complex FFT N points FFT calculations
-- The only point is that being integer, it needs to scale temporary results
-- otherwise results would be bigger than inputs and the calculation would not
-- be scalable 

library ieee;
use ieee.std_logic_1164.all;
 
package fft_pack is
  type complex is
  record
     Re : std_logic_vector(31 downto 0);
     Im : std_logic_vector(31 downto 0);
  end record;

  type complex_samples is array (0 to 15) of complex;
  type twiddle_factors is array (0 to 7)  of complex;
end fft_pack;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fft_pack.all;

entity butterfly is
   Port (  A,B,w  : in  complex;
           C,D    : out complex );
 end butterfly;

 architecture beh of butterfly is 
 signal tr,ti : std_logic_vector(32 downto 0);
 signal qr,qi : std_logic_vector(31 downto 0); 
 begin  -- beh of butterfly

    tr <= std_Logic_Vector( signed(w.re(31 downto 16))*signed(B.re(31 downto 15)) -
                            signed(w.im(31 downto 16))*signed(B.im(31 downto 15)) );

    ti <= std_Logic_Vector( signed(w.re(31 downto 16))*signed(B.im(31 downto 15)) +
                            signed(w.im(31 downto 16))*signed(B.re(31 downto 15)) );
 	  
    qr <= A.re(31) & A.re(31 downto 1);
    qi <= A.im(31) & A.im(31 downto 1);
 
    D.re <= std_Logic_Vector(signed(qr) - signed(tr(31 downto 0)));
    D.im <= std_Logic_Vector(signed(qi) - signed(ti(31 downto 0)));
    C.re <= std_Logic_Vector(signed(qr) + signed(tr(31 downto 0)));
    C.im <= std_Logic_Vector(signed(qi) + signed(ti(31 downto 0)));

 end beh;
-------------------------------------------------------------------------------
 
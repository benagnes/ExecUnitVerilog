library ieee;
use ieee.std_logic_1164.all;
use work.fft_pack.all;

 entity fft_core is
   Port (  clk, resetn  : in  std_logic;
           addr_in      : in  std_logic_vector(31 downto 0); 
		   mr,mw        : in  std_logic;
		   data_in      : in  std_logic_vector(31 downto 0);
           data_out : out std_logic_vector(31 downto 0) );
 end fft_core;

 architecture struct of fft_core is

  component butterfly 
   Port (  A,B,w  : in  complex;
           C,D    : out complex );
  end component; 

  constant writefft_address   : std_logic_vector(31 downto 0) := x"20000000";
  constant computefft_address : std_logic_vector(31 downto 0) := x"20000004";
  constant readfft_address    : std_logic_vector(31 downto 0) := x"20000008";
  
  type shift_reg_samples is array (0 to 31) of std_logic_vector(31 downto 0);
  signal fft_in,fft_out  : shift_reg_samples;
  
    
  signal samples_in,samples_out,l0,l1,l2,l3,l4 : complex_samples;
  constant w : twiddle_factors := ( (x"3ffffcc8",x"00000000"),(x"3b20d740",x"e732f230"),
                                    (x"2d413cb4",x"d2bec34c"),(x"18cd0dd0",x"c4df28c0"),
									(x"00000000",x"c0000338"),(x"e732f230",x"c4df28c0"),
									(x"d2bec34c",x"d2bec34c"),(x"c4df28c0",x"e732f230") );
  
 begin  -- struct
	
	-- -- This design has 2 shift registers: inputs (fft_in) and outputs (fft_out)
	-- fft_in has 16 slots (real part of time domain samples, is simply read from outside and then feeds the fft_core. 
	-- fft_out has 32 slots (real and imaginary parts of freq domain samples) and :
	-- 1) Is written by the fft_core results in all occasions EXCEPT
	-- 2) When memory read is active it serves as shift register carrying out the outputs
	sr_seq:process(clk,resetn)
	begin
		if resetn='0' then
			for i in 0 to 15 loop
				fft_in(i)  <= (others=>'0');
				fft_out(i) <= (others=>'0');
			end loop;
		elsif clk'event and clk='1' then
			-- fft in shift register
			if addr_in=writefft_address and mw='1' then	
				for i in 0 to 14 loop
					fft_in(i) <= fft_in(i+1);							
				end loop;
				fft_in(15) <= data_in;
			-- fft out shift register
			elsif addr_in=readfft_address and mr='1' then
				data_out <= fft_out(0);
				for i in 0 to 30 loop
					fft_out(i) <=fft_out(i+1);
				end loop;						
			elsif addr_in=computefft_address and mw='1' then
				for i in 0 to 15 loop
					fft_out(2*i) <= samples_out(i).re;  fft_out(2*i+1) <= samples_out(i).im;
				end loop;
			end if;
		end if;
	end process;
			
	samplemap : for i in 0 to 15 generate
		samples_in(i).re <= fft_in(i); samples_in(i).im <= (others=>'0');
	end generate;
	
		 -- Original Reordering
   l0(0)  <= samples_in(0);   l0(1)  <= samples_in(8);    l0(2)  <= samples_in(4);   l0(3)  <= samples_in(12);
   l0(4)  <= samples_in(2);   l0(5)  <= samples_in(10);   l0(6)  <= samples_in(6);   l0(7)  <= samples_in(14);
   l0(8)  <= samples_in(1);   l0(9)  <= samples_in(9);    l0(10) <= samples_in(5);   l0(11) <= samples_in(13);
   l0(12) <= samples_in(3);   l0(13) <= samples_in(11);   l0(14) <= samples_in(7);   l0(15) <= samples_in(15);
    
   -- First Round
   fft_0_1   : butterfly port map (l0(0),l0(1),  w(0),l1(0),l1(1));
   fft_2_3   : butterfly port map (l0(2),l0(3),  w(0),l1(2),l1(3));
   fft_4_5   : butterfly port map (l0(4),l0(5),  w(0),l1(4),l1(5));
   fft_6_7   : butterfly port map (l0(6),l0(7),  w(0),l1(6),l1(7));
   fft_8_9   : butterfly port map (l0(8),l0(9) , w(0),l1(8),l1(9));
   fft_10_11 : butterfly port map (l0(10),l0(11),w(0),l1(10),l1(11)); 
   fft_12_13 : butterfly port map (l0(12),l0(13),w(0),l1(12),l1(13));
   fft_14_15 : butterfly port map (l0(14),l0(15),w(0),l1(14),l1(15));

   -- Second Round
   fft_0_2   : butterfly port map (l1(0) ,l1(2) ,w(0),l2(0),l2(2));
   fft_1_3   : butterfly port map (l1(1) ,l1(3) ,w(4),l2(1),l2(3));
   fft_4_6   : butterfly port map (l1(4) ,l1(6) ,w(0),l2(4),l2(6));
   fft_5_7   : butterfly port map (l1(5) ,l1(7) ,w(4),l2(5),l2(7));
   fft_8_10  : butterfly port map (l1(8) ,l1(10),w(0),l2(8) ,l2(10));
   fft_9_11  : butterfly port map (l1(9),l1(11) ,w(4),l2(9) ,l2(11));
   fft_12_14 : butterfly port map (l1(12),l1(14),w(0),l2(12),l2(14));
   fft_13_15 : butterfly port map (l1(13),l1(15),w(4),l2(13),l2(15));

    -- Third Round
   fft_0_4   : butterfly port map (l2(0) ,l2(4)  ,w(0),l3(0), l3(4));
   fft_1_5   : butterfly port map (l2(1) ,l2(5)  ,w(2),l3(1), l3(5));
   fft_2_6   : butterfly port map (l2(2) ,l2(6)  ,w(4),l3(2), l3(6));
   fft_3_7   : butterfly port map (l2(3) ,l2(7)  ,w(6),l3(3), l3(7));
   fft_8_12  : butterfly port map (l2(8) ,l2(12) ,w(0),l3(8) ,l3(12));
   fft_9_13  : butterfly port map (l2(9) ,l2(13) ,w(2),l3(9) ,l3(13));
   fft_10_14 : butterfly port map (l2(10),l2(14) ,w(4),l3(10),l3(14));
   fft_11_15 : butterfly port map (l2(11),l2(15) ,w(6),l3(11),l3(15));

   -- Fourth Round
   fft_0_8   : butterfly port map (l3(0) ,l3(8)  ,w(0),l4(0), l4(8));
   fft_1_9   : butterfly port map (l3(1) ,l3(9)  ,w(1),l4(1), l4(9));
   fft_2_10  : butterfly port map (l3(2) ,l3(10) ,w(2),l4(2) ,l4(10));
   fft_3_11  : butterfly port map (l3(3) ,l3(11) ,w(3),l4(3), l4(11));
   fft_4_12  : butterfly port map (l3(4) ,l3(12) ,w(4),l4(4), l4(12));   
   fft_5_13  : butterfly port map (l3(5) ,l3(13) ,w(5),l4(5), l4(13));   
   fft_6_14  : butterfly port map (l3(6) ,l3(14) ,w(6),l4(6), l4(14));   
   fft_7_15  : butterfly port map (l3(7) ,l3(15) ,w(7),l4(7), l4(15));

    -- Feeding Outputs (this could be written as samples_out <= l4)
   samples_out(0)  <= l4(0);    samples_out(1)  <= l4(1);    samples_out(2)  <= l4(2);    samples_out(3)  <= l4(3);
   samples_out(4)  <= l4(4);    samples_out(5)  <= l4(5);    samples_out(6)  <= l4(6);    samples_out(7)  <= l4(7);
   samples_out(8)  <= l4(8);    samples_out(9)  <= l4(9);    samples_out(10) <= l4(10);   samples_out(11) <= l4(11);
   samples_out(12) <= l4(12);   samples_out(13) <= l4(13);   samples_out(14) <= l4(14);   samples_out(15) <= l4(15);
   
    
 end struct;
-------------------------------------------------------------------------------
-- ensc450 Testbench
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;

package ensc450_pkg is
  constant addr_size : positive := 32;
  constant data_size : positive := 32;
end package;

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ensc450_pkg.all;

entity E is
end E;

Architecture A of E is

component ensc450 
  port ( clk,resetn : in  std_logic;

         -- Master port to control the subsystem from outside (i.e. testbench)
         EXT_NREADY         : out   Std_logic;
         EXT_BUSY           : in    Std_logic;
         EXT_MR, EXT_MW     : in    Std_logic;
         EXT_ADDRBUS        : in    Std_logic_vector(data_size-1 downto 0);
         EXT_RDATABUS       : out   Std_logic_vector(data_size-1 downto 0);
         EXT_WDATABUS       : in    Std_logic_vector(data_size-1 downto 0) );
  end component;

  signal clk,resetn : std_logic;
  signal EXT_NREADY,EXT_BUSY,EXT_MR, EXT_MW : Std_logic;
  signal EXT_ADDRBUS  : Std_logic_vector(addr_size-1 downto 0);
  signal EXT_RDATABUS,EXT_WDATABUS : Std_logic_vector(data_size-1 downto 0);

  -- for storing read/write data
  signal store_data : Std_logic_vector(data_size-1 downto 0);

begin

  UUT : ensc450 port map (clk,resetn,EXT_NREADY,EXT_BUSY,EXT_MR,EXT_MW,EXT_ADDRBUS,EXT_RDATABUS,EXT_WDATABUS);

  EXT_BUSY <= '0';
  


   clock_engine : process
    begin
      clk <= '0';
      wait for 10.0 ns;
      clk <= '1';
      wait for 10.0 ns;
    end process;

    reset_engine : process
      begin
        resetn <='0';
        wait for 20 ns;
        resetn <= '1';
        wait;
    end process;

    -- Please enter here the test data dor the memory and the programming for Counter and TMA
    -- In this example the tb is loading 16 data on the main memory and then
    -- the testbench is transferring the same to a different location.
    -- Detailed instruction on how to use counter and DMA are at the beginning
    -- of the repsective VHDL files
    input_data : process
      begin

        
    store_data <= (others => '0');
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 75 ns;
    
    -- Example 1: Resetting and Starting counter
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- LOAD DATA INTO OUR CORE
    -- load bottom 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- load top 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"40100000";
    wait for 20 ns;
    -- load bottom 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- load top 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"40100000";
    wait for 20 ns;
    -- load opcode and rmode and execute
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000020";
    wait for 20 ns;
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    wait for 480 ns;
    
    
    -- READ DATA FROM OUR CORE
    -- read bottom 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read top 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read result flags
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001010";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001011";EXT_WDATABUS<= X"40030000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001012";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001013";EXT_WDATABUS<= X"40040000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001014";EXT_WDATABUS<= X"00000020";
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001010";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for 20 ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001011";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for 20 ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001012";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for 20 ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001013";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for 20 ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001014";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for 20 ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 640 ns;
    
    -- get data from core and write back to SRAM
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for 20 ns; 
    EXT_MR <= '0';
    store_data <= EXT_RDATABUS;
    wait for 20 ns;
    -- write to SRAM
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001015";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    -- get data from core and write back to SRAM
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for 20 ns; 
    EXT_MR <= '0';
    store_data <= EXT_RDATABUS;
    wait for 20 ns;
    -- write to SRAM
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001016";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    -- get data from core and write back to SRAM
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for 20 ns; 
    EXT_MR <= '0';
    store_data <= EXT_RDATABUS;
    wait for 20 ns;
    -- write to SRAM
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001017";EXT_WDATABUS<=store_data;
    wait for 20 ns;
    
    EXT_MW <= '0';
    wait for 640 ns;
    -- read back from SRAM to verify
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001015";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001016";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001017";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001018";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001019";EXT_WDATABUS<= X"40020000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101A";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101B";EXT_WDATABUS<= X"40020000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101C";EXT_WDATABUS<= X"00000020";
    wait for 20 ns;
    
    -- SEND DMA
    -- Source address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"40001018";
    wait for 20 ns;
    -- Source step
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- Destination address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"20000000";
    wait for 20 ns;
    -- Destination step (0 as we are always writing to the same port (FFT IN)
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- D M A Goooooooooooooooooooooooooooooooooooooooo!
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"00000005";
    wait for 20 ns;
    -- Give some time to complete DMA Transfer
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 500 ns;
    
    wait for 480 ns;
    
    -- SEND DMA
    -- Source address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"20000040";
    wait for 20 ns;
    -- Source step
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- Destination address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"4000101D";
    wait for 20 ns;
    -- Destination step (0 as we are always writing to the same port (FFT IN)
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"00000001";
    wait for 20 ns;
    -- D M A Goooooooooooooooooooooooooooooooooooooooo!
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"00000003";
    wait for 20 ns;
    -- Give some time to complete DMA Transfer
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 380 ns;
    
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 80 ns;
    
    -- Example 1: Resetting and Starting counter
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- LOAD DATA INTO OUR CORE
    -- load bottom 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"FFFFFFFF";
    wait for 20 ns;
    -- load top 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load bottom 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"FFFFFFFF";
    wait for 20 ns;
    -- load top 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load opcode and rmode and execute
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000020";
    wait for 20 ns;
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    wait for 480 ns;
    
    
    -- Reading counter value to measure performance
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- READ DATA FROM OUR CORE
    -- read bottom 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read top 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read result flags
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- Example 1: Resetting and Starting counter
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- LOAD DATA INTO OUR CORE
    -- load bottom 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"FFFFFFFE";
    wait for 20 ns;
    -- load top 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load bottom 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"FFFFFFFF";
    wait for 20 ns;
    -- load top 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load opcode and rmode and execute
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000021";
    wait for 20 ns;
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    wait for 500 ns;
    
    
    -- Reading counter value to measure performance
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- READ DATA FROM OUR CORE
    -- read bottom 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read top 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read result flags
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- Example 1: Resetting and Starting counter
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- LOAD DATA INTO OUR CORE
    -- load bottom 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"FFFFFFFE";
    wait for 20 ns;
    -- load top 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load bottom 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"FFFFFFFF";
    wait for 20 ns;
    -- load top 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"3FFFFFFF";
    wait for 20 ns;
    -- load opcode and rmode and execute
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000022";
    wait for 20 ns;
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    wait for 560 ns;
    
    
    -- Reading counter value to measure performance
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    -- READ DATA FROM OUR CORE
    -- read bottom 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read top 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    -- read result flags
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for 20 ns;
    
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for 80 ns;
    

        report "simulation finished successfully" severity FAILURE; -- end sim
    end process;
            
end A;


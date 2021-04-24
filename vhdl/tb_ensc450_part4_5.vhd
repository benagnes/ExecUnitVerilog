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
      wait for 6 ns;
      clk <= '1';
      wait for 6 ns;
    end process;

    reset_engine : process
      begin
        resetn <='0';
        wait for 12 ns;
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
        wait for 24 ns;
        -- Example 1: Resetting and Starting counter
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        -- Example 2: Sending 16 data words to SRAM memory
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001000";EXT_WDATABUS<= X"7a0a1c78";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001001";EXT_WDATABUS<= X"78562318";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001002";EXT_WDATABUS<= X"7732b1b8";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001003";EXT_WDATABUS<= X"768f8830";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001004";EXT_WDATABUS<= X"756da540";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001005";EXT_WDATABUS<= X"75456878";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001006";EXT_WDATABUS<= X"74724d80";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001007";EXT_WDATABUS<= X"73601a30";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001008";EXT_WDATABUS<= X"6d61fbd0";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001009";EXT_WDATABUS<= X"6d246630";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100a";EXT_WDATABUS<= X"6acd33a8";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100b";EXT_WDATABUS<= X"6a7042b0";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100c";EXT_WDATABUS<= X"6a4d6100";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100d";EXT_WDATABUS<= X"6a0933e0";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100e";EXT_WDATABUS<= X"68a72340";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000100f";EXT_WDATABUS<= X"680ceeb0";
        wait for 12 ns;
        -----------------------------------------------------------------------
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        -- Example 3: Setting a DMA Transfer
        --                                              Source address
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"40001000";
        --wait for 12 ns;
        --                                              Source step
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"00000001";
        --wait for 12 ns;
        --                                              Destination address
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"20000000";
        --wait for 12 ns;
        --                                              Destination step (0 as we are always writing to the same port (FFT IN)
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"00000000";
        --wait for 12 ns;
        --                                              D M A Goooooooooooooooooooooooooooooooooooooooo!
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"00000010";
        --wait for 12 ns;
        -- Example4: Running computation on block: Give some time to complete DMA Transfer
        --EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        --wait for 400 ns;
        -- all this code above was already in the testbench



        -- Case  of part 3, round 2 to verify with different inputs: give core data directly from bus
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"00000001"; -- load bottom 32 bits of opa
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"40100000"; -- load top 32 bits of opa
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"00000001"; -- load bottom 32 bits of opb
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"40100000"; -- load top 32 bits of opb
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000020"; -- load opcode and rmode
        wait for 12 ns;
        EXT_MW <= '0';
        wait for 12 ns;

        wait for 400 ns;
        -- check result
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000"; -- read bottom 32 bits of result
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000"; -- read top 32 bits of result
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000"; -- read result flags
        wait for 12 ns;

        -- Reading counter value to measure performance
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 96 ns;

        -- OUR THING HERE END



        -- still giving core data directly from bus -- part 2
        wait for 400 ns; -- give some time from the previous case
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"00000003"; -- load bottom 32 bits of opa
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"40040000"; -- load top 32 bits of opa
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"00000001"; -- load bottom 32 bits of opb
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"40050000"; -- load top 32 bits of opb
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"00000020"; -- load opcode and rmode
        wait for 12 ns;
        --EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000010";EXT_WDATABUS<= X"00000000"; -- execute calculation
        --wait for 12 ns;
        --EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"20000010";EXT_WDATABUS<= X"00000000"; -- wait for calculation
        EXT_MW <= '0';
        wait for 12 ns;

        wait for 400 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000"; -- read bottom 32 bits of result
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000"; -- read top 32 bits of result
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000"; -- read result flags
        wait for 12 ns;

        -- Reading counter value to measure performance
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 96 ns;

        -- this covers step 1 of part 3 for the project part 3



        -- START OF step 2 of part 3; CPU writes data to SRAM. The core reads data from the SRAM, computes, writes back data to SRAM
        wait for 400 ns; -- give some time after the prev. step
        -- Send data words to SRAM memory
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001010";EXT_WDATABUS<= X"00000001"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001011";EXT_WDATABUS<= X"40030000"; -- top 32 opA
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001012";EXT_WDATABUS<= X"00000001"; -- bottom 32 opB
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001013";EXT_WDATABUS<= X"40040000"; -- top 32 opB
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001014";EXT_WDATABUS<= X"00000020"; -- opcode and rmode
        wait for 12 ns;
        EXT_MW <= '0';
        wait for 50 ns;

        -- read from SRAM to core
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001010";EXT_WDATABUS<= X"00000691"; -- bottom 32 opA
        wait for 25 ns;
        --EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to core
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<=store_data;
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001011";EXT_WDATABUS<= X"00000691"; -- top 32 opA
        wait for 25 ns;
        --EXT_MR <= '0';EXT_MW<='1';
        store_data <= EXT_RDATABUS;
        wait for 15 ns; 
        -- write to core
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<=store_data; 
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001012";EXT_WDATABUS<= X"00000691"; -- bottom 32 opB
        wait for 25 ns;
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to core
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<=store_data;
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001013";EXT_WDATABUS<= X"00000692"; -- top 32 opB
        wait for 25 ns;
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to core
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<=store_data;
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001014";EXT_WDATABUS<= X"00000693"; -- opcode and rmode
        wait for 25 ns;
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to core
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<=store_data;
        wait for 12 ns;

        EXT_MW <= '0'; -- CORE GOOOOOOOOOOOOOOOOOOOOOO
        wait for 400 ns; -- let core figure it out

        -- get data from core and write back to SRAM
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000"; -- read bottom 32 bits of result
        wait for 25 ns; 
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to SRAM
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001015";EXT_WDATABUS<=store_data; -- opcode and rmode
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000"; -- read top 32 bits of result
        wait for 25 ns; 
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to SRAM
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001016";EXT_WDATABUS<=store_data; -- opcode and rmode
        wait for 12 ns;

        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000"; -- read result flags
        wait for 25 ns;
        EXT_MR <= '0';
        store_data <= EXT_RDATABUS;
        wait for 15 ns;
        -- write to SRAM
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001017";EXT_WDATABUS<=store_data; -- opcode and rmode
        wait for 12 ns;
        
        EXT_MW <= '0';
        wait for 50 ns;
        -- read from SRAM to verify correctly written
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001015";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001016";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"40001017";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '0';
        wait for 50 ns;
        -- Reading counter value to measure performance
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 96 ns;
        -- end step 2 of part B
        

        -- PART 3 OF PART 3: using the DMA to perform successive write +read operations to/from the SRAM and core.
        -- first, write some data to SRAM
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001018";EXT_WDATABUS<= X"00000001"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"40001019";EXT_WDATABUS<= X"40020000"; -- top 32 opA
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101A";EXT_WDATABUS<= X"00000001"; -- bottom 32 opB
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101B";EXT_WDATABUS<= X"40020000"; -- top 32 opB
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"4000101C";EXT_WDATABUS<= X"00000020"; -- opcode and rmode
        wait for 12 ns;
        wait for 48 ns;
        -- next, use DMA to read from SRAM and send directly to core
        -- DMA has its own address range. only takes bottom 4 bits of addrbus
        --                                              Source address
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"40001018"; 
        wait for 12 ns;
        --                                              Source step
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"00000001";
        wait for 12 ns;
        --                                              Destination address
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"20000000";
        wait for 12 ns;
        --                                              Destination step 1 because we need to write to lower/upper halfs of operands and write the opcode+rmode
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"00000001";
        wait for 12 ns;
        --                                              D M A Goooooooooooooooooooooooooooooooooooooooo!
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"00000005"; -- give DMA the count.
        wait for 12 ns;
        -- Example4: Running computation on block: Give some time to complete DMA Transfer
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 300 ns;
        -- wait for DMA transfer to complete, then give additional time for core to compute
        wait for 400 ns; -- GOOOOOOOOOO COREEEEEE

        -- finally, use DMA to write core output to SRAM
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"20000040"; 
        wait for 12 ns;
        --                                              Source step
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"00000001";
        wait for 12 ns;
        --                                              Destination address
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"4000101D"; 
        wait for 12 ns;
        --                                              Destination step 1 because we need to write to lower/upper halfs of operands and write the opcode+rmode
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"00000001";
        wait for 12 ns;
        --                                              D M A Goooooooooooooooooooooooooooooooooooooooo!
        EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"00000003"; -- give DMA the count
        wait for 12 ns;
        -- Example4: Running computation on block: Give some time to complete DMA Transfer
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 300 ns;

        -- read from SRAM to verify DMA worked properly
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"4000101D";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"4000101E";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"4000101F";EXT_WDATABUS<= X"00000696"; -- bottom 32 opA
        wait for 12 ns;
        EXT_MR <= '0';
        wait for 48 ns;

        -- Reading counter value to measure performance
        EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
        wait for 12 ns;
        EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
        wait for 96 ns;
        report "simulation finished successfully" severity FAILURE; -- end sim
    end process;
end A;

-------------------------------------------------------------------------------
-- ensc450 Testbench
--
-------------------------------------------------------------------------------


library ieee;
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
  

-- @test_body

end A;

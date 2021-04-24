-------------------------------------------------------------------------------
-- TOP LEVEL of ensc450 project 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

package ensc450_pkg is
  constant addr_size : positive := 32;
  constant data_size : positive := 32;
end package;

library IEEE;
use IEEE.std_logic_1164.all;
use work.ensc450_pkg.all;

entity ensc450 is
  port (
    clk,resetn : in  std_logic;

    -- Master port to control the subsystem from outside (i.e. testbench)
    EXT_NREADY         : out   Std_logic;
    EXT_BUSY           : in    Std_logic;
    EXT_MR, EXT_MW     : in    Std_logic;
    EXT_ADDRBUS        : in    Std_logic_vector(addr_size-1 downto 0);
    EXT_RDATABUS       : out   Std_logic_vector(data_size-1 downto 0);
    EXT_WDATABUS       : in    Std_logic_vector(data_size-1 downto 0) );
end ensc450;

architecture beh of ensc450 is

  component ubus
    generic(addr_width : integer := 32; data_width : integer := 32;
            s1_start : Std_logic_vector := X"40001000";
            s1_end   : Std_logic_vector := X"40002000";
            s2_start : Std_logic_vector := X"50000000";
            s2_end   : Std_logic_vector := X"f0000000";
            s3_start : Std_logic_vector := X"00000000";
            s3_end   : Std_logic_vector := X"00000000";
            s4_start : Std_logic_vector := X"00000000";
            s4_end   : Std_logic_vector := X"00000000");
      
    port ( clk,reset           : in Std_logic;
           -- M1 port
           M1_BUSY,M1_MR,M1_MW : in   Std_logic;
           M1_NREADY           : out  Std_logic;
           M1_ADDRBUS          : in   Std_logic_vector(addr_width-1 downto 0);
           M1_RDATABUS         : out  Std_logic_vector(data_width-1 downto 0);
           M1_WDATABUS         : in   Std_logic_vector(data_width-1 downto 0);

           -- M2 port
           M2_BUSY,M2_MR,M2_MW : in   Std_logic;
           M2_NREADY           : out  Std_logic;
           M2_ADDRBUS          : in   Std_logic_vector(addr_width-1 downto 0);
           M2_RDATABUS         : out  Std_logic_vector(data_width-1 downto 0);
           M2_WDATABUS         : in   Std_logic_vector(data_width-1 downto 0);
             
           -- S1 port
           S1_BUSY,S1_MR,S1_MW : out  Std_logic;               
           S1_NREADY           : in   Std_logic;
           S1_ADDRBUS          : out  Std_logic_vector(addr_width-1 downto 0);
           S1_RDATABUS         : in   Std_logic_vector(data_width-1 downto 0);
           S1_WDATABUS         : out  Std_logic_vector(data_width-1 downto 0);
  
           -- S2 port
           S2_BUSY,S2_MR,S2_MW : out  Std_logic;
           S2_NREADY           : in   Std_logic;
           S2_ADDRBUS          : out  Std_logic_vector(addr_width-1 downto 0);
           S2_RDATABUS         : in   Std_logic_vector(data_width-1 downto 0);
           S2_WDATABUS         : out  Std_logic_vector(data_width-1 downto 0);
    
           -- S3 port
           S3_BUSY,S3_MR,S3_MW : out  Std_logic;
           S3_NREADY           : in   Std_logic;
           S3_ADDRBUS          : out  Std_logic_vector(addr_width-1 downto 0);
           S3_RDATABUS         : in   Std_logic_vector(data_width-1 downto 0);
           S3_WDATABUS         : out  Std_logic_vector(data_width-1 downto 0);
  
           -- S4 port
           S4_BUSY,S4_MR,S4_MW : out  Std_logic;
           S4_NREADY           : in   Std_logic;
           S4_ADDRBUS          : out  Std_logic_vector(addr_width-1 downto 0);
           S4_RDATABUS         : in   Std_logic_vector(data_width-1 downto 0);
           S4_WDATABUS         : out  Std_logic_vector(data_width-1 downto 0) );
  end component;

  component DMA
       generic ( signal_active : std_logic := '0'; size : positive := 32; addr_size : positive := 32);
       Port (   -- System Control Signals
           CLK               : in   Std_logic;
           reset             : in   Std_logic;
            
           -- M1 port
           M1_BUSY,M1_MR,M1_MW : out  Std_logic;
           M1_NREADY           : in   Std_logic;
           M1_ADDRBUS          : out  Std_logic_vector(31 downto 0);
           M1_RDATABUS         : in   Std_logic_vector(31 downto 0);
           M1_WDATABUS         : out  Std_logic_vector(31 downto 0);

           -- Slave (Control) port
           S1_BUSY,S1_MR,S1_MW : in   Std_logic;               
           S1_NREADY           : out  Std_logic;
           S1_ADDRBUS          : in   Std_logic_vector(3 downto 0);
           S1_RDATABUS         : out  Std_logic_vector(31 downto 0);
           S1_WDATABUS         : in   Std_logic_vector(31 downto 0) ); 
  end component;

  component SRAM 
  generic ( addr_size : integer := 8; word_size : integer := 16; signal_active : std_logic := '0');
  port (  clk       :   in  std_logic;
          rdn       :   in  std_logic;
          wrn       :   in  std_logic;
          address   :   in  std_logic_vector(addr_size-1 downto 0);
          bit_wen   :   in  std_logic_vector(word_size-1 downto 0);
          data_in   :   in  std_logic_vector(word_size-1 downto 0);
          data_out  :   out std_logic_vector(word_size-1 downto 0) );
  end component;

  component counter 
    generic ( data_size : integer := 16;num_counters : integer range 1 to 16 := 4; signal_active : std_logic := '0');
    port (  clk,resetn :   in  std_logic;
            rdn,wrn    :   in  std_logic;
            address    :   in  std_logic_vector(7 downto 0);
            data_in    :   in  std_logic_vector(data_size-1 downto 0);
            data_out   :   out std_logic_vector(data_size-1 downto 0) );
  end component;

  component fft_core 
   Port (  clk, resetn  : in  std_logic;
           addr_in      : in  std_logic_vector(31 downto 0); 
	   mr,mw        : in  std_logic;
	   data_in      : in  std_logic_vector(31 downto 0);
           data_out : out std_logic_vector(31 downto 0) );
  end component;

--  component fpu_double  
--    PORT( 
--      clk, rst, enable : IN     std_logic;
--      rmode : IN     std_logic_vector (1 DOWNTO 0);
--      fpu_op : IN     std_logic_vector (2 DOWNTO 0);
--      opa, opb : IN     std_logic_vector (63 DOWNTO 0);
--      out_fp: OUT    std_logic_vector (63 DOWNTO 0);
--      ready, underflow, overflow, inexact : OUT    std_logic;
--      exception, invalid : OUT    std_logic);
--  END component;

    component core_adapter
        Port (  clk, resetn  : in  std_logic;
        addr_in      : in  std_logic_vector(31 downto 0); 
        mr,mw        : in  std_logic;
        data_in      : in  std_logic_vector(31 downto 0);
        data_out     : out std_logic_vector(31 downto 0);
        nready       : out std_logic
        );
    end component;
   
-- DMA as Master Signals
signal DMAM_BUSY,DMAM_MR,DMAM_MW,DMAM_NREADY : std_logic;
signal DMAM_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
signal DMAM_RDATABUS,DMAM_WDATABUS :std_logic_vector(data_size-1 downto 0);

-- YOUR IP Signals
signal YOUR_BUSY,YOUR_MR,YOUR_MW,YOUR_NREADY : std_logic;
signal YOUR_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
signal YOUR_RDATABUS,YOUR_WDATABUS :std_logic_vector(data_size-1 downto 0);

-- SRAM Signals
signal SRAM_BUSY,SRAM_MR,SRAM_MW,SRAM_NREADY : std_logic;
signal SRAM_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
signal SRAM_RDATABUS,SRAM_WDATABUS :std_logic_vector(data_size-1 downto 0);
signal SRAM_MRN,SRAM_MWN,SRAM_NREADYN : std_logic; -- need these for only pt 4 and 5 since using sram hard macro

-- DMA as Slave Signals
signal DMAS_BUSY,DMAS_MR,DMAS_MW,DMAS_NREADY : std_logic;
signal DMAS_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
signal DMAS_RDATABUS,DMAS_WDATABUS :std_logic_vector(data_size-1 downto 0);

-- Counter Signals
signal CNT_BUSY,CNT_MR,CNT_MW,CNT_NREADY : std_logic;
signal CNT_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
signal CNT_RDATABUS,CNT_WDATABUS :std_logic_vector(data_size-1 downto 0);

begin  -- beh

  My_bus : ubus
    generic map (addr_width => 32, data_width => 32,
                 s1_start  => X"40001000", s1_end => X"400017ff",s2_start  => X"20000000", s2_end => X"200000ff",
                 s3_start  => X"a0000000", s3_end => X"a000000f",s4_start  => X"b0000000", s4_end => X"b00000ff" )
    port map ( clk,resetn,
               -- M1 port
               EXT_BUSY,EXT_MR,EXT_MW,EXT_NREADY,EXT_ADDRBUS,EXT_RDATABUS,EXT_WDATABUS,    
               -- M2 port
               '0',DMAM_MR,DMAM_MW,DMAM_NREADY,DMAM_ADDRBUS,DMAM_RDATABUS,DMAM_WDATABUS,		   
               -- S1 port
               SRAM_BUSY,SRAM_MR,SRAM_MW,'0',SRAM_ADDRBUS,SRAM_RDATABUS,SRAM_WDATABUS,
               -- S2 port
               YOUR_BUSY,YOUR_MR,YOUR_MW,YOUR_NREADY,YOUR_ADDRBUS,YOUR_RDATABUS,YOUR_WDATABUS,
               -- S3 port
               DMAS_BUSY,DMAS_MR,DMAS_MW,'0',DMAS_ADDRBUS,DMAS_RDATABUS,DMAS_WDATABUS,  
               -- S4 port
               CNT_BUSY,CNT_MR,CNT_MW,'0',CNT_ADDRBUS,CNT_RDATABUS,CNT_WDATABUS );

  My_DMA : DMA
    generic map (signal_active => '1', size => data_size, addr_size =>addr_size)
    port map(  CLK, resetn,             
               -- M1 port
               DMAM_BUSY,DMAM_MR,DMAM_MW,DMAM_NREADY,DMAM_ADDRBUS,DMAM_RDATABUS,DMAM_WDATABUS,
               -- Slave (Control) port
               DMAS_BUSY,DMAS_MR,DMAS_MW,DMAS_NREADY,DMAS_ADDRBUS(3 downto 0),DMAS_RDATABUS,DMAS_WDATABUS); 

-- for parts 4 and 5 since using SRAM hard macro
  SRAM_MRN <= not SRAM_MR;
  SRAM_MWN <= not SRAM_MW;
  my_Mem : SRAM
    generic map ( addr_size => 11, word_size => data_size, signal_active => '0')
    port map (  clk,SRAM_MRN,SRAM_MWN,SRAM_ADDRBUS(10 downto 0),x"00000000",SRAM_WDATABUS,SRAM_RDATABUS);

-- for parts 1-3
--  my_Mem : SRAM
--    generic map ( addr_size => 11, word_size => data_size, signal_active => '1')
--    port map (  clk,SRAM_MR,SRAM_MW,SRAM_ADDRBUS(10 downto 0),x"FFFFFFFF",SRAM_WDATABUS,SRAM_RDATABUS);

  my_Counter : counter
    generic map (data_size => 32,num_counters => 4, signal_active =>'1')
    port map ( clk,resetn,CNT_MR,CNT_MW,CNT_ADDRBUS(7 downto 0),CNT_WDATABUS,CNT_RDATABUS );

  my_core_adapter : core_adapter
    port map(  
        clk => clk,
        resetn => resetn,
        addr_in => YOUR_ADDRBUS,
        mr => YOUR_MR,
        mw => YOUR_MW,
        data_in => YOUR_WDATABUS,
        data_out => YOUR_RDATABUS,
        nready => YOUR_NREADY
   ); 

  --my_fpu_double : fpu_double
    --port map (clk, resetn, YOUR_ADDRBUS,YOUR_MR,YOUR_MW,YOUR_WDATABUS,YOUR_RDATABUS);

      --clk, rst, enable : IN     std_logic;
      --rmode : IN     std_logic_vector (1 DOWNTO 0);
      --fpu_op : IN     std_logic_vector (2 DOWNTO 0);
      --opa, opb : IN     std_logic_vector (63 DOWNTO 0);
      --out_fp: OUT    std_logic_vector (63 DOWNTO 0);
      --ready, underflow, overflow, inexact : OUT    std_logic;
      --exception, invalid : OUT    std_logic);

-- YOUR IP Signals
--signal YOUR_BUSY,YOUR_MR,YOUR_MW,YOUR_NREADY : std_logic;
--signal YOUR_ADDRBUS : std_logic_vector(addr_size-1 downto 0);
--signal YOUR_RDATABUS,YOUR_WDATABUS :std_logic_vector(data_size-1 downto 0);

  -----------------------------------------------------------------------------
  -- MY BLOCK
  -- As an example this region of the device includes a 32-bit FIR Filter. But
  -- of course, the block can be anything else.
end beh;

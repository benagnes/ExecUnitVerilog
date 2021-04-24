

library IEEE;
use IEEE.std_logic_1164.all;

entity core_adapter is
    Port (  clk, resetn  : in  std_logic;
            addr_in      : in  std_logic_vector(31 downto 0); 
            mr,mw        : in  std_logic;
            data_in      : in  std_logic_vector(31 downto 0);
            data_out     : out std_logic_vector(31 downto 0);
            nready       : out std_logic

            -- enable : OUT     std_logic;
            -- rmode : OUT     std_logic_vector (1 DOWNTO 0);
            -- fpu_op : OUT     std_logic_vector (2 DOWNTO 0);
            -- opa, opb : OUT     std_logic_vector (63 DOWNTO 0);
            -- out_fp: IN    std_logic_vector (63 DOWNTO 0);
            -- ready, underflow, overflow, inexact : IN    std_logic;
            -- exception, invalid : IN    std_logic
    );

end core_adapter;

architecture beh of core_adapter is

    COMPONENT fpu_double IS

    PORT( 
        clk, rst, enable : IN     std_logic;
        rmode : IN     std_logic_vector (1 DOWNTO 0);
        fpu_op : IN     std_logic_vector (2 DOWNTO 0);
        opa, opb : IN     std_logic_vector (63 DOWNTO 0);
        out_fp: OUT    std_logic_vector (63 DOWNTO 0);
        ready, underflow, overflow, inexact : OUT    std_logic;
        exception, invalid : OUT    std_logic
    );

    END component;


    constant opa_bottom_addr   : std_logic_vector(31 downto 0) := x"20000000";
    constant opa_top_addr   : std_logic_vector(31 downto 0) := x"20000001";
    constant opb_bottom_addr   : std_logic_vector(31 downto 0) := x"20000002";
    constant opb_top_addr   : std_logic_vector(31 downto 0) := x"20000003";
    constant op_misc_addr   : std_logic_vector(31 downto 0) := x"20000004";

    constant execute_addr   : std_logic_vector(31 downto 0) := x"20000010";

    constant out_bottom_addr   : std_logic_vector(31 downto 0) := x"20000040";
    constant out_top_addr   : std_logic_vector(31 downto 0) := x"20000041";
    constant out_flags_addr   : std_logic_vector(31 downto 0) := x"20000042";


    signal opa, opb: std_logic_vector(63 downto 0);
    signal op_misc: std_logic_vector(31 downto 0);   -- op_misc contains: opcode at (2 downto 0), rmode at (5 downto 4)

    --signal out_fp_c, out_fp, out_fp_0: std_logic_vector(63 downto 0);
    signal out_fp: std_logic_vector(63 downto 0);
    --signal out_flags: std_logic_vector(31 downto 0);  -- out_flags contains: ready at 0, underflow at 1, overflow at 2, inexact at 3, exception at 4, invalid at 5

    signal trigger_fpu: std_logic;
    signal fpu_ready: std_logic;
 --   signal reset: std_logic;
    -- signal reset_d0, reset_d1: std_logic;
    --signal reset_d0: std_logic;
    signal underflow, overflow, inexact, exception, invalid : std_logic;

    begin  -- beh

        my_fpu_double: fpu_double
        port map (
            clk => clk,
            rst => resetn,
            enable => trigger_fpu,
            rmode => op_misc(5 downto 4),
            fpu_op => op_misc(2 downto 0),
            opa => opa,
            opb => opb,
            out_fp => out_fp,
            ready => fpu_ready,
            underflow => underflow, --out_flags(0),
            overflow => overflow, --out_flags(1),
            inexact => inexact, --out_flags(2),
            exception => exception, --out_flags(3),
            invalid => invalid --out_flags(4)
        );

        nready <= not fpu_ready;
     
        --out_flags <= "000000000000000000000000000" & invalid & exception & inexact & overflow & underflow;

        --process (clk, resetn)
        --begin
        --    if rising_edge(clk) then
        --        if resetn = '0' then
        --            reset_d0 <= '1';
        --        else
        --            reset_d0 <= '0';
        --        end if;
        --    end if;
        --send process;

        --process (clk)
        --begin
        --    if rising_edge(clk) then
        --        reset_d0 <= reset;
        --        reset_d1 <= reset_d0;
        --    end if;
        --end process;

        --process (clk, resetn) -- line 78 was out_fp => out_fp_c
        --begin
        --    if resetn = '0' then
        --        out_fp <= (others => '0');
        --        out_fp_0 <= (others => '0');
        --    elsif rising_edge(clk) then
        --        if fpu_ready = '1' then
                    --out_fp_0 <= out_fp_c;
                    --out_fp <= out_fp_0;
        --            out_fp <= out_fp_c;
        --        end if;
        --    end if;
        --end process;

        buffer_inputs: process (clk)
        begin
            if rising_edge(clk) then
                if resetn = '0' then
                    --reset_d1 <= '0';
                    opa <= (others => '0');
                    opb <= (others => '0');
                    op_misc <= (others => '0');
                    --out_flags <= (others => '0');
                    data_out <= (others => '0');
                    trigger_fpu <= '0';
                    --underflow <= '0';
                    --overflow <= '0';
                    --inexact <= '0';
                    --exception <= '0';
                    --invalid <= '0';

                else

                    if mw='1' then
                        trigger_fpu <= '0';
                        if addr_in=opa_bottom_addr then
                            opa(31 downto 0) <= data_in;
                        elsif addr_in=opa_top_addr then
                            opa(63 downto 32) <= data_in;
                        elsif addr_in=opb_bottom_addr then
                            opb(31 downto 0) <= data_in;
                        elsif addr_in=opb_top_addr then
                            opb(63 downto 32) <= data_in;
                        elsif addr_in=op_misc_addr then
                            op_misc <= data_in;
                            trigger_fpu <= '1';
                        --elsif addr_in=execute_addr then
                        --    trigger_fpu <= '1';
                        end if;

                    elsif mr='1' then
                        trigger_fpu <= '0';
                        --out_flags <= "000000000000000000000000000" & invalid & exception & inexact & overflow & underflow;
                        if addr_in=out_bottom_addr then
                            data_out <= out_fp(31 downto 0);
                        elsif addr_in=out_top_addr then
                            data_out <= out_fp(63 downto 32);
                        elsif addr_in=out_flags_addr then
                            -- output flags
                            data_out <= "000000000000000000000000000" & invalid & exception & inexact & overflow & underflow; --out_flags;
                        end if;
                    else
                        trigger_fpu <= '0';
                    end if;

                end if;
            end if;

        end process;

end beh;


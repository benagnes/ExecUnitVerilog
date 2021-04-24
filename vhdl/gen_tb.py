#!/usr/bin/env python3

"""generated TB will only do one thing at time and expects a 32-bit signal called store_data is declared for storing values on the bus"""

import sys

period = 20
core_load_start_addr_int = 0x20000000
core_read_start_addr_int = 0x20000040
core_add_cycles = 24
core_sub_cycles = 25
core_mul_cycles = 28

def initial_setup():
    cmd = f"""
    store_data <= (others => '0');
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for {int(15*period/4)} ns;
    """
    return cmd

def wait_for(time):
    cmd = f"""
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for {time} ns;
    """
    return cmd

def read_from_sram(addr):
    cmd = f"""
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"{addr}";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    """
    return cmd

def write_to_sram(addr, val):
    """valid addr range "40001000" to "400017ff"""

    cmd = f"""
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"{addr}";EXT_WDATABUS<= X"{val}";
    wait for {period} ns;
    """
    return cmd

def wait_for_core_compute(calc_type):
    cycles = core_add_cycles if calc_type == "0" else core_sub_cycles if calc_type == "1" else core_mul_cycles if calc_type == "2" else printf("bad type") and sys.exit(1)
    cmd = f"""
    wait for {int(period * cycles)} ns;
    """
    return cmd

def send_dma(source_addr, source_step, dest_addr, dest_step, count):
    cmd = f"""
    -- SEND DMA
    -- Source address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000004";EXT_WDATABUS<= X"{source_addr}";
    wait for {period} ns;
    -- Source step
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000005";EXT_WDATABUS<= X"{source_step}";
    wait for {period} ns;
    -- Destination address
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000006";EXT_WDATABUS<= X"{dest_addr}";
    wait for {period} ns;
    -- Destination step (0 as we are always writing to the same port (FFT IN)
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000007";EXT_WDATABUS<= X"{dest_step}";
    wait for {period} ns;
    -- D M A Goooooooooooooooooooooooooooooooooooooooo!
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"a0000000";EXT_WDATABUS<= X"{count}";
    wait for {period} ns;
    -- Give some time to complete DMA Transfer
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for {period * int(count, 16) * 3 + period * 10} ns;
    """
    return cmd

def load_data_into_core(opa_bottom, opa_top, opb_bottom, opb_top, opcode_rmode):
    cmd = f"""
    -- LOAD DATA INTO OUR CORE
    -- load bottom 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000000";EXT_WDATABUS<= X"{opa_bottom}";
    wait for {period} ns;
    -- load top 32 bits of opa
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000001";EXT_WDATABUS<= X"{opa_top}";
    wait for {period} ns;
    -- load bottom 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000002";EXT_WDATABUS<= X"{opb_bottom}";
    wait for {period} ns;
    -- load top 32 bits of opb
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000003";EXT_WDATABUS<= X"{opb_top}";
    wait for {period} ns;
    -- load opcode and rmode and execute
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"20000004";EXT_WDATABUS<= X"{opcode_rmode}";
    wait for {period} ns;
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    {wait_for_core_compute(opcode_rmode[-1])}
    """
    return cmd

def read_core_result():
    cmd = f"""
    -- READ DATA FROM OUR CORE
    -- read bottom 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000040";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    -- read top 32 bits of result
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000041";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    -- read result flags
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"20000042";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    """
    return cmd

def read_from_sram_load_into_core(sram_start_addr):
    sram_start_addr_int = int(sram_start_addr, 16)
    cmd = ""
    for i in range(5):
        subcmd = f"""
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"{sram_start_addr_int + i:0>8X}";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    store_data <= EXT_RDATABUS;
    EXT_MR <= '0';
    wait for {period} ns;
    -- write to core
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"{core_load_start_addr_int + i:0>8X}";EXT_WDATABUS<=store_data;
    wait for {period} ns;
    """

        cmd += subcmd

    cmd += f"""
    EXT_MR <= '0';EXT_MW <= '0';EXT_ADDRBUS<= X"00000000";EXT_WDATABUS<= X"00000000";
    wait for {int(period * 32)} ns;
    """
    return cmd

def read_from_core_save_into_sram_verify(sram_start_addr):
    sram_start_addr_int = int(sram_start_addr, 16)
    cmd = ""
    for i in range(3):
        subcmd = f"""
    -- get data from core and write back to SRAM
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"{core_read_start_addr_int + i:0>8X}";EXT_WDATABUS<= X"00000000";
    wait for {period} ns; 
    EXT_MR <= '0';
    store_data <= EXT_RDATABUS;
    wait for {period} ns;
    -- write to SRAM
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"{sram_start_addr_int + i:0>8X}";EXT_WDATABUS<=store_data;
    wait for {period} ns;
    """

        cmd += subcmd

    cmd += f"""
    EXT_MW <= '0';
    wait for {int(period * 32)} ns;
    -- read back from SRAM to verify
    """
        
    for i in range(3):
        subcmd = read_from_sram(f"{sram_start_addr_int + i:0>8X}")
        cmd += subcmd

    return cmd

def reset_counter():
    cmd = f"""
    -- Example 1: Resetting and Starting counter
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000010";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    """

    return cmd

def start_counter():
    cmd = f"""
    EXT_MR <= '0';EXT_MW <= '1';EXT_ADDRBUS<= X"b0000020";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    """

    return cmd

def read_counter():
    cmd = f"""
    -- Reading counter value to measure performance
    EXT_MR <= '1';EXT_MW <= '0';EXT_ADDRBUS<= X"b0000000";EXT_WDATABUS<= X"00000000";
    wait for {period} ns;
    """

    return cmd


# end codegen funcs

def build_tests():
    test_lines = ("" +
        initial_setup() +
        reset_counter() +
        start_counter() +
        # basic addition test
        load_data_into_core("00000001", "40100000", "00000001", "40100000", "00000020") +
        read_core_result() +
        write_to_sram("40001010", "00000001") +
        write_to_sram("40001011", "40030000") +
        write_to_sram("40001012", "00000001") +
        write_to_sram("40001013", "40040000") +
        write_to_sram("40001014", "00000020") +
        read_from_sram_load_into_core("40001010") +
        read_from_core_save_into_sram_verify("40001015") + 
        write_to_sram("40001018", "00000001") +
        write_to_sram("40001019", "40020000") +
        write_to_sram("4000101A", "00000001") +
        write_to_sram("4000101B", "40020000") +
        write_to_sram("4000101C", "00000020") +
        send_dma("40001018", "00000001", "20000000", "00000001", "00000005") +
        wait_for_core_compute("0") +
        send_dma("20000040", "00000001", "4000101D", "00000001", "00000003") +
        wait_for(period * 4) +
        # addition tests
        reset_counter() +
        start_counter() +
        load_data_into_core("FFFFFFFF", "3FFFFFFF", "FFFFFFFF", "3FFFFFFF", "00000020") +
        read_counter() +
        read_core_result() +  # expect 400FFFFF FFFFFFFF

        # subtraction tests
        reset_counter() +
        start_counter() +
        load_data_into_core("FFFFFFFE", "3FFFFFFF", "FFFFFFFF", "3FFFFFFF", "00000021") +
        read_counter() +
        read_core_result() +  # expect BCB00000 00000000

        # multiplication tests
        reset_counter() +
        start_counter() +
        load_data_into_core("FFFFFFFE", "3FFFFFFF", "FFFFFFFF", "3FFFFFFF", "00000022") +
        read_counter() +
        read_core_result() +  # expect 400FFFFF FFFFFFFE
        
        wait_for(period * 4) +
    "")

    return test_lines


def main():
    lines_before = []
    lines_after = []
    with open(sys.argv[1]) as f:
        lines = f.readlines()

    for i in range(len(lines)):
        if lines[i].lstrip().startswith("-- @test_body"):
            lines_before = lines[:i]
            lines_after = lines[i+1:]
            break
    else:
        printf("couldn't find test body marker")
        sys.exit(1)

    lines_body = (f"""
   clock_engine : process
    begin
      clk <= '0';
      wait for {period/2} ns;
      clk <= '1';
      wait for {period/2} ns;
    end process;

    reset_engine : process
      begin
        resetn <='0';
        wait for {period} ns;
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

        """ + 
        build_tests() +
        """

        report "simulation finished successfully" severity FAILURE; -- end sim
    end process;
        """)

    tb_file = "".join(lines_before) + lines_body + "".join(lines_after)

    print(tb_file)


if __name__ == "__main__":
    main()

--
-- (C) 2016 Masayuki Takagiwa
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library unisim;
use unisim.vcomponents.all;

use work.f32c_pack.all;

entity glue is
    generic (
        C_clk_freq: integer := 100;

        -- ISA options
        C_arch: integer := ARCH_MI32;

        -- CPU debugging
        C_debug: boolean := false;

        -- SoC configuration options
        C_bram_size: integer := 128 -- in KBytes
    );
    port (
        clk_100m: in std_logic; -- R4
        rs232_dce_txd: out std_logic; -- AA19
        rs232_dce_rxd: in std_logic;  -- V18
        btnl, btnr, btnu, btnd, btnc: in std_logic;
        sw: in std_logic_vector(7 downto 0);
        ld: out std_logic_vector(7 downto 0)
    );
end glue;

architecture Behavioral of glue is

    signal clk_in: std_logic;
    signal clk_fb: std_logic;
    signal clk_out: std_logic;
    signal clk: std_logic;

    signal rs232_break: std_logic;

begin

    -- clock synthesizer
    clkin: ibufg
    port map (
       i => clk_100m,
       o => clk_in
    );

    clkgen: plle2_base
    generic map (
        clkfbout_mult => 9,
        clkin1_period => 10.0,
        divclk_divide => 1,
        clkout0_divide => 9
    )
    port map (
        clkin1 => clk_in,
        clkfbin => clk_fb,
        rst => rs232_break,
        clkout0 => clk_out,
        clkfbout => clk_fb,
        locked => open,
        pwrdwn => '0'
    );

    clkbuf: bufg
    port map (
        i => clk_out,
        o => clk
    );

    -- reset hard-block
    reset: startupe2
    generic map (
        prog_usr => "FALSE"
    )
    port map (
        clk => clk,
        gsr => rs232_break,
        gts => '0',
        keyclearb => '0',
        pack => '1',
        usrcclko => clk,
        usrcclkts => '0',
        usrdoneo => '1',
        usrdonets => '0'
    );

    -- generic BRAM glue
    glue_bram: entity work.glue_bram
    generic map (
        C_clk_freq => C_clk_freq,
        C_arch => C_arch,
        C_debug => C_debug,
        C_bram_size => C_bram_size
    )
    port map (
        clk => clk,
        sio_txd(0) => rs232_dce_txd,
        sio_rxd(0) => rs232_dce_rxd,
        sio_break(0) => rs232_break,
        spi_miso => (others => '0'),
        gpio(127 downto 0) => open,
        simple_out(7 downto 0) => ld,
        simple_out(31 downto 8) => open,
        simple_in(0) => btnr,
        simple_in(1) => btnl,
        simple_in(2) => btnd,
        simple_in(3) => btnu,
        simple_in(4) => btnc,
        simple_in(7 downto 5) => "000",
        simple_in(15 downto 8) => sw,
        simple_in(31 downto 16) => x"00"
    );

end Behavioral;

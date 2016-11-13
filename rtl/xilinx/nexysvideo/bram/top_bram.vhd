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
        rs232_user_txd: out std_logic;
        rs232_user_rxd: in std_logic;
        btnl, btnr, btnu, btnd, btnc: in std_logic;
        sw: in std_logic_vector(7 downto 0);
        ld: out std_logic_vector(7 downto 0);
        ja, jb: inout std_logic_vector(7 downto 0); -- pmod
        oled_dc, oled_res, oled_sclk, oled_sdin, oled_vbat, oled_vdd: inout std_logic
    );
end glue;

architecture Behavioral of glue is

    signal clk: std_logic;

    signal rs232_break: std_logic_vector(2 downto 0);

    signal s_gpio: std_logic_vector(127 downto 0);

    signal uart_txd : std_logic_vector(1 downto 0);
    signal uart_rxd : std_logic_vector(1 downto 0);
    signal uart_break : std_logic_vector(1 downto 0);

begin

    s_gpio <= (others => 'Z');

    -- clock synthesizer
    clkin: ibufg
    port map (
       i => clk_100m,
       o => clk
    );

    -- reset hard-block
    reset: startupe2
    generic map (
        prog_usr => "FALSE"
    )
    port map (
        clk => clk,
        gsr => rs232_break(2),
        gts => '0',
        keyclearb => '0',
        pack => '1',
        usrcclko => clk,
        usrcclkts => '0',
        usrdoneo => '1',
        usrdonets => '0'
    );

    rs232_break(2) <= rs232_break(0);

    -- generic BRAM glue
    glue_bram: entity work.glue_bram
    generic map (
        C_clk_freq => C_clk_freq,
        C_arch => C_arch,
        C_debug => C_debug,
        C_bram_size => C_bram_size,
        C_sio => 2
    )
    port map (
        clk => clk,
--        sio_txd(0) => rs232_dce_txd,
--        sio_rxd(0) => rs232_dce_rxd,
--        sio_break(0) => rs232_break(0),
--        sio_txd(1) => rs232_user_txd,
--        sio_rxd(1) => rs232_user_rxd,
--        sio_break(1) => rs232_break(1),
        sio_txd => uart_txd,
        sio_rxd => uart_rxd,
        sio_break => uart_break,
        spi_miso => (others => '0'),

        gpio(7 downto 0) => ja,
        gpio(15 downto 8) => jb,
        gpio(23 downto 16) => s_gpio(23 downto 16), -- jc
        gpio(24) => oled_dc,
        gpio(25) => oled_res,
        gpio(26) => oled_sclk,
        gpio(27) => oled_sdin,
        gpio(28) => oled_vbat,
        gpio(29) => oled_vdd,
        gpio(31 downto 30) => s_gpio(31 downto 30),
        gpio(127 downto 32) => s_gpio(127 downto 32),

        simple_out(7 downto 0) => ld,
        simple_out(31 downto 8) => open,

        simple_in(0) => btnr,
        simple_in(1) => btnl,
        simple_in(2) => btnd,
        simple_in(3) => btnu,
        simple_in(4) => btnc,
        simple_in(7 downto 5) => "000",
        simple_in(15 downto 8) => x"00",
        simple_in(23 downto 16) => sw,
        simple_in(31 downto 24) => x"00"
    );

    rs232_dce_txd <= uart_txd(0);
    uart_rxd(0) <= rs232_dce_rxd;
    rs232_break(0) <= uart_break(0);
    rs232_user_txd <= uart_txd(1);
    uart_rxd(1) <= rs232_user_rxd;

end Behavioral;

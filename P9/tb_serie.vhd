library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_serie is
end tb_serie;

architecture Behavioral of tb_serie is
    component serie is
        port (CLK, RST, I3   : in  STD_LOGIC;
              O0, O1, O2, O3 : out STD_LOGIC
        );
    end component;
    signal CLK, RST, I3, O0, O1, O2, O3 : STD_LOGIC;
begin
    DUT : serie port map(CLK => CLK, RST => RST, I3 => I3,
                         O0 => O0, O1 => O1, O2 => O2, O3 => O3
                         );

    process begin
        CLK <= '0'; wait for 5ns;
        CLK <= '1'; wait for 5ns;
    end process;

    process begin
        RST <= '0'; wait for 12ns;
        RST <= '1'; wait for 13ns;
        RST <= '0'; wait;
    end process;

    process begin
        I3 <= '0'; wait for 30ns;
        I3 <= '1'; wait for 10ns;
        I3 <= '0'; wait for 20ns;
        I3 <= '1'; wait for 30ns;
        I3 <= '0'; wait;
    end process;
end Behavioral;

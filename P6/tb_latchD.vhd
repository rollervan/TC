library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_latchD is
end tb_latchD;

architecture Behavioral of tb_latchD is
    component latchD is
        port (D,E : in  STD_LOGIC;
              Q   : out STD_LOGIC
        );
    end component;
    signal D, E, Q : STD_LOGIC;
begin
    DUT : reloj port map(D => D, E => E, Q => Q);

    process begin
        D <= '0'; E <= '0'; wait for 10ns;
        D <= '1'; E <= '0'; wait for 20ns;
        D <= '0'; E <= '1'; wait for 40ns;
        D <= '1'; E <= '1'; wait for 10ns;
        D <= '0'; E <= '1'; wait for 10ns;
        D <= '0'; E <= '0'; wait for 30ns;
        D <= '1'; E <= '0'; wait;
    end process;
end Behavioral;

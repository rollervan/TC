library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_ej3 is
end tb_ej3;

architecture Behavioral of tb_ej3 is
    component ej3 is
        Port (A, B, C : in  STD_LOGIC;
              Y       : out STD_LOGIC
        );
    end component;
    signal A, B, C, Y : STD_LOGIC;
begin
    DUT : ej3 port map(A => A, B => B, C => C, Y => Y);

    process begin
        A <= '0'; B <= '0'; C <= '0'; wait for 10ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10ns;
        A <= '1'; B <= '1'; C <= '1'; wait;
    end process;
end Behavioral;

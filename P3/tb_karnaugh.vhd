library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_karnaugh is
end tb_karnaugh;

architecture Behavioral of tb_karnaugh is
    component karnaugh is
        Port (A, B, C : in  STD_LOGIC;
              F       : out STD_LOGIC
        );
    end component;
    signal A, B, C, F : STD_LOGIC;
begin
    DUT : karnaugh port map(A => A, B => B, C => C, F => F);

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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_ej1 is
end tb_ej1;

architecture Behavioral of tb_ej1 is
    component ej1 is
        Port (X, Y, Z : in  STD_LOGIC;
              F       : out STD_LOGIC
        );
    end component;
    signal X, Y, Z, F : STD_LOGIC;
begin
    DUT : ej1 port map(X => X, Y => Y, Z => Z, F => F);

    process begin
        X <= '0'; Y <= '0'; Z <= '0'; wait for 10ns;
        X <= '0'; Y <= '0'; Z <= '1'; wait for 10ns;
        X <= '0'; Y <= '1'; Z <= '0'; wait for 10ns;
        X <= '0'; Y <= '1'; Z <= '1'; wait for 10ns;
        X <= '1'; Y <= '0'; Z <= '0'; wait for 10ns;
        X <= '1'; Y <= '0'; Z <= '1'; wait for 10ns;
        X <= '1'; Y <= '1'; Z <= '0'; wait for 10ns;
        X <= '1'; Y <= '1'; Z <= '1'; wait;
    end process;
end Behavioral;

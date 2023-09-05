library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_reloj is
end tb_reloj;

architecture Behavioral of tb_reloj is
    component reloj is
        port (CLK : in  STD_LOGIC;
              LED : out STD_LOGIC
        );
    end component;
    signal CLK, LED : STD_LOGIC;
begin
    DUT : reloj port map(CLK => CLK, LED => LED);

    process begin
        CLK <= '0'; wait for 5ns;
        CLK <= '1'; wait for 5ns;
    end process;
end Behavioral;

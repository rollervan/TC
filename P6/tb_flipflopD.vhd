library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_flipflopD is
end tb_flipflopD;

architecture Behavioral of tb_flipflopD is
    component flipflopD is
        port (CLK,D : in  STD_LOGIC;
              Q     : out STD_LOGIC
        );
    end component;
    signal CLK, D, Q : STD_LOGIC;
begin
    DUT : reloj port map(CLK => CLK, D => D, Q => Q);

    process begin
        CLK <= '0'; wait for 5ns;
        CLK <= '1'; wait for 5ns;
    end process;

    process begin
        D <= '0'; wait for 10ns;
        D <= '1'; wait for 20ns;
        D <= '0'; wait for 40ns;
        D <= '1'; wait for 10ns;
        D <= '0'; wait for 10ns;
        D <= '0'; wait for 30ns;
        D <= '1'; wait;
    end process;
end Behavioral;

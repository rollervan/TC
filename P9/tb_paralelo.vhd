library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_paralelo is
end tb_paralelo;

architecture Behavioral of tb_paralelo is
    component paralelo is
        port (CLK, RST       : in  STD_LOGIC;
              I0, I1, I2, I3 : in  STD_LOGIC;
              O0, O1, O2, O3 : out STD_LOGIC
        );
    end component;
    signal CLK, RST, I0, I1, I2, I3, O0, O1, O2, O3 : STD_LOGIC;
begin
    DUT : paralelo port map(CLK => CLK, RST => RST,
                            I0 => I0, I1 => I1, I2 => I2, I3 => I3,
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
        I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '0'; wait for 30ns;
        I0 <= '1'; I1 <= '0'; I2 <= '0'; I3 <= '0'; wait for 20ns;
        I0 <= '1'; I1 <= '0'; I2 <= '1'; I3 <= '0'; wait for 20ns;
        I0 <= '0'; I1 <= '0'; I2 <= '0'; I3 <= '0'; wait for 10ns;
        I0 <= '1'; I1 <= '1'; I2 <= '1'; I3 <= '1'; wait;
    end process;
end Behavioral;

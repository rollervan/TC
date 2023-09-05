library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequential1 is
    Port (CLK, CLR : in  STD_LOGIC;
          Q        : out STD_LOGIC_VECTOR(3 downto 0)
    );
end sequential1;

architecture Behavioral of sequential1 is
    component sequential2 is
        Port ( CLK, CLR, L, UP : in STD_LOGIC;
               D : in  STD_LOGIC_VECTOR(3 downto 0);
               Q : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
    signal L_AUX : STD_LOGIC;
    signal Q_AUX : STD_LOGIC_VECTOR(3 downto 0);
begin
    SEQ2 : sequential2 port map(
        CLK => CLK,
        CLR => CLR,
        L   => L_AUX,
        UP  => '0',
        D   => "1101",
        Q   => Q_AUX
    );
    L_AUX <= not(Q_AUX(0)) and Q_AUX(1) and Q_AUX(2) and not(Q_AUX(3));
    Q <= Q_AUX;
end Behavioral;

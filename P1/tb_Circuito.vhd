library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Circuito is
end tb_Circuito;

architecture Behavioral of tb_Circuito is
	component Circuito is
		port ( X1 : in  STD_LOGIC;
			   X2 : in  STD_LOGIC;
			   Y  : out STD_LOGIC
		);
	end component;

	signal X1, X2, Y : STD_LOGIC;
begin
	DUT : Circuito port map(X1 => X1, X2 => X2, Y => Y);

	process begin
		X1 <= '0'; X2 <= '0'; wait for 10ns;
		X1 <= '0'; X2 <= '1'; wait for 20ns;
		X1 <= '1'; X2 <= '0'; wait for 50ns;
		X1 <= '1'; X2 <= '1'; wait;
	end process;
end Behavioral;

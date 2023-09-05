library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_Inversor is
end tb_Inversor;

architecture Behavioral of tb_Inversor is
	component Inversor is
		port ( X : in  STD_LOGIC;
			   Y : out STD_LOGIC
		);
	end component;

	signal X, Y : STD_LOGIC;
begin
	DUT : Inversor port map(X => X, Y => Y);

	process begin
		X <= '0'; wait for 10ns;
		X <= '1'; wait for 20ns;
		X <= '0'; wait for 50ns;
		X <= '1'; wait;
	end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity combinational is
    Port ( A : in  STD_LOGIC_VECTOR(2 downto 0);
           Y : out STD_LOGIC_VECTOR(2 downto 0)
    );
end combinational;

architecture Behavioral of combinational is
    signal S : STD_LOGIC;
    constant B : STD_LOGIC_VECTOR(2 downto 0) := "101";
begin
    S <= (A(2) or A(1) or A(0) or not(B(0))) and (A(2) or A(1) or not(B(1))) and (A(2) or not(B(2))) and (A(2) or A(0) or not(B(1)) or not B(0)) and (A(1) or A(0) or not(B(2)) or not(B(0))) and (A(1) or not(B(2)) or not(B(1))) and (A(0) or not(B(2)) or not(B(1)) or not(B(0)));
    Y <= A when S = '1' else (others => '0');
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sequential2 is
    Port ( CLK, CLR, L, UP : in STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(3 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0)
    );
end sequential2;

architecture Behavioral of sequential2 is
    signal C : integer range 0 to 15;
begin
    process(CLK) begin
        if(rising_edge(CLK)) then
            if (CLR = '1') then
                C <= 0;
            else
                if (L = '1') then
                    C <= to_integer(unsigned(D));
                else
                    if (UP = '1') then
                        if (C = 15) then
                            C <= 0;
                        else
                            C <= C + 1;
                        end if;
                    else
                        if (C = 0) then
                            C <= 15;
                        else
                            C <= C - 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
    Q <= std_logic_vector(to_unsigned(C, Q'length));
end Behavioral;

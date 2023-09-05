library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity patternMealy is
    Port (CLK, RST : in  STD_LOGIC;
          X        : in  STD_LOGIC;
          Z        : out STD_LOGIC
    );
end patternMealy;

architecture Behavioral of patternMealy is
    type estados is (S0,S1);
    signal current_state, next_state : estados;
begin
    process(CLK, RST) begin
        if (RST = '1') then
            current_state <= S0;
        elsif (rising_edge(CLK)) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, X) begin
        case current_state is
            when S0 =>
                if (X = '1') then
                    next_state <= S0;
                    Z <= '0';
                else
                    next_state <= S1;
                    Z <= '0';
                end if;
            when S1 =>
                if (X = '1') then
                    next_state <= S0;
                    Z <= '1';
                else
                    next_state <= S1;
                    Z <= '0';
                end if;
            when others =>
                next_state <= S0;
                Z <= '0';
        end case;
    end process;
end Behavioral;

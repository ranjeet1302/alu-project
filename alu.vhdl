library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    Port ( A, B : in STD_LOGIC_VECTOR (3 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Result : out STD_LOGIC_VECTOR (3 downto 0));
end alu;

architecture Behavioral of alu is
begin
    process(A, B, Sel)
    begin
        case Sel is
            when "00" => Result <= A + B;
            when "01" => Result <= A - B;
            when "10" => Result <= A AND B;
            when "11" => Result <= A OR B;
            when others => Result <= "0000";
        end case;
    end process;
end Behavioral;
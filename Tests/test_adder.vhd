----------------------------------------------------------------------------------
-- TUM VHDL Assignment
-- Arthur Docquois, Maelys Chevrier, Timothée Carel, Roman Canals
--
-- Create Date: 19/07/2022
-- Project Name: CPU RTL model

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity test_adder is
--  Port ( );
Generic (
        input_width : integer := 32
);
end test_adder;

architecture Behavioral of test_adder is
    signal a : integer := 5;
    signal b : integer := 7;
    signal s : integer;
    signal a_bit : std_logic_vector(input_width-1 downto 0);
    signal b_bit : std_logic_vector(input_width-1 downto 0);
    signal s_bit : std_logic_vector(input_width-1 downto 0);
    

begin
a_bit <= std_logic_vector(to_signed(a, input_width));
b_bit <= std_logic_vector(to_signed(b, input_width));
adder: entity work.adder(Behavioral)
port map(
	a	=>	a_bit,
	b	=>	b_bit,
	neg_b	=>	'0',
	s	=>	s_bit
);


s <= to_integer(signed(s_bit));

end Behavioral;
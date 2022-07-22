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
use work.cpu_defs_pack.all;

entity ALU is
    Port (
            operand1       :       in      data_type;
            operand2       :       in      data_type;
            carry          :	   in	   STD_LOGIC;
            operation      :       in	   opcode_type;
            result         :       out     data_type
     );
end ALU;

architecture Behavioral of ALU is
    signal out_adder : data_type:=(others =>'0');   
    signal out_logic_unit : data_type:=(others =>'0');
    signal out_shifter : data_type:=(others =>'0');
    signal out_comparator : data_type:=(others =>'0');

begin

adder: entity work.adder(Behavioral)
port map(
	a	=>	operand1,
	b	=>	operand2,
	neg_b	=>	'0',
	s	=>	out_adder
);

end Behavioral;
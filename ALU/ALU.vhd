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
    signal out_adder : std_logic_vector(data_width-1 downto 0):=(others =>'0');   
    signal out_logic_unit : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_shifter : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_comparator : std_logic_vector(data_width-1 downto 0):=(others =>'0');

begin

end Behavioral;
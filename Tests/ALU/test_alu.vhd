----------------------------------------------------------------------------------
-- TUM VHDL Assignment
-- Arthur Docquois, Maelys Chevrier, Timothée Carel, Roman Canals
--
-- Create Date: 19/07/2022
-- Project Name: CPU RTL model

----------------------------------------------------------------------------------

library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity test_ALU is
    
end test_ALU;

architecture Behavioral of test_ALU is
    signal a : data_type:=(others =>'1');
    signal b : data_type:=(others =>'0');
        
    signal out_SLL : data_type:=(others =>'0');
    signal out_and : data_type:=(others =>'0');
    signal out_add : data_type:=(others =>'0');

begin
b(0) <= '1';

alu_SLL: entity work.ALU(Behavioral)
port map(
    operand1 => a,
    operand2 => b,
    operation => code_sll,
    result => out_SLL
);

alu_and: entity work.ALU(Behavioral)
port map(
    operand1 => a,
    operand2 => b,
    operation => code_and,
    result => out_and
);

ALU_add: entity work.ALU(Behavioral)
port map(
    operand1 => a,
    operand2 => b,
    operation => code_add,
    result => out_add
);


end Behavioral;
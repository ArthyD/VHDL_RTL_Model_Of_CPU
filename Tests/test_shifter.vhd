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


entity test_shifter is

end test_shifter;

architecture Behavioral of test_shifter is
    signal a : data_type:=(others =>'1');
    signal out_SLL : data_type:=(others =>'0');
    signal out_SRL : data_type:=(others =>'0');
    signal out_SRA : data_type:=(others =>'0');

begin
shifterSLL: entity work.shifter(Behavioral)
port map(
    a => a,
    code => code_sll,
    s => out_SLL
);

shifterSRL: entity work.shifter(Behavioral)
port map(
    a => a,
    code => code_srl,
    s => out_SRL
);

shifterSRA: entity work.shifter(Behavioral)
port map(
    a => a,
    code => code_sra,
    s => out_SRA
);

end Behavioral;


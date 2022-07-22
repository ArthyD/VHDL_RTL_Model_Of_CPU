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

entity shifter is 
Port (
        a       :       in      data_type;
	    code	:	    in	    opcode_type;
        s       :       out	    data_type
);
end shifter;

architecture Behavioral of shifter is
begin
    if (code = code_sll) then
        sll2: entity work.sll2(Behavioral)
        port map(
            a => a,
            b => s
        );
    elsif (code = code_srl) then
        srl2: entity work.srl2(Behavioral)
        port map(
            a => a,
            b => s
        );       
    elsif (code = code_sra) then
        sra2: entity work.sra2(Behavioral)
        port map(
            a => a,
            b => s
        );  
    else
        s <= (others =>'0');
end Behavioral;
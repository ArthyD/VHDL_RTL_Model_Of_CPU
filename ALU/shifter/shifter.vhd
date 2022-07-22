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

entity shifter is 
Port (
        a       :       in      data_type;
	    code	:	    in	    opcode_type;
        s       :       out	    data_type
);
end shifter;

architecture Behavioral of shifter is
begin
    if(code = code_sll) then
        sll: entity work.sll(Behavioral)
        port map(
            a => a,
            b => s
        );
    elsif(code = code_srl) then
        srl: entity work.srl(Behavioral)
        port map(
            a => a,
            b => s
        );       
    elsif(code = code_srl) then
        srl: entity work.srl(Behavioral)
        port map(
            a => a,
            b => s
        );  
    else
        s <= (others =>'0')
end Behavioral;
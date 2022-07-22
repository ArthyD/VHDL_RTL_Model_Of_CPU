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

entity logic_unit is 
port(
    a	:	in	data_type;
    b   :   in  data_type;
    code:	in	opcode_type;
    s	:	out	data_type
);
end logic_unit;

architecture Behavioral of logic_unit is
begin
    if(code = code_and) then
        and2: entity work.and2(Behavioral)
        port map(
            a => a,
            b => b,
            c => s
        );
    elsif(code = code_or) then
        or2: entity work.or2(Behavioral)
        port map(
            a => a,
            b => b,
            c => s
        );       
    elsif(code = code_xor) then
        xor2: entity work.xor2(Behavioral)
        port map(
            a => a,
            b => b,
            c => s
        ); 
    else
        s <= (others =>'0');
        
end Behavioral;


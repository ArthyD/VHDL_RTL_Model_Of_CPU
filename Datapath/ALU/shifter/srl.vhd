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

entity SRL2 is 
port(
    a	:	in	data_type;
	b	:	out	data_type
);
end SRL2;

architecture Behavioral of SRL2 is
begin
    b <= a srl 1;
end Behavioral;
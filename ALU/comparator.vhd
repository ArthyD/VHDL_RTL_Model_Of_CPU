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

entity SLT is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic;
);
end SLT;

architecture SLT_Behavioral of SLT is
begin

    if (A < B) then
        c <= (others =>'1');

    else
        c <= (others =>'0');
    end if

end SLT_Behavioral

entity SLTU is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic;
);
end SLTU;

architecture SLTU_Behavioral of SLTU is
begin

    if (A < unsigned(B)) then
        c <= (others =>'1');

    else
        c <= (others =>'0');
    end if

end SLTU_Behavioral
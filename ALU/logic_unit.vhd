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

entity and is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic;
);
end and;

architecture AND_Behavioral of and is
begin
    c <= a AND b;
end AND_Behavioral

entity or is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic;
);
end or;

architecture OR_Behavioral of or is
begin
    c <= a OR b;
end OR_Behavioral

entity not is 
port(
    a	:	in	std_logic;
    b	:	out	std_logic;
);
end not;

architecture NOT_Behavioral of not is
begin
    b <= NOT a;
end NOT_Behavioral

entity xor is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic;
);
end xor;

architecture XOR_Behavioral of xor is
begin
    c <= a XOR b;
end XOR_Behavioral
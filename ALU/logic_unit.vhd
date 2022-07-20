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

entity and2 is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic
);
end and2;

architecture AND_Behavioral of and2 is
begin
    c <= a AND b;
end AND_Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity or2 is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic
);
end or2;

architecture OR_Behavioral of or2 is
begin
    c <= a OR b;
end OR_Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity not2 is 
port(
    a	:	in	std_logic;
    b	:	out	std_logic
);
end not2;

architecture NOT_Behavioral of not2 is
begin
    b <= NOT a;
end NOT_Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity xor2 is 
port(
    a	:	in	std_logic;
	b	:	in	std_logic;
    c	:	out	std_logic
);
end xor2;

architecture XOR_Behavioral of xor2 is
begin
    c <= a XOR b;
end XOR_Behavioral;
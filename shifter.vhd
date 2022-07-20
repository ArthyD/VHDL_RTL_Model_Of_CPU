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

entity SLL is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic;
);
end SLL;

architecture SLL_Behavioral of SLL is
begin
    c <= a(30 downto 0)& '0' ;
end SLL_Behavioral

entity SRL is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic;
);
end SRL;

architecture SRL_Behavioral of SRL is
begin
    c <= '0' & a(31 downto 1) ;
end SRL_Behavioral

entity SRA is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic;
);
end SRA;

architecture SRA_Behavioral of SRA is
begin
    c <= A(31) & '0' & A(30 downto 1) ;
end SRA_Behavioral
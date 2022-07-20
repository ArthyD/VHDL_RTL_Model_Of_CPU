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

entity SLL2 is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic
);
end SLL2;

architecture SLL_Behavioral of SLL2 is
begin
    b <= a(30 downto 0)& '0' ;
end SLL_Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity SRL2 is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic
);
end SRL2;

architecture SRL_Behavioral of SRL2 is
begin
    b <= '0' & a(31 downto 1) ;
end SRL_Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity SRA2 is 
port(
    a	:	in	std_logic;
	b	:	out	std_logic
);
end SRA2;

architecture SRA_Behavioral of SRA2 is
begin
    b <= a(31) & '0' & a(30 downto 1) ;
end SRA_Behavioral;
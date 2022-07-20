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


entity test_shifter is

end test_shifter;

architecture Behavioral of test_shifter is
    signal a : std_logic_vector(data_width-1 downto 0):=(others =>'1');
    signal out_SLL : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_SRL : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_SRA : std_logic_vector(data_width-1 downto 0):=(others =>'0');

begin
shifter: entity work.shifter(SLL_Behavioral)
port map(
    a => a,
    b => out_SLL
);

shifter: entity work.shifter(SRL_Behavioral)
port map(
    a => a,
    b => out_SRL
);

shifter: entity work.shifter(SRA_Behavioral)
port map(
    a => a,
    b => b,
    c => out_SRA
);

end Behavioral;


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
    signal a : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal b : std_logic_vector(data_width-1 downto 0):=(others =>'1');
    signal out_SLT : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_SLTU : std_logic_vector(data_width-1 downto 0):=(others =>'0');

begin
comparator: entity work.comparator(SLL_Behavioral)
port map(
    a => a,
    b => b,
    c => out_SLT
);

comparator: entity work.comparator(SLTU_Behavioral)
port map(
    a => a,
    b => b,
    c => out_SLTU
);


end Behavioral;
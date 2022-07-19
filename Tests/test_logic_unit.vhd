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


entity test_logic_unit is
--  Port ( );
Generic (
);
end test_logic_unit;

architecture Behavioral of test_logic_unit is
    signal a : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal b : std_logic_vector(data_width-1 downto 0):=(others =>'1');
    signal out_and : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_or : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_xor : std_logic_vector(data_width-1 downto 0):=(others =>'0');
    signal out_not : std_logic_vector(data_width-1 downto 0):=(others =>'0');

begin
logic_unit: entity work.logic_unit(AND_Behavioral)
port map(
    a => a,
    b => b,
    c => out_and
);

logic_unit: entity work.logic_unit(OR_Behavioral)
port map(
    a => a,
    b => b,
    c => out_or
);

logic_unit: entity work.logic_unit(XOR_Behavioral)
port map(
    a => a,
    b => b,
    c => out_xor
);

logic_unit: entity work.logic_unit(NOT_Behavioral)
port map(
    a => a,
    c => out_not
);

end Behavioral;


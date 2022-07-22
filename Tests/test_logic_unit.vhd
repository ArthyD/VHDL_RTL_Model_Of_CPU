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


entity test_logic_unit is

end test_logic_unit;

architecture Behavioral of test_logic_unit is
    signal a : data_type:=(others =>'0');
    signal b : data_type:=(others =>'1');
    signal out_and : data_type:=(others =>'0');
    signal out_or : data_type:=(others =>'0');
    signal out_xor : data_type:=(others =>'0');
    signal out_not : data_type:=(others =>'0');

begin
logic_unit: entity work.logic_unit(AND_Behavioral)
port map(
    a => a,
    b => b,
    c => out_and
);

logic_unit1: entity work.logic_unit(OR_Behavioral)
port map(
    a => a,
    b => b,
    c => out_or
);

logic_unit2: entity work.logic_unit(XOR_Behavioral)
port map(
    a => a,
    b => b,
    c => out_xor
);

logic_unit3: entity work.logic_unit(NOT_Behavioral)
port map(
    a => a,
    c => out_not
);

end Behavioral;


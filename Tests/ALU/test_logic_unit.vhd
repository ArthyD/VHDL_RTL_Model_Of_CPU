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
    --signal out_not : data_type:=(others =>'0');

begin

and2: entity work.logic_unit(Behavioral)
port map(
    a => a,
    b => b,
    code => code_and,
    s => out_and
);

or2: entity work.logic_unit(Behavioral)
port map(
    a => a,
    b => b,
    code => code_or,
    s => out_or
);

xor2: entity work.logic_unit(Behavioral)
port map(
    a => a,
    b => b,
    code => code_xor,
    s => out_xor
);

--logic_unit3: entity work.logic_unit(NOT_Behavioral)
--port map(
--    a => a,
--    c => out_not
--);

end Behavioral;


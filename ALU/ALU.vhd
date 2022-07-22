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

entity ALU is
    Port (
            operand1       :       in      data_type;
            operand2       :       in      data_type;
            carry          :	   in	   STD_LOGIC;
            operation      :       in	   opcode_type;
            result         :       out     data_type
     );
end ALU;

architecture Behavioral of ALU is
    signal out_adder : data_type:=(others =>'0');   
    signal out_logic_unit : data_type:=(others =>'0');
    signal out_shifter : data_type:=(others =>'0');
    signal out_comparator : data_type:=(others =>'0');

begin

if (operation= code_add) then
    adder: entity work.adder(Behavioral)
    port map(
        a	=>	operand1,
        b	=>	operand2,
        neg_b	=>	'0',
        s	=>	out_adder
    );
else
    adder: entity work.adder(Behavioral)
    port map(
        a	=>	operand1,
        b	=>	operand2,
        neg_b	=>	'1',
        s	=>	out_adder
    );
end if;

logic: entity work.logic_unit(Behavioral)
port map(
    a => operand1,
    b => operand2,
    code => operation,
    s => out_logic_unit
);

shifter: entity work.shifter(Behavioral)
port map(
    a => operand1,
    code => operation,
    s => out_shifter
);

case operation is
when code_add | code_sub => result <= out_adder;
when code_and | code_or | code_xor => result <= out_logic_unit;
when code_sra | code_sll | code_srl => result <= out_shifter;
when others => null;
end case;

end Behavioral;
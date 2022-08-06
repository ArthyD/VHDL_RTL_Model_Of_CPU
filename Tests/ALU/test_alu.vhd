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

entity test_ALU is
end test_ALU;

architecture Behavioral of test_ALU is
    constant period: time := 20ns;
    signal a: data_type:="11111111111111110000000000000000";
    signal b: data_type:="00000000000000001111111111111111";
    signal out_signal: data_type;
    signal code: opcode_type;
begin
    alu: entity work.ALU(Behavioral)
    port map(
        operand1 => a,
        operand2 => b,
        operation => code,
        result => out_signal
    );


    process_test: process begin
            code <= code_sll;
            wait for 10 ns;
            assert out_signal = x"fffe0000" report "sll failed" severity error;
            
            code <= code_srl;
            wait for 10 ns;
            assert out_signal = x"7fff8000" report "sll failed" severity error;
            
            code <= code_or;
            wait for 10 ns;
            assert out_signal = x"ffffffff" report "or failed" severity error;
            
            a <= x"f0f0f0f0";
            b <= x"0f0f0f00";
            wait for 10 ns;
            assert out_signal = x"fffffff0" report "or failed" severity error;    
            
            a <= "11111111111111110000000000000000";
            b <= "00000000000000001111111111111111";
            code <= code_sub;
            wait for 10 ns;
            assert out_signal = x"fffe0001" report "sub failed" severity error;
            
            a <= x"f0f0f0f0";
            b <= x"0f0f0f00";
            code <= code_sub;
            wait for 10 ns;
            assert out_signal = x"e1e1e1f0" report "sub failed" severity error;
            
            a <= "11111111111111110000000000000000";
            b <= "00000000000000001111111111111111";
            code <= code_add;
            wait for 10 ns;
            assert out_signal = x"ffffffff" report "add failed" severity error;
            
            code <= code_sub;
            wait for 10 ns;
            assert out_signal = x"fffe0001" report "sub failed" severity error;
            
            code <= code_sll;
            wait for 10 ns;
            assert out_signal = x"fffe0000" report "sll failed" severity error;
            
            code <= code_sub;
            wait for 10 ns;
            assert out_signal = x"fffe0001" report "sub failed" severity error;
    end process;

end Behavioral;

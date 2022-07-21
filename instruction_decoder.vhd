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

entity instruction_decoder is
    Port (
            instruction    :       in      data_type;
            -- Output for regsisters and ALU --
            opcode         :       out     opcode_type;
            sel_in         :       out     std_logiv_vector(1 downto 0);
            sel_out_a      :       out     std_logiv_vector(1 downto 0);
            sel_out_b      :       out     std_logiv_vector(1 downto 0);
            sel_out_c      :       out     std_logiv_vector(1 downto 0);
            -- Output for FSM --

            
    );
end instruction_decoder;
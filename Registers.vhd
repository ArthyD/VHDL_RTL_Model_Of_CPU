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

entity Registers is
    Port (
            data_in          : in       data_type;
            clk              : in	    std_logic;
            rst              : in       std_logic;
            enable           : in       std_logic;
            sel_in           : in       reg_addr_type;
            sel_out_a        : in       reg_addr_type;
            sel_out_b        : in       reg_addr_type;
            sel_out_c        : in       reg_addr_type;
            data_out_a       : out      data_type;
            data_out_b       : out      data_type;
            data_out_c       : out      data_type;      
    );
end Registers;
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
            -- Register 1, 2, 3 or 4 : entry of mux
            sel_in           : in       std_logiv_vector(1 downto 0); -- Register selection where we write data_in
            sel_out_a        : in       std_logiv_vector(1 downto 0); -- Register selction for output
            sel_out_b        : in       std_logiv_vector(1 downto 0);
            sel_out_c        : in       std_logiv_vector(1 downto 0);
            data_out_a       : out      data_type;
            data_out_b       : out      data_type;
            data_out_c       : out      data_type;      
    );
end Registers;
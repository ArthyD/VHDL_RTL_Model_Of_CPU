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


entity FSM is
    Port (
        -- Output of decoder --
        cmd_calc        :       in     std_logic;
        calc_on_PC      :       in     std_logic;
        op_w_mem        :       in     std_logic;
        op_r_mem        :       in     std_logic;
        mem_word        :       in     std_logic;
        mem_hword       :       in     std_logic;
        mem_byte        :       in     std_logic;
        -- Output of FSM --
        en_calc         :       out    std_logic := "0";
        en_registers    :       out    std_logic := "0";
        en_PC           :       out    std_logic := "0";
        en_addr         :       out    std_logic := "0";
        en_w_mem        :       out    std_logic := "0";
        en_r_mem        :       out    std_logic := "0";
        en_instr        :       out    std_logic := "0";
        mem_access_mux  :       out    std_logic_vector(1 downto 0) := "00";
        mux_instr       :       out    std_logic := "0";
        mux_PC          :       out    std_logic := "0";
        mem_access_type :       out    std_logic_vector(1 downto 0) := "00";
    );
end FSM;
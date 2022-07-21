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


package cpu_defs_pack is

    -- DEFINITION OF TYPES --
    constant bus_width : natural := 32;
    constant data_width : natural := bus_width;
    constant addr_width : natural := 16;

    constant reg_addr_width : natural := 5;
    constant opcode_width : natural := 7;

    subtype data_type is
        bit_vector(data_width-1 downto 0);

    subtype addr_type is
        bit_vector(addr_width-1 downto 0);

    subtype reg_addr_type is
        bit_vector(reg_addr_width-1 downto 0);

    subtype opcode_type is
        bit_vector(opcode_width-1 downto 0);

    type reg_type is array(integer range 0 to 2**reg_addr_width-1) of data_type;

    type mem_type is array(integer range 0 to 2**addr_width-1) of data_type;
    
    -- Loads instruction --
    constant code_lb : opcode_type := "";
    constant code_lbu : opcode_type := "";
    constant code_lh : opcode_type := "";
    constant code_lhu : opcode_type := "";
    constant code_lw : opcode_type := "";
    -- Store instruction --
    constant code_sb : opcode_type := "";
    constant code_sh : opcode_type := "";
    constant code_w : opcode_type := "";
    -- Arithmetic instruction --
    constant code_add : opcode_type := "";
    constant code_sub : opcode_type := "";
    constant code_addi : opcode_type := "";
    -- Special arithmetic load move --
    constant code_lui : opcode_type := "";
    constant code_auipc : opcode_type := "";
    -- Logoc instructions --
    constant code_xor : opcode_type := "";
    constant code_or : opcode_type := "";
    constant code_and : opcode_type := "";
    constant code_xori : opcode_type := "";
    constant code_ori : opcode_type := "";
    constant code_andi : opcode_type := "";
    -- Shift instruction --
    constant code_sll : opcode_type := "";
    constant code_srl : opcode_type := "";
    constant code_sra : opcode_type := "";
    constant code_slli : opcode_type := "";
    constant code_srli : opcode_type := "";
    constant code_srai : opcode_type := "";
    -- Compare instruction --
    constant code_slt : opcode_type := "";
    constant code_sltu : opcode_type := "";
    constant code_slti : opcode_type := "";
    constant code_sltiu : opcode_type := "";
    -- Branch instruction --
    constant code_beq : opcode_type := "";
    constant code_bne : opcode_type := "";
    constant code_blt : opcode_type := "";
    constant code_bge : opcode_type := "";
    constant code_bltu : opcode_type := "";
    constant code_bgeu : opcode_type := "";
    -- Jump instruction --
    constant code_jal : opcode_type := "";
    constant code_jalr : opcode_type := "";

end cpu_defs_pack;
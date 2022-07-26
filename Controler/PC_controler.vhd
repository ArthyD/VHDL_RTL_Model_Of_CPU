----------------------------------------------------------------------------------
-- TUM VHDL Assignment
-- Arthur Docquois, Maelys Chevrier, Timothée Carel, Roman Canals
--
-- Create Date: 26/07/2022
-- Project Name: CPU RTL model

----------------------------------------------------------------------------------

library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.cpu_defs_pack.all;

entity PC_controler is
    Port (
        reg1_content    :   in      data_type;
        reg2_content    :   in      data_type;
        opcode          :   in      opcode_type;
        pc_incr         :   in      addr_type;
        imm             :   in      bit_vector(11 downto 0);
        pc              :   buffer  addr_type := "0000000000000000";
    );
end PC_controler;

architecture RTL of PC_controler is
    pc_controler_process : process begin
        case opcode is
            -- Branch instructions -- 
            when code_beq => 
                if reg1_content = reg2_content then
                    pc <= pc+imm;
                else 
                    pc <= pc_incr;
                end if;
            when code_bne =>
                if reg1_content = reg2_content then
                    pc <= pc_incr;
                else 
                    pc <= pc+imm;
                end if;
            when code_blt|code_bltu =>
                if unsigned(to_stdlogicvector(reg1_content))<unsigned(to_stdlogicvector(reg2_content)) then
                    pc <= pc+imm;
                else 
                    pc <= pc_incr;
                end if;
            when code_bge|code_bgeu =>
                if unsigned(to_stdlogicvector(reg1_content))<unsigned(to_stdlogicvector(reg2_content)) then
                    pc <= pc_incr;
                else 
                    pc <= pc+imm;  
                end if;
            -- Jump Instruction --
            when code_jal => pc <= pc_incr + imm;
            when code_jalr => pc <= reg1_content + imm;
            -- Any other kind of instruction --
            when others => pc <= pc_incr;
    end process;
end RTL;
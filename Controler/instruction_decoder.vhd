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

entity instruction_decoder is
    Port (
            instruction    :       in      data_type;
            -- Output for regsisters and ALU --
            opcode         :       out     opcode_type;
            sel_in         :       out     std_logiv_vector(1 downto 0);
            sel_out_a      :       out     std_logiv_vector(1 downto 0);
            sel_out_b      :       out     std_logiv_vector(1 downto 0);
            sel_out_c      :       out     std_logiv_vector(1 downto 0);
            -- Output for FSM input --
            cmd_calc       :       out     std_logic := "0";
            calc_on_PC     :       out     std_logic := "0";
            op_w_mem       :       out     std_logic := "0";
            op_r_mem       :       out     std_logic := "0";
            mem_word       :       out     std_logic := "0";
            mem_hword      :       out     std_logic := "0";
            mem_byte       :       out     std_logic := "0";
            -- Imm output --
            imm            :       out     std_logic_vector(11 downto 0);     
    );
end instruction_decoder;

architecture Behavioral of instruction_decoder is
signal rs1, rd, rs2 : reg_addr_type;

begin
    opcode <= instruction(6 downto 0);
    case opcode is
    -- Load Instruction --
        when code_lb|code_lbu|code_lh|code_lhu|code_lw => rs1 <= instruction(19 downto 15);
            rd <= instruction(11 downto 7);
            imm <= instruction(31 downto 20);
            op_r_mem <= "1";
    -- Store Instruction --
        when code_sb|code_sh|code_w => rs1 <= instruction(19 downto 15);
            rs2 <= instruction(24 downto 20);
            imm <= instruction(31 downto 25) & instruction(11 downto 7);
            op_w_mem <= "1";
    -- Shift Instruction --
        when code_sll|code_srl|code_sra|code_slli|code_srli|code_srai => rd <= instruction(11 downto 7);
            rs1 <=  instruction(19 downto 15);
            rs2 <=  instruction(24 downto 20);
            cmd_calc <= "1";
    -- Logical Instruction --
        when code_xor|code_or|code_and|code_xori|code_ori|code_andi => rd <= instruction(11 downto 7);
            rs1 <= instruction(19 downto 15);
            imm <= instruction(31 downto 20);
            cmd_calc <= "1";
    -- Arithmetic Instruction --
        when code_add|code_sub|code_addi => rd <= instruction(11 downto 7);
            rs1 <= instruction(19 downto 15);
            imm <= instruction(31 downto 20);
            cmd_calc <= "1";
    -- Compare Instruction --
        when code_slt|code_sltu|code_slti|code_sltiu => rd <= instruction(11 downto 7);
            rs1 <= instruction(19 downto 15);
            imm <= instruction(31 downto 20);
    -- Jump Instruction --
        when code_jal|code_jalr => rd <= instruction(11 downto 7);
            imm <= instruction(31 downto 20);
            calc_on_PC <= "1";
    -- Branch Instruction --
        when code_beq|code_bne|code_blt|code_bge|code_bltu|code_bgeu => rs1 <= instruction(19 downto 15);
            rs2 <= instruction(24 downto 20);
            imm <= instruction(31 downto 25) & instruction(11 downto 7);
            calc_on_PC <= "1";
    -- Special arithmetic move instruction --
        when code_lui|code_auipc => rd <= instruction(11 downto 7);
    end case;
end Behavioral;
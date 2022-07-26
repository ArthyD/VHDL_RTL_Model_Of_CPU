----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 11:58:10 PM
-- Design Name: 
-- Module Name: register_file_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.cpu_defs_pack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_file_tb is
end register_file_tb;

architecture Behavioral of register_file_tb is
    component register_file is
        port(
            data_in: in data_type;
            clk, rst: in bit;
            enable: in bit;
            sel_in: in bit_vector(1 downto 0);
            sel_out_a, sel_out_b, sel_out_c: in bit_vector(1 downto 0);
            data_out_a, data_out_b, data_out_c: out data_type
        );
    end component;

    signal clk_tb, rst_tb, enable_tb: bit;
    signal sel_in_tb, sel_out_a_tb, sel_out_b_tb, sel_out_c_tb, sel_out_d_tb: bit_vector(1 downto 0);
    signal data_in_tb, data_out_a_tb, data_out_b_tb, data_out_c_tb: data_type;
begin
    uut: register_file 
    port map (
        data_in => data_in_tb,
        clk => clk_tb, rst => rst_tb, 
        enable => enable_tb,
        sel_in => sel_in_tb,
        sel_out_a => sel_out_a_tb, sel_out_b => sel_out_b_tb, sel_out_c => sel_out_c_tb,
        data_out_a => data_out_a_tb, data_out_b => data_out_b_tb, data_out_c => data_out_c_tb
    );
    
    process
    begin
        clk_tb <= '0'; 
        rst_tb <= '0';
        enable_tb <= '0';
        data_in_tb <= (others => '1');
        
        wait for 1 ns;
        assert (data_out_a_tb = (data_out_a_tb'range => '0')) report "data_out_a from previous iteration is not deleted properly." severity warning;
        assert (data_out_b_tb = (data_out_b_tb'range => '0')) report "data_out_b from previous iteration is not deleted properly." severity warning;
        assert (data_out_c_tb = (data_out_c_tb'range => '0')) report "data_out_c from previous iteration is not deleted properly." severity warning;
        
        -- test that sel_in == "00" uses register_a by selecting sel_out_a, sel_out_b, and sel_out_c one after another
        -- and asserting that only sel_out_a is non-zero.
        
        
        -- test that sel_out_a == "00" uses the output from register_a by writing different inputs to register_a, register_b,
        -- register_c, and register_d and validating subsequently that sel_out_a == "00" leads to data_out_a receiving the
        -- value from register_a.
        
        -- reset for next round
    end process;

end Behavioral;

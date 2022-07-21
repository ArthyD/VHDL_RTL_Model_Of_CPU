----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 10:44:18 PM
-- Design Name: 
-- Module Name: mux32_4x1 - RTL
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

entity mux32_4x1 is
    port(
        select_input: in bit_vector(1 downto 0);
        d_in_a, d_in_b, d_in_c, d_in_d: in data_type;
        d_out: out data_type
    );
end mux32_4x1;

architecture RTL of mux32_4x1 is
begin
    with select_input select
        d_out <= d_in_d when "11",
                 d_in_c when "10",
                 d_in_b when "01",
                 d_in_a when "00";
end RTL;

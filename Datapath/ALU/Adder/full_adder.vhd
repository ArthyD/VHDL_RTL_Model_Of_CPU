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

entity full_adder is
    port(
        a, b, cin: in bit;
        s, cout: out bit
    );
end entity;

architecture Behavioral of full_adder is
    signal g, p: bit;
begin
    p <= a xor b;
    g <= a and b;
    
    s <= p xor cin;
    cout <= g or (p and cin);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_mux_2x1 IS
END test_mux_2x1;
 
ARCHITECTURE behavior OF test_mux_2x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux12_2x1
    port ( select_input : in bit;
        d_in_a, d_in_b : in bit_vector( 11 downto 0 );
        d_out : out bit_vector( 11 downto 0 )
    );
    END COMPONENT;
    

   --Inputs
   signal select_input : bit := '0';
   signal d_in_b : bit_vector( 11 downto 0 ) := ''000000000000'';
   signal d_in_a : bit_vector( 11 downto 0 ) := ''000000000000'';
 

 	--Outputs
    signal d_out : bit_vector( 11 downto 0 );

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Compteur_total PORT MAP (
          d_in_a => d_in_a, 
          d_in_b => d_in_b,
          select_input => select_input,
          d_out => d_out
        );

   -- Clock process definitions
   -- might be useless after all
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
   
   
   select_input <= 1 after 50 ns;
	d_in_a <= '111100000000' after 100 ns;
	

   
END;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;


entity register_file is
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
end refister_file;

architecture RTL of register_file is

component compteur_dix_sec is
    Port ( RESET : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           TC : out  STD_LOGIC;
           Q_LED : out  STD_LOGIC_VECTOR (9 downto 0);
			  seconde: out STD_LOGIC);
end component;

component D_REG12RE is
    Port(
        D_IN : in bit_vector( 31 downto 0 );
        RST : in bit;
        ENABLE: in bit;
        CLK : in bit;
        Q_OUT : out bit_vector( 31 downto 0 ) );
end component;

component demux1_1x4 is
    port ( select_input : in bit_vector( 1 downto 0 );
        d_in : in bit;
        d_out_a, d_out_b : out bit;
        d_out_c, d_out_d : out bit );
end component;

component mux32_4x1 is
    port ( select_input : in bit_vector( 1 downto 0 );
        d_in_a, d_in_b : in bit_vector( 32 downto 0 );
        d_in_c, d_in_d : in bit_vector( 32 downto 0 );
        d_out : out bit_vector( 32 downto 0 ) 
        );
end component;


-- signal sig1, sig2, sig3, sig4 : std_logic ;
-- signals : sig_out_r0, sig_out_r1, sig_out_r2, sig_out_r3

begin
	counter_dix_sec : compteur_dix_sec port map (RESET => RESET, CE => CE, CLK => CLK, TC => sig1, Q_LED => Q_LED, seconde => seconde);
	
	R0 : D_REG12RE port map ( D_IN => , RST => , ENABLE => , CLK => , Q_OUT =>  );
	R1 : D_REG12RE port map ( D_IN => , RST => , ENABLE => , CLK => , Q_OUT =>  );
	R2 : D_REG12RE port map ( D_IN => , RST => , ENABLE => , CLK => , Q_OUT =>  );
	R3 : D_REG12RE port map ( D_IN => , RST => , ENABLE => , CLK => , Q_OUT =>  );
	
	muxa : mux32_4x1 port map ( select_input => , d_in_a => , d_in_b => , d_in_c => , d_in_d => , )

end RTL;


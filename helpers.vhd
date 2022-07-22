entity register_file is
    port(
        data_in: in data_type;
        clk, rst: in bit;
        enable: in bit;
        sel_in: in bit_vector(1 downto 0);
        sel_out_a, sel_out_b, sel_out_c: in bit_vector(1 downto 0);
        data_out_a, data_out_b, data_out_c: out data_type
    );
end register_file;

architecture RTL of register_file is

...

function to_hstring(slv: data_type) return string is
    constant hexlen : integer := (slv'length+3)/4;
    variable longslv : bit_vector(slv'length+3 downto 0) := (others => '0');
    variable hex : string(1 to hexlen);
    variable fourbit : bit_vector(3 downto 0);
begin
    longslv(slv'length-1 downto 0) := slv;
    for i in hexlen-1 downto 0 loop
        fourbit := longslv(i*4+3 downto i*4);
        case fourbit is
            when "0000" => hex(hexlen-i) := '0';
            when "0001" => hex(hexlen-i) := '1';
            when "0010" => hex(hexlen-i) := '2';
            when "0011" => hex(hexlen-i) := '3';
            when "0100" => hex(hexlen-i) := '4';
            when "0101" => hex(hexlen-i) := '5';
            when "0110" => hex(hexlen-i) := '6';
            when "0111" => hex(hexlen-i) := '7';
            when "1000" => hex(hexlen-i) := '8';
            when "1001" => hex(hexlen-i) := '9';
            when "1010" => hex(hexlen-i) := 'A';
            when "1011" => hex(hexlen-i) := 'B';
            when "1100" => hex(hexlen-i) := 'C';
            when "1101" => hex(hexlen-i) := 'D';
            when "1110" => hex(hexlen-i) := 'E';
            when "1111" => hex(hexlen-i) := 'F';
            when others => hex(hexlen-i) := '?';
        end case;
    end loop;
    return hex;
end function to_hstring;

signal register_output_a, register_output_b, register_output_c, register_output_d: data_type;
signal enable_register_a, enable_register_b, enable_register_c, enable_register_d: bit;

begin
	...

	process(enable_register_a, register_output_a) begin
	   report "the enable value from register a is  " & bit'image(enable_register_a);
	   report "the output value from register a is  " & to_hstring(register_output_a);
	end process;
end RTL;

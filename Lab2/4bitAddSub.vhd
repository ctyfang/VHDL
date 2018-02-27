library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity binary_adder is
	port(
		a, b : in std_logic_vector(3 downto 0);
		carry_in : in std_logic;
		sum : out std_logic_vector(3 downto 0);
		carry : out std_logic
	);
end binary_adder;

architecture a of binary_adder is
	-- Temporary container for 5-bit result
	signal sum_temp : std_logic_vector(4 downto 0);
begin
	process(a, b, sum_temp, carry_in)
	begin
		-- Convert a and b to 5-bit vectors using concatenation, THEN add them
		sum_temp <= ('0' & a) + ('0' & b) + ("0000" & carry_in);
		
		-- Extract sum and carry from 5-bit vector result
		carry <= sum_temp(4);
		sum <= sum_temp(3 downto 0);
	end process;
end a;
library ieee;
use ieee.std_logic_1164.all;

-- 4 Bit D-Latch --
entity nibble_latch is
	port
	(
		D	: in STD_LOGIC_VECTOR(3 downto 0);
		ENA	: in STD_LOGIC;
		Q	:	out STD_LOGIC_VECTOR(3 downto 0)
	);
end nibble_latch;

architecture a of nibble_latch is
	signal DATA	: STD_LOGIC_VECTOR(3 downto 0);
	
begin
	process(D, ENA, DATA) is
	begin
		DATA <= "0000";
		if ENA = '0' then
			DATA <= D(3 downto 0);
		else
			DATA <= DATA(3 downto 0);
		end if;
		
		Q <= DATA(3 downto 0);
	end process;
end a;

library ieee;
use ieee.std_logic_1164.all;

-- 8 Bit D-Latch --
entity D_latch is
	port
	(
		D	: in STD_LOGIC_VECTOR(7 downto 0);
		ENA	: in STD_LOGIC;
		Q	:	out STD_LOGIC_VECTOR(7 downto 0)
	);
end D_latch;

architecture a of D_latch is
	signal DATA	: STD_LOGIC_VECTOR(7 downto 0);
	
begin
	process(D, ENA, DATA) is
	begin
		DATA <= "00000000";
		if ENA = '0' then
			DATA <= D(7 downto 0);
		else
			DATA <= DATA(7 downto 0);
		end if;
		
		Q <= DATA(7 downto 0);
	end process;
end a;

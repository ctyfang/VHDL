library ieee;
use ieee.std_logic_1164.all;

entity latch is
	port
	(
		D	: in STD_LOGIC_VECTOR(7 downto 0);
		ENA	: in STD_LOGIC;
		Q	:	out STD_LOGIC_VECTOR(7 downto 0)
	);
end latch;

architecture a of latch is
	signal DATA	: STD_LOGIC_VECTOR(7 downto 0);
	
begin
	process(D, ENA) is
	begin
		if ENA = '1' then
			DATA <= D;
		else
			DATA <= DATA;
		end if;
		Q <= DATA;
	end process;
end a;

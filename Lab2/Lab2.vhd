library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--- 8-Bit Adder/Subtractor ---
entity Lab2 is
	port
	(
		-- Inputs
		INPUT_BYTE	:	in	STD_LOGIC_VECTOR(7 downto 0);
		ADD_SUB	:	in STD_LOGIC;
		A_PRESS	:	in	STD_LOGIC;
		B_PRESS	:	in STD_LOGIC;
		
		-- Outputs
		RESULT	:	out STD_LOGIC_VECTOR(7 downto 0)
	);
end Lab2;

architecture a of Lab2 is
	signal byte_in : STD_LOGIC_VECTOR(7 downto 0);
	signal operator	: STD_LOGIC;
	signal A_enter	: STD_LOGIC;
	signal B_enter : STD_LOGIC;
	signal byte_temp : STD_LOGIC_VECTOR(7 downto 0);
	
	signal operand_A : STD_LOGIC_VECTOR(7 downto 0);
	signal operand_B : STD_LOGIC_VECTOR(7 downto 0);
	signal sum_temp : STD_LOGIC_VECTOR(8 downto 0);
	signal carry : STD_LOGIC;
	
begin
	byte_in <= INPUT_BYTE;
	operator <= ADD_SUB;
	A_enter <= A_PRESS;
	B_enter <= B_PRESS;

	B_Latch : entity work.D_Latch
		port map(D => byte_in, ENA => B_enter, Q => operand_B);
		
	A_Latch : entity work.D_Latch
		port map(D => byte_in, ENA => A_enter, Q => operand_A);
		
	-- 2's Complement of B for Subtraction --
	process(byte_in, operator, operand_A, operand_B) is
	begin
		if operator = '1' then
			carry <= '1';
			for i in 0 to 7 loop
				if operand_B(i) = '1' then
					byte_temp(i) <= '0';
				else
					byte_temp(i) <= '1';
				end if;
			end loop;
		else
			carry <= '0';
			byte_temp <= operand_B;
		end if;
	end process;
	
	-- Add Bytes --
	sum_temp <= ('0' & operand_A) + ('0' & byte_temp) + ("00000000" & carry);
	RESULT <= sum_temp(7 downto 0);
	
end a;
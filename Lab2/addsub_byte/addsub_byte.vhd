library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--- 8-Bit Adder/Subtractor ---
entity addsub_byte is
	port
	(
		-- Inputs
		INPUT_BYTE	:	in	STD_LOGIC_VECTOR(7 downto 0);
		ADD_SUB	:	in STD_LOGIC;
		A_PRESS	:	in	STD_LOGIC;
		B_PRESS	:	in STD_LOGIC;
		
		-- Outputs
		RESULT	:	out STD_LOGIC_VECTOR(7 downto 0);
		CARRY : out STD_LOGIC
	);
end addsub_byte;

architecture a of addsub_byte is
	signal byte_temp : STD_LOGIC_VECTOR(7 downto 0);
	
	signal operand_A : STD_LOGIC_VECTOR(7 downto 0);
	signal operand_B : STD_LOGIC_VECTOR(7 downto 0);
	signal sum_temp : STD_LOGIC_VECTOR(8 downto 0);
	signal carry_in : STD_LOGIC;
	
	component D_Latch
		port(D	:	in	STD_LOGIC_VECTOR(7 downto 0);
			  ENA	:	in STD_LOGIC;
			  Q	:	out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component;
		
	
begin
	-- Detection of Inputs --
	B_Latch:D_Latch port map(D => INPUT_BYTE, ENA => B_PRESS, Q => operand_B);
	A_Latch:D_Latch port map(D => INPUT_BYTE, ENA => A_PRESS, Q => operand_A);
	
	-- 2's Complement of B for Subtraction --
	process(INPUT_BYTE, ADD_SUB, operand_B) is
	begin
		if (ADD_SUB = '1') then
			carry_in <= '1';
			for I in 0 to 7 loop
				if (operand_B(I) = '1') then
					byte_temp(I) <= '0';
				elsif (operand_B(I) = '0') then
					byte_temp(I) <= '1';
				end if;
			end loop;
		else
			carry_in <= '0';
			byte_temp <= operand_B;
		end if;
	end process;
	
	-- Add Bytes --
	process(operand_A, byte_temp, carry_in, sum_temp) is
	begin
		sum_temp <= ('0' & operand_A) + ('0' & byte_temp) + ("00000000" & carry_in);
		RESULT <= sum_temp(7 downto 0);
		CARRY <= sum_temp(8);
	end process;
	
end a;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock is
	port (
		ones, tens: in std_logic_vector(3 downto 0);
		set_time: in	std_logic;
		
		hexHR1, hexHR10, hexMIN1, hexMIN10, hexSEC1, hexSEC10	: out std_logic_vector(0 to 6)
	);
end clock;

architecture Behavior of clock is
	
	signal B1_OP : std_logic_vector(3 downto 0);
	signal B10_OP : std_logic_vector(3 downto 0);
	signal A1_OP : std_logic_vector(3 downto 0);
	signal A10_OP : std_logic_vector(3 downto 0);
	signal Ans1_OP : std_logic_vector(3 downto 0);
	signal Ans10_OP : std_logic_vector(3 downto 0);
	
	signal ten_carry : std_logic;
	
	component bcd_addsub
		port(
			a	: in std_logic_vector(3 downto 0);
			b	: in std_logic_vector(3 downto 0);
			sub : in std_logic; -- 1 to subtract
			carry_in : in std_logic;
		
			sum : out std_logic_vector(3 downto 0);
			carry : out std_logic
		);
	end component;
	
	component BCDto7seg
		port(
			BCD	:	in STD_LOGIC_VECTOR(3 downto 0);
			DISPLAY	:	out STD_LOGIC_VECTOR(0 to 6)
		);
	end component;
	
	component nibble_Latch
		port(
			D	:	in	STD_LOGIC_VECTOR(3 downto 0);
		   ENA	:	in STD_LOGIC;
		   Q	:	out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;

	begin
		
		B1_Latch:nibble_Latch port map(D => ones, ENA => b_save, Q => B1_op);
		B10_Latch:nibble_Latch port map(D => tens, ENA => b_save, Q => B10_op);
		A1_Latch:nibble_Latch port map(D => ones, ENA => a_save, Q => A1_op);
		A10_Latch:nibble_Latch port map(D => tens, ENA => a_save, Q => A10_op);
		
		OperateOnes:bcd_addsub port map(a => A1_op, b => B1_op, sub => sub, carry_in => sub, sum => Ans1_op, carry => ten_carry);
		OperateTens:bcd_addsub port map(a => A10_op, b=> B10_op, sub => sub, carry_in => ten_carry, sum => Ans10_op, carry => overflow);
		
		B1_Disp:BCDto7seg port map(BCD => B1_op, DISPLAY => hexB1);
		B10_Disp:BCDto7seg port map(BCD => B10_op, DISPLAY => hexB10);
		A1_Disp:BCDto7seg port map(BCD => A1_op, DISPLAY => hexA1);
		A10_Disp:BCDto7seg port map(BCD => A10_op, DISPLAY => hexA10);
		Ans1_Disp:BCDto7seg port map(BCD => Ans1_op, DISPLAY => hexAns1);
		Ans10_Disp:BCDto7seg port map(BCD => Ans10_op, DISPLAY => hexAns10);
	
end Behavior;
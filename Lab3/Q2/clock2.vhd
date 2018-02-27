library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock2 is
	port (
		inclock : in STD_LOGIC;
		rst : in STD_LOGIC;
		sec, min, hr : in STD_LOGIC;
		input_time : in STD_LOGIC_VECTOR(7 downto 0);
		hexsec1, hexsec10, hexmin1, hexmin10, hexhr1, hexhr10	: out std_logic_vector(0 to 6)
	);
end clock2;

architecture Behavior of clock2 is
	
	signal modclock : STD_LOGIC := '0';
	
	signal sec1_carry : STD_LOGIC := '0';
	signal sec10_carry : STD_LOGIC := '0';
	signal min1_carry : STD_LOGIC := '0';
	signal min10_carry : STD_LOGIC := '0';
	signal hr1_carry : STD_LOGIC := '0';
	signal hr10_carry : STD_LOGIC := '0';
	
	signal sec1_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal sec10_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";	
	signal min1_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal min10_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal hr1_op : STD_LOGIC_VECTOR(3 downto 0) := "0001";
	signal hr10_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	
	signal time_over : STD_LOGIC := '1';
	signal hr1_override : STD_LOGIC_VECTOR(3 downto 0);
	signal reset_temp : STD_LOGIC := '1';
	
	component scale_clock
		port(
			Clock : IN STD_LOGIC ;
			Scaled : OUT STD_LOGIC 
		);
	end component;
	
	component counter_RST9
		port(
			Clock : IN STD_LOGIC ;
			Reset : IN STD_LOGIC ;
			Load : IN STD_LOGIC ;
			D : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
			Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) ;
			Carry : OUT STD_LOGIC
		);
	end component;
	
	component counter_RST5
		port(
			Clock : IN STD_LOGIC ;
			Reset : IN STD_LOGIC ;
			Load : IN STD_LOGIC ;
			D : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
			Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) ;
			Carry : OUT STD_LOGIC
		);
	end component;
	
	component BCDto7seg
		port(
			BCD	:	in STD_LOGIC_VECTOR(3 downto 0);
			DISPLAY	:	out STD_LOGIC_VECTOR(0 to 6)
		);
	end component;
	
	begin
		
		-- detect transition from 12pm -> 1am --
		process (hr1_op, hr10_op, hr1_carry)
		begin
			IF ((hr1_op = "0010") and (hr10_op ="0001") and (min10_carry = '1')) THEN
				time_over <= '0';
				hr1_override <= "0001";
			ELSE
				time_over <= '1';
				hr1_override <= input_time(3 downto 0);
			END IF;
		end process;
		
		process (time_over, hr)
		begin
			reset_temp <= (time_over and hr);
		end process;
		
		scaled_clock:scale_clock port map(Clock => inclock, Scaled => modclock);
		SEC1:counter_RST9 port map(Clock => modclock, Reset => time_over, Load => sec, D => input_time(3 downto 0), Q => sec1_op, Carry => sec1_carry);
		SEC10:counter_RST5 port map(Clock => sec1_carry, Reset => time_over, Load => sec, D => input_time(7 downto 4), Q => sec10_op, Carry => sec10_carry);
		
		MIN1:counter_RST9 port map(Clock => sec10_carry, Reset => time_over, Load => min, D => input_time(3 downto 0), Q => min1_op, Carry => min1_carry);
		MIN10:counter_RST5 port map(Clock => min1_carry, Reset => time_over, Load => min, D => input_time(7 downto 4), Q => min10_op, Carry => min10_carry);
		
		HR1:counter_RST9 port map(Clock => min10_carry, Reset => '1', Load => reset_temp, D => hr1_override, Q => hr1_op, Carry => hr1_carry);
		HR10:counter_RST5 port map(Clock => hr1_carry, Reset => time_over, Load => hr, D => input_time(7 downto 4), Q => hr10_op, Carry => hr10_carry);
		
		sec1_Disp:BCDto7seg port map(BCD => sec1_op, DISPLAY => hexsec1);
		sec10_Disp:BCDto7seg port map(BCD => sec10_op, DISPLAY => hexsec10);
		min1_Disp:BCDto7seg port map(BCD => min1_op, DISPLAY => hexmin1);
		min10_Disp:BCDto7seg port map(BCD => min10_op, DISPLAY => hexmin10);
		hr1_Disp:BCDto7seg port map(BCD => hr1_op, DISPLAY => hexhr1);
		hr10_Disp:BCDto7seg port map(BCD => hr10_op, DISPLAY => hexhr10);
	
end Behavior;
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all;

ENTITY BCD_Counter_9RST IS
	PORT -- Integer input from 0 to 15
	( 
		RST_VALUE : IN INTEGER RANGE 0 to 15 ;
		D : IN STD_LOGIC_VECTOR(3 downto 0) ;
		Clock, Reset, Load : IN STD_LOGIC ;
		Q : BUFFER INTEGER RANGE 0 to 15 ;
		Carry : OUT STD_LOGIC 
	) ;
END BCD_Counter_9RST ;

ARCHITECTURE Behavior OF BCD_Counter_9RST IS
BEGIN
	PROCESS ( RST_VALUE, Q, Clock, Reset )
	BEGIN
		IF Reset = '1' THEN -- Asynchronous reset
			Q <= 0;
		ELSIF Load = '1' THEN
			Q <= to_integer(unsigned(D)); -- Convert D from vector to int
		ELSIF (Clock'EVENT AND Clock = '1') THEN -- Note use of falling edge
			IF Q = RST_VALUE THEN
				Q <= 0;
				Carry <= '1';
			ELSE
				Q <= Q + 1 ;
				Carry <= '0';
			END IF;
		END IF;
	END PROCESS;
END Behavior;
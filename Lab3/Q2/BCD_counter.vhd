LIBRARY ieee ;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY BCD_counter IS
	PORT -- Integer input from 0 to 15
	( 
		R : IN INTEGER RANGE 0 TO 15 ;
		Clock, Resetn, L : IN std_logic ;
		Q : BUFFER INTEGER RANGE 0 TO 15;
		Carry : OUT STD_LOGIC
	) ;
END BCD_counter ;

ARCHITECTURE Behavior OF BCD_counter IS
BEGIN
	PROCESS ( Clock, Resetn )
	BEGIN
		IF Resetn = '0' THEN -- Asynchronous reset again
			Q <= 0 ;
		ELSIF (Clock'EVENT AND Clock = '0') THEN -- Note use of falling edge
			IF L = '1' THEN -- Load inputs
				Q <= R ;
			ELSE
				Q <= Q + 1 ;
			END IF;
		END IF;
	END PROCESS;
END Behavior;
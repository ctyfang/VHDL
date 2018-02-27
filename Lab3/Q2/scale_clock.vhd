LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY scale_clock IS
	PORT 
	( 
		Clock : IN STD_LOGIC ;
		Scaled : BUFFER STD_LOGIC
	) ;
END scale_clock ;

ARCHITECTURE Behavior OF scale_clock IS
SIGNAL Count : INTEGER RANGE 0 to 24999999 := 0;
SIGNAL Curr : STD_LOGIC := '0';

BEGIN
	PROCESS ( Clock )
	BEGIN
		--Count <= 0;
		--Curr <= '0';
		IF (Clock'EVENT and Clock = '1') THEN -- On a rising-edge
			IF (Count = 24999999) THEN
				IF Curr = '1' THEN
					Curr <= '0';
				ELSE
					Curr <= '1';
				END IF;
				Count <= 0;
			ELSE
				Count <= Count + 1;
			END IF ;
		END IF ;
		Scaled <= Curr;
	END PROCESS ;
END Behavior;
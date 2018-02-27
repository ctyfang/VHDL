LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY BCD_Count IS
	PORT -- Integer input from 0 to 15
	( 
		D : IN STD_LOGIC_VECTOR(3 downto 0) ;
		Clock, Reset, Load : IN STD_LOGIC ;
		Q : BUFFER STD_LOGIC_VECTOR(3 downto 0) ;
		Carry : OUT STD_LOGIC
	) ;
END BCD_Count ;

ARCHITECTURE Behavior OF BCD_Count IS
BEGIN
	PROCESS ( Clock, Resetn )
	BEGIN
		IF Reset = '1' THEN -- Asynchronous reset
			Q <= 0 ;
		ELSIF Load = '1' THEN
			FOR I in 0 to 3 loop
				Q(I) <= D(I);
			END LOOP;
		ELSIF (Clock'EVENT AND Clock = '1') THEN -- Note use of falling edge
			IF Q < 10 THEN
				Q <= Q + 1 ;
				Carry <= 0;
			ELSE
				Q <= 0;
				Carry <= 1;
			END IF;
		END IF;
	END PROCESS;
	
END Behavior;
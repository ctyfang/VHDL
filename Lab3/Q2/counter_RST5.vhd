LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY counter_RST5 IS
	PORT 
	( 
		Clock, Reset, Load : IN STD_LOGIC ;
		D : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		Carry : OUT STD_LOGIC
	) ;
END counter_RST5 ;

ARCHITECTURE Behavior OF counter_RST5 IS
SIGNAL Count : STD_LOGIC_VECTOR (3 DOWNTO 0) := "0000";

BEGIN
	PROCESS ( Clock, Reset, Load, D )
	BEGIN
		IF Reset = '0' THEN -- Reset is asynchronous, has precendence over load
			Count <= "0000" ;
			Carry <= '0';
		ELSIF Load = '0' THEN
			Count <= D;
			Carry <= '0';
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			IF Count = "0101" THEN
				Count <= "0000";
				Carry <= '1';
			ELSE 
				Count <= Count + 1;
				Carry <= '0';
			END IF ;
		END IF ;
	END PROCESS ;
	Q <= Count;
END Behavior;
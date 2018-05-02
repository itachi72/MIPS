-- VHDL Test Bench for jc2_top design functional and timing simulation

LIBRARY  IEEE;
USE IEEE.std_logic_1164.all;

ENTITY testbench IS
END testbench;

ARCHITECTURE testbench_arch OF testbench IS
	COMPONENT jc2_top
		PORT (
			clk : in  STD_LOGIC;
			left : in  STD_LOGIC;
			right : in  STD_LOGIC;
			stop : in  STD_LOGIC;
         q: inout STD_LOGIC_VECTOR (3 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL CLK : STD_LOGIC;
	SIGNAL LEFT : STD_LOGIC;
	SIGNAL RIGHT : STD_LOGIC;
	SIGNAL STOP : STD_LOGIC;
	SIGNAL Q : STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN
	UUT : jc2_top
	PORT MAP (
		left => LEFT,
		right => RIGHT,
		stop => STOP,
		clk => CLK,
		q => Q
	);

	PROCESS
		BEGIN
		-- --------------------
		CLK <= transport '0';
		LEFT <= transport '1';
		RIGHT <= transport '1';
		STOP <= transport '1';
		-- --------------------
		WAIT FOR 110 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		LEFT <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		LEFT <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		STOP <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		STOP <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		RIGHT <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		RIGHT <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		LEFT <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		LEFT <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '1';
		-- --------------------
		WAIT FOR 10 ns;
		CLK <= transport '0';
		-- --------------------
		WAIT;
	END PROCESS;
END testbench_arch;

CONFIGURATION jc2_top_cfg OF testbench IS
	FOR testbench_arch
	END FOR;
END jc2_top_cfg;

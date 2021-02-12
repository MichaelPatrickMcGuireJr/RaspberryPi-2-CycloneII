library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;

entity hello_world is
	Port (
				clk : in STD_LOGIC;
				PB : in STD_LOGIC;
				LED0 : out STD_LOGIC;
				LED1 : out STD_LOGIC;
				LED2 : out STD_LOGIC;
				LED3 : out STD_LOGIC;
				LED4 : out STD_LOGIC;
				LED5 : out STD_LOGIC
			);
end hello_world;

architecture Behavioral of hello_world is
	constant max_count : natural := 5000000;
	signal op : STD_LOGIC;
	signal theCount : STD_logic_vector (5 downto 0);

begin
	process(clk)
	variable count : natural range 0 to max_count;
	
	begin
		if(clk'Event and clk='1' and count<(max_count/2)-1) then
			op<='1';
			count:=count+1;
		elsif(clk'Event and clk='1' and count<max_count-1) then
			op<='0';
			count:=count+1;
		elsif(clk'Event and clk='1' and count<max_count) then
			op<='1';
			count:=0;
		end if;
	end process;
	
	
	process(theCount)
		begin
			if(PB='1') then
				theCount<="000000";
			elsif(op'Event and op='1') then
				theCount<=theCount+1;
			end if;
	end process;
	
	LED0 <= theCount(5);
	LED1 <= theCount(4);
	LED2 <= theCount(3);
	LED3 <= theCount(2);
	LED4 <= theCount(1);
	LED5 <= theCount(0);

	
	
end Behavioral;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity cont_mod is
	port(
		clk,rst : in  std_logic;
		contagem : out std_logic_vector(7 downto 0)
		);
end entity;

architecture behavioral of cont_mod is 
	signal count : std_logic_vector(8 downto 0) := "000000000";
	begin
		contagem(7) <= count(7);
		contagem(6) <= count(6);
		contagem(5) <= count(5);
		contagem(4) <= count(4);
		contagem(3) <= count(3);
		contagem(2) <= count(2);
		contagem(1) <= count(1);
		contagem(0) <= count(0);
		process(clk,rst)
			--constant modulo : std_logic_vector := "100000000";
		begin
			if(rst = '1') then
				count <= "000000000";
			elsif rising_edge(clk) then
				count <= count + 1;
			end if;
		end process;
end behavioral;	
		


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comparador is
    port (
        a,b : in std_logic_vector(7 downto 0); --a = fase , b = estados
        s :   out std_logic := '0'
    );
end entity comparador;

architecture comparador_arq of comparador is

begin

process(a,b)

begin

--Se o estado da fase é igual à fase + 1 
if b = a + 1 then
	s <= '1';
else
	s <= '0';
end if;

end process;
	 

end architecture comparador_arq;
library ieee;
use ieee.std_logic_1164.all;

entity registrador is
	generic
	(
		larguraDados : integer := 9
	);
	
	port
	(
		clk	   : in  std_logic;
		reset  	: in  std_logic;
		d        : in std_logic_vector (larguraDados-1 downto 0);

		q	      : out std_logic_vector (larguraDados-1 downto 0)
	);
end registrador;

architecture funcionamento of registrador is
	begin
	process (clk, reset)
	begin
		if (reset = '1') then
			q <= (OTHERS => '0');
		elsif (rising_edge(clk)) then
				q <= d;
		end if;
	end process;
end funcionamento;


		
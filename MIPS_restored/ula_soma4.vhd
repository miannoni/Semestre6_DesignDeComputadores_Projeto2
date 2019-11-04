library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula_soma4 is

	generic
	(
		larguraDados : integer := 8;
      incremento : integer := 4
	);
	

	port
	(
		-- Input ports
		d : in std_logic_vector (larguraDados-1 downto 0);

		-- Output ports
		q	: out std_logic_vector (larguraDados-1 downto 0)
	);
end ula_soma4;

architecture funcionamento of ula_soma4 is
	begin
	
		q <=  std_logic_vector( unsigned(d) + incremento );

end funcionamento;


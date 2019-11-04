library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensorsinal is

	generic
	(
		larguraDados : integer := 32;
		larguraImediato  : integer  := 16
	);
	

	port
	(
		SigIn : in std_logic_VECTOR(larguraImediato - 1 downto 0);
		SigOut : OUT STD_LOGIC_VECTOR(larguraDados - 1 downto 0)
		
	);
end extensorsinal;

architecture funcionamento of extensorsinal is

	signal SigFinal : std_logic_vector (larguraDados-1 downto 0);

	begin
	
	SigFinal(larguraDados - 1 downto larguraImediato) <= (others => '0');
	SigFinal(larguraImediato - 1 downto 0) <= SigIn;
	
	SigOut <= SigFinal;-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

end funcionamento;

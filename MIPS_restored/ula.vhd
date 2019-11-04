library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
	generic(
		larguraDado : natural := 9;
		larguraOperacao : natural := 2
	);
	
	port(
		a : in std_logic_vector(larguraDado-1 downto 0);
		b : in std_logic_vector(larguraDado-1 downto 0);
		operacao : in std_logic_vector(larguraOperacao-1 downto 0);
		
		saida : out std_logic_vector(larguraDado-1 downto 0)
	);

end ula;

architecture funcionamento of ula is
	constant soma :  std_logic_vector(larguraOperacao-1 downto 0) := "01";
	constant sub :  std_logic_vector(larguraOperacao-1 downto 0) := "10";
	constant comp :  std_logic_vector(larguraOperacao-1 downto 0) := "11";
	constant nop  :  std_logic_vector(larguraOperacao-1 downto 0) := "00";
	signal saidaCOMP :  std_logic_vector(larguraDado-1 downto 0);
	signal saidaSOMA :  std_logic_vector(larguraDado-1 downto 0);
	signal saidaSUB :  std_logic_vector(larguraDado-1 downto 0);
	signal saidaNOP :  std_logic_vector(larguraDado-1 downto 0);
	
	
begin
	
	
	saidaSOMA <= std_logic_vector(unsigned(a) + unsigned(b));
	saidaSUB  <= std_logic_vector(unsigned(a) - unsigned(b));
	
	saidaCOMP <= 
	"00000000000000000000000000000001" when (unsigned(a) = unsigned(b)) else
	"00000000000000000000000000000000";

	saidaNOP <= a;  
	
   with operacao select
	saida <= saidaCOMP when comp,
				saidaSOMA when soma,
				saidaSUB when sub,
				saidaNOP when others;


--	saida <= saidaSOMA when soma,
--				saidaSUB when others;

end architecture;

library ieee;
use ieee.std_logic_1164.all;

entity display7Seg is
    port
    (
        dadoHex      : IN  STD_LOGIC_VECTOR(3 downto 0);
        habilita     : IN  STD_LOGIC;
        saida7seg    : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity;

architecture funcionamento of display7Seg is

	begin
	   saida7seg  <=   "1000000" when dadoHex="0000" else ---0
							 "1111001" when dadoHex="0001" else ---1
							 "0100100" when dadoHex="0010" else ---2
							 "0110000" when dadoHex="0011" else ---3
							 "0011001" when dadoHex="0100" else ---4
							 "0010010" when dadoHex="0101" else ---5
							 "0000010" when dadoHex="0110" else ---6
							 "1111000" when dadoHex="0111" else ---7
							 "0000000" when dadoHex="1000" else ---8
							 "0010000" when dadoHex="1001" else ---9
							 "0001000" when dadoHex="1010" else ---A
							 "1100000" when dadoHex="1011" else ---B
							 "1000110" when dadoHex="1100" else ---C
							 "0100001" when dadoHex="1101" else ---D
							 "0000110" when dadoHex="1110" else ---E
							 "0001110" when dadoHex="1111" else
							 "1111111";

end architecture;

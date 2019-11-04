library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  RAM is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 6
	);

	port 
	(
		clk		: in std_logic;
		endereco	: in std_logic_vector((ADDR_WIDTH-1) downto 0);
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture FUNC of RAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	
	-- Declare the RAM signal.	
	signal ram : memory_t;

	-- Register to hold the address 
	signal addr_reg : std_logic_vector((ADDR_WIDTH-1) downto 0);

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(to_integer(unsigned(endereco))) <= data;
		end if;

		-- Register the address for reading
		addr_reg <= endereco;
	end if;
	end process;

	q <= ram(to_integer(unsigned(endereco)));

end FUNC;

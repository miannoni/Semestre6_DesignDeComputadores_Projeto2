library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tipoR is

	generic
	(
		larguraDados : integer := 32;
		larguraEnderecos  : integer  := 32;
		larguraEndBancoRegs  : integer := 5
	);
	

	port
	(
		CLOCK_50       : in std_logic;
		SW : in std_logic_VECTOR(17 downto 0);
		KEY : in std_logic_VECTOR(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
		LEDG : OUT STD_LOGIC_VECTOR(7 downto 0)
		
	);
end tipoR;


architecture funcionamento of tipoR is

	signal PC_MEMINST : std_logic_vector (larguraEnderecos-1 downto 0);
	signal SOMAPC_PC  : std_logic_vector (larguraEnderecos-1 downto 0);
	signal DADO       : std_logic_vector (larguraDados-1 downto 0);
	signal DL1_ULA1   : std_logic_vector (larguraDados-1 downto 0);
	signal DL2_ULA2   : std_logic_vector (larguraDados-1 downto 0);
	signal ULA_BR     : std_logic_vector (larguraDados-1 downto 0);
	signal clk        : std_logic;
	signal reset        : std_logic;
	
	begin
	
	SOMADOR_PC : entity work.ula_soma4 
	generic map (
	  larguraDados    => larguraEnderecos,
	  incremento      => 4
	)
	port map
	(
	  d           => PC_MEMINST,
	  q           => SOMAPC_PC
	);
	
	PC : entity work.registrador  
	generic map (
		larguraDados => larguraEnderecos
	)
	port map
	(
	  clk         => clk, 
	  reset       => reset, 
	  d           => SOMAPC_PC, 
	  q           => PC_MEMINST 
	);
	
	MEMORIA_INSTRUCOES : entity work.ROM 
	generic map (
	  dataWidth       => larguraDados,
	  addrWidth       => larguraEnderecos
	)
	port map
	(
	  clk             => clk,
	  Endereco        => PC_MEMINST, 
	  Dado            => DADO 
	);
	
	BR : entity work.bancoRegistradores 
    generic map
    (
        larguraDados        => larguraDados,
        larguraEndBancoRegs => larguraEndBancoRegs  --Resulta em 2^5=32 posicoes
    )

    port map
    (
        clk           => clk,
--
        enderecoA     => DADO(25 downto 21),
		  enderecoB     => DADO(20 downto 16),
		  enderecoC     => DADO(15 downto 11),
		  
        dadoEscritaC  => ULA_BR,
		  
        escreveC      => SW(1),
		  saidaA        => DL1_ULA1,
		  saidaB        => DL2_ULA2
		  );
	
	ULA : entity work.ula
	generic map (
	  larguraDado    => larguraDados,
	  larguraOperacao    => 2
	)
	port map
	(
	  a             => DL1_ULA1, 
	  b             => DL2_ULA2, 
	  saida         => ULA_BR, 
	  operacao      => SW(2) & SW(3)
	);
	
	DISPLAY0 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(3 downto 0),
        habilita    => '1',
        saida7seg   => HEX0
    );

	 DISPLAY1 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(7 downto 4),
        habilita    => '1',
        saida7seg   => HEX1
    );

	 DISPLAY2 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(11 downto 8),
        habilita    => '1',
        saida7seg   => HEX2
    );
	 
	DISPLAY3 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(15 downto 12),
        habilita    => '1',
        saida7seg   => HEX3
    );

	 DISPLAY4 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(19 downto 16),
        habilita    => '1',
        saida7seg   => HEX4
    );

	 DISPLAY5 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(23 downto 20),
        habilita    => '1',
        saida7seg   => HEX5
    );

	 DISPLAY6 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(27 downto 24),
        habilita    => '1',
        saida7seg   => HEX6
    );

	 DISPLAY7 : entity work.display7Seg 
    port map
    (
        dadoHex     => ULA_BR(31 downto 28),
        habilita    => '1',
        saida7seg   => HEX7
    );
	
	EDpc : entity work.edgeDetector
	port map (
		clk        => CLOCK_50,
		entrada    => KEY(1),
		saida      => reset
	);
	
	EDclk : entity work.edgeDetector
	port map (
		clk        => CLOCK_50,
		entrada    => not KEY(0),
		saida      => clk
	);

	LEDG <= PC_MEMINST(7 downto 0); 

end funcionamento;


-- Circuito implementado con Anodo Comun
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity decodificador_letras is
  Port(E: in STD_LOGIC_VECTOR(3 DOWNTO 0); -- A = E(3), B = E(2), C = E(1), D = E(0)
       salida: out STD_LOGIC_VECTOR(16 downto 0)); -- A = salida(16), M = salida(8), B = salida(7), N = salida(0)
end decodificador_letras;

architecture Behavioral of decodificador_letras is
	
	signal entrada: STD_LOGIC_VECTOR (3 DOWNTO 0);

begin

	entrada <= E(3) & E(2) & E(1) & E(0);
	
	process (entrada)
	begin
	
	case (entrada) is 
		--								  AIOHKJQGMBPCLRDSN
		when "0000" => salida <= "01100110001101110";
		when "0001" => salida <= "11001110111010011";
		when "0010" => salida <= "01100110101000111";
		when "0011" => salida <= "00111011001111110";
		when "0100" => salida <= "01101110001010010";
		when "0101" => salida <= "11101110011011010";
		when "0110" => salida <= "01100110001101110";
		when "0111" => salida <= "11111111111111111";
		when "1000" => salida <= "11001110110011011";
		when "1001" => salida <= "01101110001011010";
		when "1010" => salida <= "01100110101000111";
		when "1011" => salida <= "01100110101001011";
		when others => salida <= "11111111111111111";
	
	end case;
	
	end process;

end Behavioral;
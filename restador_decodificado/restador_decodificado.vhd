-- Circuito implementado con Anodo Comun

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity restador_decodificado is
  Port(A,B: in STD_LOGIC_VECTOR(2 DOWNTO 0); --A = A(2), B = A(1), C = A(0) | A = B(2), B = B(1), C = B(0) 
	 salida: out STD_LOGIC_VECTOR(16 downto 0); -- A = salida(16), M = salida(8), B = salida(7), N = salida(0)
	 signo: out STD_LOGIC); -- Usa el LED "K", es decir PIN_40, el que le tocaria  a salida(12)
end restador_decodificado;

architecture Behavioral of restador_decodificado is
	
	signal resta: STD_LOGIC_VECTOR (3 DOWNTO 0);

begin

-- RESTA
	resta <= ('0' & a) - ('0' & b);
-- ¿Es par?	
	process (resta(3))
	begin
		if resta(3) = '0' then
			signo <= '1';
		else 
			signo <= '0';
		end if;
	end process;

	process(resta)
	begin
	case (resta) is 
		--								  AIOHKJQGMBPCLRDSN
		when "0000" => salida <= "10111011101011010"; --0
		when "0001" => salida <= "11111111111011011"; --1
		when "0010" => salida <= "11111011101001110"; --2
		when "0011" => salida <= "11111111101001010"; --3
		when "0100" => salida <= "10111111111001011"; --4
		when "0101" => salida <= "10111111101101010"; --5
		when "0110" => salida <= "10111011101101010"; --6
		when "0111" => salida <= "11111111101011011"; --7
		when "1000" => salida <= "10111011101001010"; -- -8
		when "1001" => salida <= "11111111101011011"; -- -7
		when "1010" => salida <= "10111011101101010"; -- -6
		when "1011" => salida <= "10111111101101010"; -- -5
		when "1100" => salida <= "10111111111001011"; -- -4
		when "1101" => salida <= "11111111101001010"; -- -3
		when "1110" => salida <= "11111011101001110"; -- -2
		when others => salida <= "11111111111011011"; -- -1
	
	end case;
	end process;
	

end Behavioral;
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity comparador_cuatro_bits is
  Port(A,B : in STD_LOGIC_VECTOR(3 DOWNTO 0);
    Pr : inout STD_LOGIC_VECTOR(2 DOWNTO 0);
    D : inout STD_LOGIC_VECTOR(3 DOWNTO 0);
	 Mayor : out STD_LOGIC;
	 Prs, Menor, Igual : inout STD_LOGIC);
end comparador_cuatro_bits;

architecture Behavioral of comparador_cuatro_bits is

begin

  D(0) <= A(0) XOR B(0);
  Pr(0) <= NOT(A(0)) AND B(0);

  D(1) <= A(1) XOR B(1) XOR Pr(0);
  Pr(1) <= (Pr(0) AND (NOT(A(1)) OR B(1))) OR (NOT(A(1)) AND B(1));

  D(2) <= A(2) XOR B(2) XOR Pr(1);
  Pr(2) <= (Pr(1) AND (NOT(A(2)) OR B(2))) OR (NOT(A(2)) AND B(2));

  D(3) <= A(3) XOR B(3) XOR Pr(2);
  Prs <= (Pr(2) AND (NOT(A(3)) OR B(3))) OR (NOT(A(3)) AND B(3));
  
  Menor <= Prs;
  
  Igual <= (NOT Prs) AND (NOT D(3)) AND (NOT D(2)) AND (NOT D(1)) AND (NOT D(0));
  
  Mayor <= (NOT Igual) AND (NOT Menor);

end Behavioral;
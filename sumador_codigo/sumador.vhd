library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity sumador_cuatro_bits is
  Port(A,B : in STD_LOGIC.VECTOR(3 DOWNTO 0);
    C : inout STD_LOGIC.VECTOR(2 DOWNTO 0);
    Cs : out STD_LOGIC;
    S : out STD_LOGIC.VECTOR(3 DOWNTO 0));
end sumador_cuatro_bits;

architecture Behavioral of sumador_cuatro_bits is

begin

  S(0) <= A(0) XOR B(0);
  C(0) <= A(0) AND B(0);

  S(1) <= A(1) XOR B(1) XOR C(0);
  C(1) <= (C(0) AND (A(1) OR B(1))) OR (A(1) AND B(1));

  S(2) <= A(2) XOR B(2) XOR C(1);
  C(2) <= (C(1) AND (A(2) OR B(2))) OR (A(2) AND B(2));

  S(3) <= A(3) XOR B(3) XOR C(2);
  Cs <= (C(2) AND (A(3) OR B(3))) OR (A(3) AND B(3));

end Behavioral;

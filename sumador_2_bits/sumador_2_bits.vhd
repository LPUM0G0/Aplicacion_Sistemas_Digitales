library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_2_bits is
	Port ( A0, A1, B0, B1 : in STD_LOGIC;
	C0 : inout 	STD_LOGIC;
	S0, S1, CS : out STD_LOGIC);
end sumador_2_bits;

architecture ecuaciones of sumador_2_bits is

begin

S0 <= A0 XOR B0;
C0 <= A0 AND B0;

S1 <= C0 XOR A1 XOR B1;

CD <= (C0 AND (A1 OR B1)) OR (A1 AND B1) 

end ecuaciones;
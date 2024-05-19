library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity practica_dos is
  Port(A0, A1, A2, A3, A4 : in STD_LOGIC;
       S1, S2, S3, S4 : out STD_LOGIC);
end practica_dos;

architecture Behavioral of practica_dos is

begin

  S1 <= (NOT A3 AND A1 and A0 ) OR ( NOT A4 AND NOT A3 AND NOT A2 AND A1 ) OR (NOT A4 AND A2 AND NOT A1 AND A0) OR (A4 AND A3 AND A2 AND A0) OR (NOT A4 AND NOT A2 AND A1 AND A0) OR (A4 AND NOT A3 AND NOT A2 AND A0);

  S2 <= (A2 AND A1) OR (A3 AND A1) OR (A3 AND A2) OR (A4 AND A2) OR (A4 AND A3);


  S3 <= (A4 XOR A3) XOR (A2 XOR A1);
  S4 <= (((NOT A4) AND (NOT A3)) AND (A2 XOR A1)) OR (((NOT A2) AND (NOT A1)) AND (A4 XOR A3)) OR (A4 AND A3 AND A2 AND A1);


end Behavioral;
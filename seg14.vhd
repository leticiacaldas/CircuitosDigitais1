library ieee;
use ieee.std_logic_1164.all;

entity seg14 is
port(
  entrada: in std_logic_vector(3 downto 0);
  s: out std_logic_vector (13 downto 0)
);
end seg14;

architecture arq_seg14 of seg14 is
begin
   with entrada select
   s <= "10000001000000" when "0000",
        "11110011011111" when "0001",
        "10000011000010" when "0010",
        "11000011000001" when "0011",
        "01100011000011" when "0100",
        "10100011010001" when "0101",
        "00100011010000" when "0110",
        "11100011000011" when "0111",
        "00000011000000" when "1000",
        "11000011000000" when "1001",
        "10000011000001" when "1010",
        "01100011000000" when "1011",
        "00100011000001" when "1100",
        "00000011010001" when "1101",
        "00000011000001" when "1110",
        "00000011010000" when others;
end arq_seg14;
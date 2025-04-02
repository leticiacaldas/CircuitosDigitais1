library IEEE;
USE IEEE.std_logic_1164.all;

entity or2_ula is
port(
    a, b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0)
);
end or2_ula;

architecture arq_or2 of or2_ula is
begin
	s <= a or b;
	
end arq_or2;
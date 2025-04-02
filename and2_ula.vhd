library IEEE;
USE IEEE.std_logic_1164.all;

entity and2_ula is
port(
    a, b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0)
);
end and2_ula;

architecture arq_and2 of and2_ula is
begin
	s <= a and b;
end arq_and2;
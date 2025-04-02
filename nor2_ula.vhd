library IEEE;
USE IEEE.std_logic_1164.all;

entity nor2_ula is
port(
    a, b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0)
);
end nor2_ula;

architecture arq_nor2 of nor2_ula is
begin
	s <= a nor b;
end arq_nor2;